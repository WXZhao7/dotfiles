# 环境变量

Hyprland 通过 UWSM 启动，环境变量集中放在以下位置：

| 配置文件 | 用途 |
| --- | --- |
| `~/.config/uwsm/env` | UWSM 通用环境变量 |
| `~/.config/uwsm/env-hyprland` | Hyprland 专用环境变量 |
| `~/.config/environment.d/10-ssh-agent.conf` | `SSH_AUTH_SOCK` |

Lua 中保留了相关变量的注释，见 [env.lua](../lua/modules/env.lua)。
