<p align="center">
  <img src="./docs/banner.svg" alt="fish-terminal banner" width="860" />
</p>

<p align="center">
  <code>terminal configs · prompt bootstraps · shell ergonomics</code>
</p>

<p align="center">
  简体中文 | <a href="./README.en.md">English</a>
</p>

这是我当前终端环境的一份脱敏分享版本。

它主要包含：

- Windows Terminal 的 profile、快捷键、字体与配色方案
- PowerShell 提示符初始化与 profile 函数
- cmd + clink 的注入、readline 与控制台默认设置
- WSL2 主机配置与 Ubuntu fish 配置
- macOS Ghostty 的外观与间距设置

## 目录结构

```text
.
|-- macos
|   |-- README.md
|   `-- ghostty
|       `-- config
|-- windows
|   |-- cmd
|   |   |-- .inputrc
|   |   |-- clink_settings
|   |   |-- command-processor.reg
|   |   `-- console-settings.md
|   |-- git-bash
|   |   |-- .bash_profile
|   |   |-- .bashrc
|   |-- README.md
|   |-- pwsh
|   |   `-- Microsoft.PowerShell_profile.ps1
|   `-- terminal
|       `-- settings.json
|-- wsl2
|   |-- README.md
|   |-- .wslconfig
|   `-- ubuntu
|       |-- etc
|       |   `-- wsl.conf
|       `-- fish
|           |-- config.fish
|           |-- conf.d
|           |   |-- 99-oh-my-posh.fish
|           |   `-- rustup.fish
|           `-- fish_plugins
`-- docs
    `-- placeholders.md
```

## 说明

- 用户名、私有绝对路径、自定义资源位置、代理地址与密钥都已经替换为占位符。
- 这里的 Git Bash 配置刻意保持轻量；主要的交互环境仍然是 Windows 上的 PowerShell，以及 WSL2 里的 fish。
- 这个仓库里的 macOS 终端示例基于 Ghostty。
- `fish_variables`、history、日志文件以及插件生成的动态内部文件不会提交。
