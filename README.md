<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="./docs/banner-dark.svg">
    <img src="./docs/banner.svg" alt="fish-terminal banner" width="860">
  </picture>
</p>

<p align="center">
  简体中文 | <a href="./README.en.md">English</a>
</p>

我的终端配置，脱敏后放出来。日常主力是 Windows 上的 PowerShell 和 WSL2 里的 fish，其余按平台归类。

## 平台

| 平台 | 工具栈 | 配置目录 |
| --- | --- | --- |
| Windows | Terminal · PowerShell · cmd + clink · Git Bash | [`windows/`](./windows) |
| WSL2 | Ubuntu · fish · oh-my-posh | [`wsl2/`](./wsl2) |
| macOS | Ghostty | [`macos/`](./macos) |

每个平台目录下有自己的 README，写了安装步骤和注意事项。

## 说明

- 用户名、绝对路径、资源路径、代理地址、密钥等已替换为占位符，参见 [`docs/placeholders.md`](./docs/placeholders.md)。
- `fish_variables`、history、日志、插件生成的动态文件不提交。
- 仅作个人参考，路径和环境与我本机绑定，不建议直接克隆套用。
