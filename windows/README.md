# Windows

这个目录存放 Windows 侧的终端配置。

这里主要涉及几类终端环境：

- `cmd`：经典 Command Prompt，通过 clink 补上更现代的命令行编辑能力
- `PowerShell 7`：当前 Windows 侧的主力交互 shell
- `Windows PowerShell`：系统自带的旧版 PowerShell，仍然存在，但不是这里的主要目标
- `Git Bash`：偏轻量的类 Unix shell，主要用于 Git 相关工作流
- `WSL`：从 Windows Terminal 进入 Linux 侧环境的入口

## 目录分工

- `terminal/settings.json`：Windows Terminal 的总入口，负责 profile、快捷键、字体、padding、配色和全局默认项
- `pwsh/Microsoft.PowerShell_profile.ps1`：PowerShell 7 的 profile，负责提示符初始化、代理环境变量和自定义函数
- `cmd/`：cmd 专属配置，包括 clink 注入、控制台默认项、readline 行为和 clink 调优
- `git-bash/`：Git Bash 的轻量启动配置，包括提示符初始化和少量 shell 习惯项

## 各部分具体说明

### Windows Terminal

`terminal/settings.json` 是 Windows 侧的统一入口。它定义的不是某一个 shell，而是整个终端容器层，包括：

- 默认 profile
- 快捷键和操作行为
- 字体、行高、padding、透明度和光标样式
- 各个 profile 的图标、配色和起始目录

当前这份配置里，Windows Terminal 承担的是“统一壳”的角色，下面再挂接：

- `PowerShell`
- `Command Line`
- `Git Bash`
- `Ubuntu`
- `AdminShell`

也就是说，如果你想复用整体观感和多 shell 组织方式，先看 `terminal/settings.json`。

### PowerShell 7

`pwsh/Microsoft.PowerShell_profile.ps1` 是当前 Windows 侧的主力交互配置，重点在于：

- `posh-git` 和 `oh-my-posh` 提示符初始化
- `HTTP_PROXY`、`HTTPS_PROXY`、`NO_PROXY` 的统一处理
- `pip` 这种轻量命令包装
- `gemini` 这种带环境变量加载的命令入口
- `ccc` 这种面向本机工作流的辅助函数

这份 profile 体现的是“日常交互逻辑”，不是单纯的美化脚本。也就是说，PowerShell 7 在这里既负责外观，也负责常用命令行为。

### cmd + clink

`cmd/` 的定位是：给经典 Command Prompt 补足现代命令行编辑体验。

这里几个文件的作用分别是：

- `command-processor.reg`：通过 `AutoRun` 把 clink 注入到 cmd 启动流程
- `console-settings.md`：记录控制台字体、颜色、缓冲区和窗口默认项
- `clink_settings`：clink 的行为与颜色调优
- `.inputrc`：由 clink 读取的 readline 行为配置

这一层有意只保留“值得分享的静态配置”，不包含：

- history 文件
- 日志
- 运行时生成状态

### Git Bash

`git-bash/` 不是这台机器上的主力 shell，它更像一个保留的轻量补充环境。

这里保留的内容主要是：

- 一小段 `oh-my-posh` 初始化
- Git completion 加载
- 少量个人 alias

这里有意不导出的内容包括：

- 全局 Git 身份与凭据设置
- 与当前仓库无关、且带有敏感路径或机器绑定信息的 shell 文件

## 使用方式建议

- 想先看整个 Windows 终端体验，从 `terminal/settings.json` 开始
- 想看主力 shell 的实际交互逻辑，从 `pwsh/` 开始
- 仍然使用 Command Prompt，再看 `cmd/`
- 只关心 Git Bash 的轻量配置，再看 `git-bash/`
- 想看 Linux 侧交互环境，则跳去上层的 `wsl2/` 目录，而不是在 Windows 目录里继续找

## 有意不包含的内容

- 密钥与敏感信息
- 私有绝对路径
- 未脱敏的机器相关资源路径
- history、cache、日志与其他运行时状态文件
