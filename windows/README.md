# Windows

Windows 侧的终端配置，覆盖以下环境：

- **PowerShell 7**：日常主力交互 shell
- **Windows Terminal**：统一终端容器，挂接所有 shell profile
- **cmd + clink**：给经典 Command Prompt 补上现代编辑能力
- **Git Bash**：轻量补充，主要用于 Git 工作流

## 目录

| 路径 | 作用 |
| --- | --- |
| `terminal/settings.json` | Windows Terminal 总配置：profile、快捷键、字体、配色、padding |
| `pwsh/Microsoft.PowerShell_profile.ps1` | PowerShell 7 profile：提示符、代理、自定义函数 |
| `cmd/command-processor.reg` | 通过 AutoRun 注入 clink |
| `cmd/clink_settings` | clink 行为与颜色调优 |
| `cmd/.inputrc` | clink 读取的 readline 配置 |
| `cmd/console-settings.md` | 控制台字体、颜色、缓冲区默认值记录 |
| `git-bash/.bash_profile` / `.bashrc` | Git Bash 启动：oh-my-posh 初始化、completion、少量 alias |

## 各部分说明

### Windows Terminal

`terminal/settings.json` 是 Windows 侧的统一入口，定义的是终端容器层：

- 默认 profile 和各 profile 的图标、配色、起始目录
- 快捷键和操作行为
- 字体、行高、padding、透明度、光标样式

当前挂接了 PowerShell、Command Line、Git Bash、Ubuntu、AdminShell 五个 profile。

### PowerShell 7

`pwsh/Microsoft.PowerShell_profile.ps1` 是主力交互配置：

- `posh-git` + `oh-my-posh` 提示符初始化
- `HTTP_PROXY` / `HTTPS_PROXY` / `NO_PROXY` 统一处理
- 轻量命令包装（`pip`）和带环境变量加载的命令入口（`gemini`）
- 面向本机工作流的辅助函数（`ccc`）

这份 profile 既管外观也管日常命令行为。

### cmd + clink

给 Command Prompt 补足现代编辑体验：

- `command-processor.reg`：通过 AutoRun 把 clink 注入 cmd 启动流程
- `console-settings.md`：记录控制台字体、颜色、缓冲区和窗口默认项（非配置文件，纯文档）
- `clink_settings`：clink 行为与颜色调优
- `.inputrc`：readline 行为配置，由 clink 读取

只保留值得分享的静态配置，不含 history、日志和运行时状态。

### Git Bash

不是主力 shell，保留的内容：

- oh-my-posh 初始化
- Git completion 加载
- 少量个人 alias

不导出全局 Git 身份、凭据设置和带敏感路径的 shell 文件。

## 怎么看

1. 想看整体终端体验 → `terminal/settings.json`
2. 想看主力 shell 交互逻辑 → `pwsh/`
3. 还在用 cmd → `cmd/`
4. 只关心 Git Bash → `git-bash/`
5. 想看 Linux 侧 → 去上层 [`wsl2/`](../wsl2)

## 不包含

密钥、私有路径、history、cache、日志等运行时状态文件。
