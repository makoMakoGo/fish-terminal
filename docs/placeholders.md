# Placeholders

仓库中用到的占位符一览。

## 路径

| 占位符 | 含义 |
| --- | --- |
| `<WINDOWS_HOME>` | Windows 用户主目录 |
| `<WSL_HOME>` | WSL 用户主目录 |
| `<WSL_USER>` | WSL 用户名 |
| `<CUSTOM_ASSETS_DIR>` | 图标、壁纸等个人视觉资源目录 |
| `<CLINK_INSTALL_DIR>` | clink 安装目录 |
| `<GIT_FOR_WINDOWS_INSTALL_DIR>` | Git for Windows 安装目录 |
| `<CONDA_HOME>` | WSL 内 Miniconda / Conda 安装根目录 |

## 工具与密钥

| 占位符 | 含义 |
| --- | --- |
| `<OH_MY_POSH_BIN>` | oh-my-posh 可执行文件路径 |
| `<OH_MY_POSH_THEME>` | oh-my-posh 主题文件路径 |
| `<LOCAL_PROXY_URL>` | 本地代理地址 |
| `<GEMINI_API_BASE_URL>` | Gemini API base URL |
| `<GEMINI_API_KEY>` | Gemini API key |

## 脱敏策略

- 保留 shell 逻辑、提示符启动流程和目录结构。
- 替换个人身份信息和机器绑定的绝对路径。
- 公共安装惯例路径保留原样以提高可读性。
