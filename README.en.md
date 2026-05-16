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

## Screenshots

<!-- Uncomment after adding screenshots
<p align="center">
  <img src="./docs/screenshots/powershell.png" alt="PowerShell" width="720">
</p>
<p align="center">
  <img src="./docs/screenshots/fish.png" alt="fish" width="720">
</p>
-->

> Screenshots coming soon. See [`docs/screenshots/`](./docs/screenshots).

## Platforms

| Platform | Stack | Config |
| --- | --- | --- |
| Windows | Terminal · PowerShell · cmd + clink · Git Bash | [`windows/`](./windows) |
| WSL2 | Ubuntu · fish · oh-my-posh | [`wsl2/`](./wsl2) |
| macOS | Ghostty | [`macos/`](./macos) |

Each subdirectory has its own README with details and caveats.

## How to use

This repo isn't meant to be cloned directly (paths are pinned to my machine), but if you want to reference something:

1. Navigate to the relevant platform directory and read its README
2. Copy the files you need
3. Replace `<placeholders>` with your own paths and values (full list in [`docs/placeholders.md`](./docs/placeholders.md))

## Notes

- Usernames, absolute paths, asset locations, proxy addresses, and secrets are replaced with placeholders.
- `fish_variables`, history, logs, and plugin-generated state are not committed.
- MIT licensed, feel free to reference.

## License

[MIT](./LICENSE)
