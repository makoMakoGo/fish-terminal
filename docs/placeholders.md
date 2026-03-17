# Placeholders

This repo is meant to be readable first and reusable second.

## Path placeholders

- `<WINDOWS_HOME>`: Windows user home directory
- `<WSL_HOME>`: WSL user home directory
- `<WSL_USER>`: WSL username
- `<CUSTOM_ASSETS_DIR>`: personal icons, wallpapers, and other visual assets
- `<CLINK_INSTALL_DIR>`: clink installation directory
- `<GIT_FOR_WINDOWS_INSTALL_DIR>`: Git for Windows installation directory
- `<CONDA_HOME>`: Miniconda or Conda installation root inside WSL

## Tool and secret placeholders

- `<OH_MY_POSH_BIN>`: local `oh-my-posh` executable path
- `<OH_MY_POSH_THEME>`: theme file used by `oh-my-posh`
- `<LOCAL_PROXY_URL>`: local or private proxy endpoint
- `<GEMINI_API_BASE_URL>`: Gemini-compatible API base URL
- `<GEMINI_API_KEY>`: Gemini API key

## Redaction strategy

- Keep shell logic, prompt bootstrap, and structure.
- Replace personally identifying values and machine-specific absolute paths.
- Keep public installation conventions where they improve readability.
