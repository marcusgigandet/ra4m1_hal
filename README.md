# RA4M1-HAL

**Note**: This project is currently in the early stages of development.

The RA4M1 HAL aims to provide Ada support using the standard HAL interface package for the Renesas-RA series.

## Supported Chips

Currently, the only RA4M1-series chip that is supported is the `r7fa4m1ab`.

# Development

## Running Copyright Enforcement

`alr build` runs the copyright enforcer automatically before invoking
`gprbuild`. To run it directly:

```bash
python3 -m vendor.toolbox.scripts.copyright --config config.toml --directory . --verbose
```
