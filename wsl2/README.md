# WSL2

这个目录存放运行在 WSL2 下的 Linux 侧配置。

这里有两层配置：

- WSL 宿主机层
- Linux 发行版层

## 目录分工

- `.wslconfig`：Windows 宿主机侧读取的 WSL 全局配置，例如网络模式、DNS 行为、回环访问和虚拟机空闲策略
- `ubuntu/etc/wsl.conf`：Ubuntu 发行版内部的 WSL 配置，例如 `systemd`、默认用户和 Windows 互操作行为
- `ubuntu/fish/`：Ubuntu 里实际使用的交互 shell 配置

## 各部分具体说明

### 宿主机层 `.wslconfig`

`.wslconfig` 作用在 Windows 宿主机这一层，影响的是 WSL2 整体运行方式，而不是某一个发行版内部的 shell 细节。

当前这份配置重点在：

- `networkingMode=Mirrored`
- `dnsTunneling=true`
- `dnsProxy=false`
- `hostAddressLoopback=true`
- `vmIdleTimeout=-1`

也就是说，这一层主要关心网络联通性、Windows 与 WSL 的互访，以及 WSL 虚拟机生命周期行为。

### 发行版层 `ubuntu/etc/wsl.conf`

`ubuntu/etc/wsl.conf` 是 Ubuntu 发行版内部的 WSL 配置，负责这套 Linux 环境如何启动与互操作。

当前这份文件主要包括：

- `systemd=true`
- 默认用户设置
- Windows interop 开关
- `appendWindowsPath=false`

这里的设计取向很明确：保留互操作能力，但不要把 Windows 的 PATH 直接污染进 Linux shell。

### 交互 shell 层 `ubuntu/fish/`

`ubuntu/fish/` 才是你每天真正会碰到的 Linux 交互体验层。

关键文件含义如下：

- `config.fish`：主入口，负责 greeting、颜色、缩写、工具初始化、conda 和自定义 PATH 注入
- `conf.d/99-oh-my-posh.fish`：延迟初始化 `oh-my-posh`，只在交互场景下挂到 prompt
- `conf.d/rustup.fish`：加载 Rust 工具链环境
- `fish_plugins`：插件清单

从职责上看：

- `config.fish` 管“总体行为”
- `conf.d/` 管“按主题拆开的启动逻辑”
- `fish_plugins` 管“装哪些插件”

## 使用方式建议

- 想改 WSL2 在 Windows 上的整体行为，先看 `.wslconfig`
- 想改 Ubuntu 这套发行版的启动和互操作方式，先看 `ubuntu/etc/wsl.conf`
- 想改日常 Linux shell 体验，直接看 `ubuntu/fish/`

## 当前 shell 选择的含义

- WSL 内的主力交互 shell 是 `fish`
- 提示符初始化、插件加载、缩写、工具启动逻辑和用户侧 shell 行为都放在 `ubuntu/fish/`
- 这一层和 Windows 侧的 `PowerShell`、`cmd` 配置是分开的

这也意味着：这个目录的重点不是“把 Windows shell 搬进 Linux”，而是单独维护一套更适合 WSL 的 Linux 交互环境。
