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

## 截图

<!-- 截图添加后取消注释
<p align="center">
  <img src="./docs/screenshots/powershell.png" alt="PowerShell" width="720">
</p>
<p align="center">
  <img src="./docs/screenshots/fish.png" alt="fish" width="720">
</p>
-->

> 截图待补充，参见 [`docs/screenshots/`](./docs/screenshots)。

## 平台

| 平台 | 工具栈 | 配置目录 |
| --- | --- | --- |
| Windows | Terminal · PowerShell · cmd + clink · Git Bash | [`windows/`](./windows) |
| WSL2 | Ubuntu · fish · oh-my-posh | [`wsl2/`](./wsl2) |
| macOS | Ghostty | [`macos/`](./macos) |

每个平台目录下有自己的 README，写了具体说明和注意事项。

## 如何参考

这个仓库不适合直接 clone 套用（路径和环境都绑定了我的机器），但如果想借鉴某个部分：

1. 找到对应平台目录，打开里面的 README 了解结构
2. 复制你需要的文件
3. 把 `<占位符>` 替换成你自己的路径和值（完整列表见 [`docs/placeholders.md`](./docs/placeholders.md)）

## 说明

- 用户名、绝对路径、资源路径、代理地址、密钥等已替换为占位符。
- `fish_variables`、history、日志、插件生成的动态文件不提交。
- MIT 协议，随意参考。

## License

[MIT](./LICENSE)
