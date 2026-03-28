# macOS

这个目录存放 macOS 侧的终端配置。

目前仓库里公开分享的 macOS 终端层主要是：

- `ghostty`：当前在 macOS 上使用的终端模拟器配置

## 目录分工

- `ghostty/config`：Ghostty 的实际配置文件
- `ghostty/README.md`：Ghostty 子目录自己的简要说明

## 当前共享的终端层

`ghostty` 是当前在 macOS 上实际使用的终端模拟器配置。这里分享的是终端表现层，而不是整套 shell 启动脚本。

它覆盖的内容包括：

- 主题选择
- 窗口留白与 padding 平衡
- 标题栏样式
- 影响日常阅读体验的终端外观细节
- 字符单元高度微调

## 当前配置的关键信息

这份 Ghostty 配置当前的重点包括：

- 主题：`Catppuccin Latte`
- 配置位置：`~/.config/ghostty/config`
- 调整方向：更宽松的留白、更轻的标题栏观感、更适合浅色主题的阅读密度

如果你打开 `ghostty/config`，会看到它目前主要控制的是：

- `theme`
- `window-padding-x`
- `window-padding-y`
- `window-padding-balance`
- `window-padding-color`
- `macos-titlebar-style`
- `adjust-cell-height`

## 使用方式建议

- 想复用当前 macOS 终端外观，先看 `ghostty/config`
- 想知道这份 Ghostty 配置的范围和用途，再看 `ghostty/README.md`

## 当前不包含的内容

- shell 启动文件
- 仅本机使用的 macOS 自动化
- 未脱敏的机器相关资源与应用路径

这个仓库把 macOS 下的终端模拟器层和 shell 逻辑分开处理，所以这里重点是终端外观与行为，而不是 shell 启动脚本。
