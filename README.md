# RA4M1-HAL

**Note**: This project is currently in the early stages of development.

The RA4M1 HAL aims to provide Ada support using the standard HAL interface package for the Renesas RA4M1 microcontroller family.

## Supported Chips

Currently, the only RA4M1-series chip that is supported is the `r7fa4m1ab`.

# Development

## Running Copyright Enforcement

`alr build` runs the copyright enforcer automatically before invoking
`gprbuild`. To run it directly:

```bash
python3 -m vendor.toolbox.scripts.copyright --config config.toml --directory . --verbose
```

# Disclosures

## AI-Generated Content

The following development tooling contains AI-generated code:

- `tools/svd2ada.py`
- `toolbox submodule`

These components/tools are used exclusively as development tools and are not apart of the core library. The core HAL is not AI-generated.