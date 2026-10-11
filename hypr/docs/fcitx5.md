# Fcitx5 服务

原有启动配置较简单，改用自己的 systemd 用户服务管理 Fcitx5。

## 禁用 XDG 自启动

复制系统 desktop 文件到用户目录，并添加 `Hidden=true`：

```sh
mkdir -p ~/.config/autostart
cp /etc/xdg/autostart/org.fcitx.Fcitx5.desktop ~/.config/autostart/
printf '\nHidden=true\n' >> ~/.config/autostart/org.fcitx.Fcitx5.desktop
```

## 创建用户服务

文件：`~/.config/systemd/user/fcitx5.service`。

```ini
[Unit]
Description=Fcitx 5 input method
Documentation=man:fcitx5(1)
PartOf=graphical-session.target
ConditionEnvironment=WAYLAND_DISPLAY

[Service]
Type=simple
ExecStart=/usr/bin/fcitx5 --replace
ExecStop=/usr/bin/fcitx5-remote -e
Restart=on-failure
RestartSec=1

[Install]
WantedBy=graphical-session.target
```

## 启用服务

```sh
systemctl --user daemon-reload
systemctl --user enable --now fcitx5.service
```
