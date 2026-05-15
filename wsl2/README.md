# WSL2

WSL2 下的 Linux 侧配置，分两层：宿主机层和发行版层。

## 目录

| 路径 | 作用 |
| --- | --- |
| `.wslconfig` | Windows 宿主机侧 WSL 全局配置 |
| `ubuntu/etc/wsl.conf` | Ubuntu 发行版内部 WSL 配置 |
| `ubuntu/fish/config.fish` | fish 主入口 |
| `ubuntu/fish/conf.d/99-oh-my-posh.fish` | 交互模式下延迟加载 oh-my-posh |
| `ubuntu/fish/conf.d/rustup.fish` | Rust 工具链环境 |
| `ubuntu/fish/fish_plugins` | 插件清单 |

## 各部分说明

### 宿主机层 `.wslconfig`

影响 WSL2 整体运行方式，不针对某个发行版内部。当前重点：

- `networkingMode=Mirrored`：镜像网络，Windows 和 WSL 共享网络栈
- `dnsTunneling=true`
- `dnsProxy=false`
- `hostAddressLoopback=true`：允许 Windows ↔ WSL 回环互访
- `vmIdleTimeout=-1`：禁止 WSL 虚拟机自动休眠

主要解决的是网络联通性和 VM 生命周期问题。

### 发行版层 `ubuntu/etc/wsl.conf`

控制 Ubuntu 如何启动和与 Windows 互操作：

- `systemd=true`
- 默认用户设置
- Windows interop 保留开启
- `appendWindowsPath=false`：不把 Windows PATH 注入 Linux shell

### 交互 shell 层 `ubuntu/fish/`

日常实际使用的 Linux 交互环境：

- **`config.fish`**：主入口，负责 greeting、颜色、缩写、工具初始化（nvm / conda / go 等）、自定义 PATH
- **`conf.d/99-oh-my-posh.fish`**：只在交互模式下挂载 oh-my-posh 到 prompt
- **`conf.d/rustup.fish`**：加载 Rust 工具链环境变量
- **`fish_plugins`**：fisher 插件清单，`fisher update` 时读取

`config.fish` 管总体行为，`conf.d/` 按主题拆分启动逻辑。

## 怎么看

1. 想改 WSL2 整体行为（网络、VM） → `.wslconfig`
2. 想改 Ubuntu 启动和互操作 → `ubuntu/etc/wsl.conf`
3. 想改日常 shell 体验 → `ubuntu/fish/`

## 不包含

密钥、`fish_variables`、history、日志、插件生成的动态文件。
