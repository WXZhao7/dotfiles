# 安装记录

Arch Linux 下的安装记录，使用 `paru`。重复的软件包已合并，重新安装时按需选用。

```sh
# NVIDIA 驱动
paru -S --needed linux-headers nvidia-open-dkms nvidia-utils

# Hyprland 与会话管理
paru -S --needed hyprland uwsm greetd greetd-tuigreet

# 桌面集成
paru -S --needed xdg-desktop-portal-hyprland xdg-desktop-portal-gtk hyprpolkitagent qt5-wayland qt6-wayland

# 音频
paru -S --needed pipewire wireplumber pipewire-pulse

# 字体
paru -S --needed noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono-nerd

# 桌面组件
paru -S --needed waybar fuzzel mako hyprlock awww

# 输入法
paru -S --needed fcitx5 fcitx5-configtool fcitx5-rime fcitx5-gtk fcitx5-qt

# 终端、剪贴板与文件管理
paru -S --needed foot clipse wl-clipboard
paru -S --needed thunar gvfs tumbler thunar-archive-plugin thunar-volman

# 密钥管理
paru -S --needed gnome-keyring seahorse

# 视频加速
paru -S --needed libva-utils libva-nvidia-driver

# 常用应用
paru -S --needed firefox visual-studio-code-bin
```

登录管理器使用 greetd + tuigreet，Hyprland 通过 UWSM 启动。原笔记中的启用命令：

```sh
sudo systemctl enable greetd.service
```

输入法的启动方式见 [Fcitx5 服务](fcitx5.md)，环境配置见 [环境变量](environment.md)。
