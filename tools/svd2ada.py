#!/usr/bin/env python3

"""
This file corrects errors in the generated Ada code from the R7FA4M1AB.svd.

Note: This file was mostly AI-generated and only updates the generated files, not the R7FA4M1AB.svd.
"""


import re
import subprocess
import sys
from pathlib import Path
from typing import Final

ROOT_DIR: Final = Path(__file__).resolve().parent.parent
SVD_FILE: Final = ROOT_DIR / "svd" / "R7FA4M1AB.svd"
OUTPUT_DIR: Final = ROOT_DIR / "src" / "chips" / "r7fa4m1ab" / "svd"
SVD2ADA_EXECUTABLE: Final = ROOT_DIR / "vendor" / "svd2ada" / "bin" / "svd2ada"


_ENUM_RE: Final = re.compile(
    r"(?P<indent>^[ ]*)type (?P<name>\w+) is\n"
    r"[ ]*\((?P<declarations>.*?)\)\n"
    r"[ ]*with Size => (?P<size>\d+);\n"
    r"(?P<interstitial>.*?)"
    r"[ ]*for (?P=name) use\n"
    r"[ ]*\((?P<representations>.*?)\);",
    re.MULTILINE | re.DOTALL,
)

_PERIPHERAL_UNION_RE: Final = re.compile(
    r"(?P<indent>^[ ]*)type (?P<disc>\w+_Disc) is\n"
    r"[ ]*\(.*?\);\n\n"
    r"(?P<prefix>.*?)"
    r"(?P=indent)type (?P<peripheral>\w+_Peripheral)\n"
    r"[ ]*\(Discriminent : (?P=disc) := \w+\)\n"
    r"[ ]*is record\n"
    r"(?P<body>.*?)"
    r"(?P=indent)end record\n"
    r"[ ]*with (?P<aspects>Unchecked_Union[^;]*);",
    re.MULTILINE | re.DOTALL,
)

_PFS_PERIPHERAL_RE: Final = re.compile(
    r"(?P<indent>^[ ]*)type PFS_Peripheral is record\n"
    r"(?P<body>.*?)"
    r"(?P=indent)end record\n"
    r"[ ]*with Volatile;",
    re.MULTILINE | re.DOTALL,
)

_PORT_ARRAY_FIELDS: Final = {
    "PCNTR1_PDR_Field",
    "PCNTR1_PODR_Field",
    "PCNTR2_PIDR_Field",
    "PCNTR2_EIDR_Field",
    "PCNTR3_POSR_Field",
    "PCNTR3_PORR_Field",
    "PCNTR4_EOSR_Field",
    "PCNTR4_EORR_Field",
}


_ENUM_LITERAL_RE: Final = re.compile(r"^[ ]*(?P<name>\w+),?[ ]*$")
_PERIPHERAL_FIELD_RE: Final = re.compile(
    r"^[ ]*(?P<name>\w+)[ ]*:[ ]*aliased[ ]+(?P<type>[^;]+);[ ]*$",
    re.MULTILINE,
)


def _enumeration_literals(declarations: str) -> list[str]:
    return [
        match.group("name")
        for line in declarations.splitlines()
        if (match := _ENUM_LITERAL_RE.fullmatch(line)) is not None
    ]


def _fix_wildcard_enumerations(text: str) -> tuple[str, int]:
    """
    Give SVD default/wildcard enum entries a legal Ada representation.

    svd2ada emits an ``others_k`` literal for an SVD ``isDefault`` entry and
    assigns it the same representation as a real literal.  Ada requires enum
    representation values to be distinct and ordered.  Use one otherwise
    unused value and order the literals by their representation.
    """
    replacements = 0

    def replace(match: re.Match[str]) -> str:
        nonlocal replacements
        representations = {
            name: int(value)
            for name, value in re.findall(
                r"(\w+)\s*=>\s*(\d+)", match.group("representations")
            )
        }
        if "others_k" not in representations:
            return match.group(0)

        size = int(match.group("size"))
        used = {value for name, value in representations.items() if name != "others_k"}
        unused = set(range(2**size)) - used
        if not unused:
            raise ValueError(f"no representation is available for {match.group('name')}.others_k")

        representations["others_k"] = max(unused)
        literals = _enumeration_literals(match.group("declarations"))
        if set(literals) != representations.keys():
            raise ValueError(f"could not parse enumeration {match.group('name')}")

        ordered = sorted(representations, key=representations.get)
        declaration_lines: list[str] = []
        literal_index = 0
        for line in match.group("declarations").splitlines():
            literal = _ENUM_LITERAL_RE.fullmatch(line)
            if literal is None:
                declaration_lines.append(line)
                continue
            name = ordered[literal_index]
            declaration = re.match(r"^[ ]*", line).group(0) + name
            if literal_index < len(ordered) - 1:
                declaration += ","
            declaration_lines.append(declaration)
            literal_index += 1

        association_lines = [
            f"{match.group('indent')}   {name} => {representations[name]}"
            + ("," if index < len(ordered) - 1 else "")
            for index, name in enumerate(ordered)
        ]
        declaration_text = "\n".join(declaration_lines)
        association_text = "\n".join(
            [association_lines[0].lstrip(), *association_lines[1:]]
        )
        replacements += 1
        indent = match.group("indent")
        return (
            f"{indent}type {match.group('name')} is\n"
            f"{indent}  ({declaration_text}\n"
            f"{indent}  )\n"
            f"{indent}  with Size => {size};\n"
            f"{match.group('interstitial')}"
            f"{indent}for {match.group('name')} use\n"
            f"{indent}  ({association_text});"
        )

    return _ENUM_RE.sub(replace, text), replacements


def _fix_port_array_fields(text: str) -> tuple[str, int]:
    """
    Restore bit-array fields that svd2ada incorrectly emits as enums.
    """
    replacements = 0

    def replace(match: re.Match[str]) -> str:
        nonlocal replacements
        if match.group("name") not in _PORT_ARRAY_FIELDS:
            return match.group(0)
        if match.group("size") != "16":
            raise ValueError(f"unexpected size for {match.group('name')}")

        replacements += 1
        return (
            f"{match.group('indent')}subtype {match.group('name')} is "
            f"R7FA4M1AB.UInt16;\n{match.group('interstitial')}"
        )

    text = _ENUM_RE.sub(replace, text)
    for field_type in _PORT_ARRAY_FIELDS:
        text = re.sub(
            rf"(: {field_type} := )R7FA4M1AB\.PORT\d+\.Val_([01]);",
            lambda match: f"{match.group(1)}16#{match.group(2)}#;",
            text,
        )
    return text, replacements


def _peripheral_components(body: str) -> list[tuple[str, str]]:
    return [
        (match.group("name"), match.group("type"))
        for match in _PERIPHERAL_FIELD_RE.finditer(body)
    ]


def _fix_peripheral_unions(text: str) -> tuple[str, int]:
    """
    Put every alternate register view in an unchecked-union variant.

    svd2ada leaves some registers in the fixed part even though they overlap
    registers in the variant part.  Ada only permits the overlap when both
    components belong to different variants of an unchecked union.
    """
    replacements = 0

    def replace(match: re.Match[str]) -> str:
        nonlocal replacements
        components = _peripheral_components(match.group("body"))
        if not components:
            raise ValueError(f"no components found in {match.group('peripheral')}")

        indent = match.group("indent")
        disc = match.group("disc")
        views = [f"View_{name}" for name, _ in components]
        disc_lines = (",\n" + indent + "   ").join(views)

        body_lines = [f"{indent}  case Discriminent is"]
        for name, component_type in components:
            body_lines.append(f"{indent}     when View_{name} =>")
            body_lines.append(
                f"{indent}        {name} : aliased {component_type};"
            )
        body_lines.append(f"{indent}  end case;")

        replacements += 1
        return (
            f"{indent}type {disc} is\n"
            f"{indent}  ({disc_lines});\n\n"
            f"{match.group('prefix')}"
            f"{indent}type {match.group('peripheral')}\n"
            f"{indent}  (Discriminent : {disc} := {views[0]})\n"
            f"{indent}is record\n"
            f"{'\n'.join(body_lines)}\n"
            f"{indent}end record\n"
            f"{indent}  with {match.group('aspects')};"
        )

    return _PERIPHERAL_UNION_RE.sub(replace, text), replacements


def _fix_pfs_peripheral(text: str) -> tuple[str, int]:
    """
    Turn the overlapping full/half/byte PFS views into an unchecked union.
    """
    replacements = 0

    def replace(match: re.Match[str]) -> str:
        nonlocal replacements
        components = _peripheral_components(match.group("body"))
        if not components:
            raise ValueError("no components found in PFS_Peripheral")

        indent = match.group("indent")
        views = [f"View_{name}" for name, _ in components]
        disc_lines = (",\n" + indent + "   ").join(views)
        body_lines = [f"{indent}  case Discriminent is"]
        for name, component_type in components:
            body_lines.append(f"{indent}     when View_{name} =>")
            body_lines.append(f"{indent}        {name} : aliased {component_type};")
        body_lines.append(f"{indent}  end case;")

        replacements += 1
        return (
            f"{indent}type PFS_Disc is\n"
            f"{indent}  ({disc_lines});\n\n"
            f"{indent}type PFS_Peripheral\n"
            f"{indent}  (Discriminent : PFS_Disc := {views[0]})\n"
            f"{indent}is record\n"
            f"{'\n'.join(body_lines)}\n"
            f"{indent}end record\n"
            f"{indent}  with Unchecked_Union, Volatile;"
        )

    return _PFS_PERIPHERAL_RE.sub(replace, text), replacements


def _fix_r7fa4m1ab_gen() -> None:
    """
    Edit the generated files to fix Ada issues.
    """
    wildcard_enums = 0
    peripheral_unions = 0
    port_array_fields = 0

    for path in sorted(OUTPUT_DIR.glob("*.ads")):
        text = path.read_text(encoding="utf-8")
        text, enum_count = _fix_wildcard_enumerations(text)
        text, port_field_count = _fix_port_array_fields(text)
        text, union_count = _fix_peripheral_unions(text)
        if path.name == "r7fa4m1ab-pfs.ads":
            text, pfs_count = _fix_pfs_peripheral(text)
            union_count += pfs_count

        if path.name == "r7fa4m1ab-system.ads":
            text = text.replace(
                "Bit_Order => System.Low_Order_First",
                "Bit_Order => Standard.System.Low_Order_First",
            )

        path.write_text(text, encoding="utf-8")
        wildcard_enums += enum_count
        peripheral_unions += union_count
        port_array_fields += port_field_count

    print(
        f"patched {wildcard_enums} wildcard enumerations and "
        f"{peripheral_unions} peripheral unions; restored "
        f"{port_array_fields} port array fields"
    )


def main() -> int:
    # svd2ada creates the output directory itself, but not missing parents.
    # Make the parent first so this script works from a clean checkout.
    OUTPUT_DIR.parent.mkdir(parents=True, exist_ok=True)

    try:
        subprocess.run(
            [
                str(SVD2ADA_EXECUTABLE),
                "-o",
                str(OUTPUT_DIR),
                str(SVD_FILE),
            ],
            check=True,
        )
    except subprocess.CalledProcessError as error:
        return error.returncode
    except FileNotFoundError:
        print(f"error: svd2ada was not found at {SVD2ADA_EXECUTABLE}", file=sys.stderr)
        return 1

    _fix_r7fa4m1ab_gen()

    return 0


if __name__ == "__main__":
    sys.exit(main())
