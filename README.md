# rickdots
- Collection of dotfiles based on Kanagawa dragon theme and CascadiaCode NF.
  - neovim
  - tmux
  - bash
  - fuzzel
  - yazi
  - eza
  - noctalia
  - niri
  - fastfetch
  - ghostty

## Infos

> Redirect niri warnings by adding: `systemctl --user import-environment >/dev/null 3>&1` in `/usr/bin/niri-session`.
- (or launching the session via a display manager like ly with custom exec parameters)

---

```bash
nmcli d wifi
nmcli d wifi connect <BSSID aka NET MAC> --ask
```

- After connectiong if `ping` shows lags than check:
> iw dev wlan0 get power_save

- If setted to on, fix it by running:
> `sudoedit /etc/NetworkManager/NetworkManager.conf`
- Add those lines:

```bash
[device]
wifi.backend=wpa_supplicant

[connection]
wifi.powersave=2
```

- `sudo systemctl restart NetworkManager`
