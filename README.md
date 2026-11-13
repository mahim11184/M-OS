<div align="center">

# 🌌 Mighty Linux
### *A lightweight, Windows-inspired Debian desktop by MOS*

[![Base](https://img.shields.io/badge/Base-Debian%2012%20Bookworm-A81D33?style=flat-square&logo=debian)](https://www.debian.org/)
[![Desktop](https://img.shields.io/badge/Desktop-XFCE%20%2B%20Openbox-2284A1?style=flat-square&logo=xfce)](https://xfce.org/)
![Architecture](https://img.shields.io/badge/Architecture-amd64-blue?style=flat-square)
![Formats](https://img.shields.io/badge/Apps-DEB%20%7C%20Flatpak%20%7C%20AppImage-39A96B?style=flat-square)
![Made in Bangladesh](https://img.shields.io/badge/Made%20in-Bangladesh%20🇧🇩-green?style=flat-square)

**Mighty Linux (MOS)** is a Debian-based desktop operating system designed to feel familiar to Windows users while staying lightweight, practical, and customizable. Its visual direction takes inspiration from Linux Mint and Zorin OS, without copying either distribution.

</div>

---

## ✨ The Mighty Linux experience

- **Familiar desktop:** XFCE with a Windows-style bottom panel, Whisker application menu, task buttons, system tray, volume control, and clock.
- **Lightweight foundation:** XFCE and Openbox keep the desktop simpler than a full heavyweight desktop environment.
- **Custom identity:** Mighty Linux wallpaper collection, GRUB background, LightDM greeter styling, and a custom animated Plymouth boot theme.
- **Three application formats:** Debian `.deb` packages, Flatpak/Flathub, and AppImages with FUSE 2 compatibility.
- **Everyday tools:** Falkon, VLC, LibreOffice, Geany, Neovim, GParted, Neofetch, and Btop.
- **Hardware support:** Debian firmware packages for common Intel, AMD, Realtek, Atheros, and Intel Wi-Fi/audio hardware.
- **Installer:** Calamares and Debian installer settings are included in the live image.

## 🖥️ Desktop design

The desktop uses a dark Arc theme and Adwaita icons, with a bottom panel intended to be familiar to Windows users. The interface is built from XFCE components so users can change themes, panel position, icons, and shortcuts instead of being locked into a custom shell.

## 📦 Software support

| Format | Support |
|---|---|
| `.deb` | APT, GDebi, and Synaptic |
| Flatpak | Flatpak is installed; Flathub is added automatically after the first boot when networking is available |
| AppImage | FUSE 2 compatibility library and FUSE 3 are included; mark an AppImage executable before launching it |

AppImages are third-party application bundles. Compatibility still depends on the AppImage's architecture and the libraries it expects.

## 💽 HDD and older-computer focus

Mighty Linux uses a comparatively light XFCE desktop and enables zram support to help systems under memory pressure. It is designed to install and run from a traditional hard drive; an SSD will still feel faster, and demanding browsers or applications can use substantial RAM on any desktop operating system.

The build currently targets **64-bit x86 (amd64)**. Hardware support depends on the device and its firmware; this project does not claim that every old PC or graphics adapter is supported.

## 🚀 Custom boot and wallpaper

- The default desktop wallpaper is `wallpaper.jpg` in the repository root.
- Additional desktop backgrounds are stored in `assets/`.
- `assets/boot.jpg` is used as the Mighty Linux Plymouth splash and GRUB background.
- The Plymouth script loops through four animated spinner frames during boot.

## 🧱 Technology

| Component | Choice |
|---|---|
| Base | Debian 12 (Bookworm) |
| Desktop session | XFCE |
| Window manager | Openbox (started within the XFCE session) |
| Display manager | LightDM + GTK greeter |
| Application formats | APT/DEB, Flatpak, AppImage |
| Boot splash | Plymouth |
| Installer | Calamares |
| Image builder | Debian Live Build |
| Architecture | amd64 |

## 🛠️ Building the ISO

The GitHub Actions workflow builds the live ISO from the Debian Bookworm configuration.

1. Open the repository's **Actions** tab.
2. Select **Build Mighty Linux ISO**.
3. Select **Run workflow** for a manual build, or push a change to `main`.
4. Download the `mighty-linux-iso` workflow artifact. Builds on `main` also publish a versioned prerelease with a SHA-256 checksum.

To build locally on a Debian Bookworm machine, install `live-build`, `debootstrap`, `xorriso`, and `squashfs-tools`, then run:

```bash
sudo lb config \
  --architectures amd64 \
  --distribution bookworm \
  --binary-images iso-hybrid \
  --archive-areas "main contrib non-free non-free-firmware" \
  --image-name mighty-linux
sudo lb build
```

## 📁 Repository layout

```text
M-OS/
├── .github/workflows/build.yml
├── assets/                         # Wallpaper collection and boot artwork
├── wallpaper.jpg                   # Default desktop wallpaper
├── config/
│   ├── package-lists/              # Debian Live Build package lists
│   ├── includes.chroot/            # Files copied into the live filesystem
│   │   ├── etc/                    # Branding, services, desktop defaults
│   │   └── usr/share/plymouth/     # Custom animated boot theme
│   └── hooks/live/                 # Build-time chroot hooks
└── README.md
```

## ⚠️ Project status

Mighty Linux is an independent community project and is still under active development. Test the live ISO on a spare machine or in a virtual machine before installing it on a computer containing important data. Back up your files before repartitioning a disk.

Mighty Linux is not affiliated with or endorsed by Debian, Linux Mint, or Zorin OS.

---

**Made in Bangladesh 🇧🇩**
