<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="./docs/banner-dark.svg">
    <img src="./docs/banner.svg" alt="fish-terminal banner" width="860">
  </picture>
</p>

<p align="center">
  English | <a href="./README.md">简体中文</a>
</p>

My terminal configs, sanitized. Daily drivers are PowerShell on Windows and fish in WSL2; the rest is grouped by platform.

## Platforms

| Platform | Stack | Config |
| --- | --- | --- |
| Windows | Terminal · PowerShell · cmd + clink · Git Bash | [`windows/`](./windows) |
| WSL2 | Ubuntu · fish · oh-my-posh | [`wsl2/`](./wsl2) |
| macOS | Ghostty | [`macos/`](./macos) |

Each subdirectory has its own README with install steps and caveats.

## Notes

- Usernames, absolute paths, asset locations, proxy addresses, and secrets are replaced with placeholders. See [`docs/placeholders.md`](./docs/placeholders.md).
- `fish_variables`, history, logs, and plugin-generated state are not committed.
- Personal reference only — paths and environment are pinned to my machine; don't clone this verbatim.
