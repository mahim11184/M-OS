<div align="center">

# 🌌 Mighty OS (MOS)
### *The Ultimate Lightweight, Zorin-Inspired Debian Experience*

[![Debian Bookworm](https://img.shields.io/badge/Base-Debian%20Bookworm-A81D33?style=flat-square&logo=debian)](https://www.debian.org/)
[![Desktop Environment](https://img.shields.io/badge/DE-XFCE%20%2B%20Openbox-1E1E2E?style=flat-square&logo=xfce)](https://xfce.org/)
[![Status](https://img.shields.io/badge/Status-Alpha%20v0.1-orange?style=flat-square)]()
[![License](https://img.shields.io/badge/License-MIT-blue?style=flat-square)]()

</div>

---

## 🚀 About Mighty OS (MOS)

**Mighty OS (MOS)** is a custom, modular, ultra-lightweight Linux distribution built on top of **Debian Bookworm**. It combines the lightning-fast performance and stability of a custom **XFCE + Openbox** window manager setup with the sleek, modern aesthetic of **Zorin OS Lite**. 

Designed for users who want a gorgeous, out-of-the-box ready desktop environment without the bloatware.

---

## ✨ Key Features

- 🎨 **Zorin OS Lite Aesthetic:** Custom dark GTK3 CSS styling, modern rounded corners, and a polished, central grid **Whisker Menu**.
- ⚡ **Ultra-Lightweight & Fast:** Optimized memory footprint and core resource management, perfect for both old and modern hardware.
- 📦 **Flatpak & Flathub Ready:** Out-of-the-box Flatpak support with an automated `systemd` service that sets up Flathub on your first boot.
- 🧰 **Pre-Configured Essentials:** Comes packed with LibreOffice, VLC Media Player, Falkon Browser, Geany, GParted, Neovim, Btop, and Fastfetch.
- 🌐 **Comprehensive Driver Support:** Includes broad out-of-the-box firmware for Realtek, Intel/AMD graphics, Wi-Fi adapters (`iwlwifi`, `atheros`), Vulkan drivers, and audio support.
- 🖼️ **Modular Design:** Clean project repository structure with a dedicated `assets/` folder for wallpapers, themes, and boot graphics handled via automated GitHub Actions.

---

## 🛠️ System Stack & Components

| Component | Technology |
| :--- | :--- |
| **Base OS** | Debian 12 (Bookworm) |
| **Window Manager / DE** | XFCE Core + Openbox |
| **Menu Launcher** | Whisker Menu (`xfce4-whiskermenu-plugin`) |
| **Display Manager** | LightDM |
| **Installer** | Calamares (Dark Theme Integrated) |
| **Audio Server** | PipeWire |

---

## 📂 Project Structure

```text
M-OS/
├── assets/                 # Wallpapers, boot splash, and images
├── .github/
│   └── workflows/          # Automated GitHub Actions build & release pipeline
└── config/
    ├── package-lists/      # Debian live-build package definitions
    └── includes.chroot/    # System configuration files, themes, and services
