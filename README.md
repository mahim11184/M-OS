<div align="center">

# 🌌 Mighty Linux by MOS
### *A Modular, Lightweight, and Modern Debian-Based Linux Distribution*

[![Debian Bookworm](https://img.shields.io/badge/Base-Debian%20Bookworm-A81D33?style=flat-square&logo=debian)](https://www.debian.org/)
[![Desktop Environment](https://img.shields.io/badge/DE-XFCE%20%2B%20Openbox-1E1E2E?style=flat-square&logo=xfce)](https://xfce.org/)
[![Release](https://img.shields.io/badge/Release-v1.0.0-success?style=flat-square)]()
[![Made in Bangladesh](https://img.shields.io/badge/Made%20in-Bangladesh%20%F0%9F%87%BD%F0%9F%87%BD-green?style=flat-square)]()

</div>

---

## 🚀 About Mighty Linux (MOS)

**Mighty Linux (MOS)** is an ultra-lightweight, high-performance Linux distribution built on top of **Debian Bookworm**. It combines the stability of Debian with a highly customized **XFCE + Openbox** window manager setup to deliver a modern, fast, and responsive user experience right out of the box.

Designed for modern hardware as well as older devices without compromising on style or functionality.

---

## ✨ Key Highlights

- 🎨 **Sleek Interface:** Custom GTK3 CSS dark theme, rounded window styling, and an intuitive **Whisker Menu**.
- ⚡ **Ultra-Fast & Resource-Efficient:** Minimal background footprint powered by XFCE core components and Openbox.
- 📦 **Flatpak & Flathub Integrated:** Built-in Flatpak support with auto-enabling Flathub service on first boot.
- 🧰 **Pre-loaded Productivity Tools:** Includes LibreOffice Suite, VLC Media Player, Falkon Browser, Geany, Neovim, Btop, GParted, and Fastfetch.
- 🌐 **Comprehensive Driver Coverage:** Pre-installed firmware for Realtek, Intel/AMD graphics, Wi-Fi adapters (`iwlwifi`, `atheros`), Vulkan acceleration, and PipeWire audio.
- 🛠️ **Automated CI/CD Pipeline:** ISO builds are compiled automatically via GitHub Actions workflows.

---

## 📂 Project Architecture & File Breakdown

Here is an overview of what each directory and critical file inside this repository contains:

```text
M-OS/
├── .gitattributes                                  # Git file normalization & LFS rules
├── README.md                                       # Documentation & repository summary
├── assets/                                         # Wallpapers, splash graphics, and boot images
│   ├── wallpaper.jpg                               # Primary system wallpaper
│   ├── bg1.jpg, bg2.jpg, bg3.jpg                    # Alternative bundled backgrounds
│   └── boot.jpg                                    # GRUB bootloader background
├── .github/
│   └── workflows/
│       └── build.yml                               # GitHub Actions pipeline for live-build & ISO releases
└── config/
    ├── package-lists/
    │   └── mos-core.list.chroot                    # List of system packages, drivers, and apps to install
    └── includes.chroot/
        └── etc/
            ├── systemd/system/
            │   └── flatpak-flathub-setup.service   # Systemd service to auto-add Flathub repository
            └── skel/                               # Default home settings for new users
                ├── .bashrc                         # Custom terminal launch settings (Fastfetch startup)
                └── .config/
                    ├── gtk-3.0/gtk.css             # Zorin-inspired dark UI styling
                    ├── xfce4/panel/whiskermenu-1.rc # Whisker Menu layout configuration
                    └── fastfetch/config.jsonc      # Custom system info output layout
