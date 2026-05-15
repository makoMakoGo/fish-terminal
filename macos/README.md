# macOS

macOS 侧的终端配置，目前只有 Ghostty 终端模拟器。

这里分享的是终端表现层（外观、间距、标题栏），不包含 shell 启动脚本。

## 目录

| 路径 | 作用 |
| --- | --- |
| `ghostty/config` | Ghostty 配置文件 |

## Ghostty 配置说明

配置位置：`~/.config/ghostty/config`

当前这份配置控制的内容：

| 配置项 | 值 | 作用 |
| --- | --- | --- |
| `theme` | `Catppuccin Latte` | 浅色主题 |
| `window-padding-x` | `18` | 水平留白 |
| `window-padding-y` | `12` | 垂直留白 |
| `window-padding-balance` | `true` | 内容居中分配 padding |
| `window-padding-color` | `extend` | padding 区域延伸背景色 |
| `macos-titlebar-style` | `transparent` | 标题栏融入窗口背景 |
| `adjust-cell-height` | `8%` | 增加行高，改善阅读密度 |

整体调整方向：宽松留白 + 轻量标题栏 + 适合浅色主题的阅读体验。

## 不包含

shell 启动文件、macOS 自动化脚本、未脱敏的机器路径。
