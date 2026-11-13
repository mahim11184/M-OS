# 🌌 Mighty Linux (M-OS)

**Mighty Linux**, also called **M-OS / MOS**, is a lightweight desktop Linux project built on **Debian GNU/Linux 12 (Bookworm)**. It aims to bring Debian stability together with a familiar, Windows-inspired desktop workflow and a clean visual style influenced by Linux Mint and Zorin OS.

> **Development status:** Alpha / work in progress. Features listed as planned or experimental are not guaranteed to work in every build.

<p align="center">
  <img alt="Debian" src="https://img.shields.io/badge/Base-Debian%2012%20Bookworm-A81D33?style=for-the-badge&logo=debian&logoColor=white">
  <img alt="Architecture" src="https://img.shields.io/badge/Architecture-amd64-blue?style=for-the-badge">
  <img alt="Desktop" src="https://img.shields.io/badge/Desktop-XFCE%20%2B%20Openbox-333333?style=for-the-badge&logo=xfce">
  <img alt="Status" src="https://img.shields.io/badge/Status-Alpha-orange?style=for-the-badge">
</p>

---

## ✨ Project goals

- **Familiar desktop:** a panel, application menu and desktop workflow that feel comfortable to Windows users.
- **Lightweight base:** XFCE components with Openbox, intended to work well on modest PCs as well as newer hardware.
- **Debian foundation:** use Debian packages, tools and repositories.
- **App choices:** support the usual Debian `.deb` workflow, integrate Flatpak/Flathub, and provide FUSE libraries intended to help run AppImages.
- **Personal look:** MOS wallpapers, a GRUB background and a customized dark GTK/Whisker Menu style.
- **Useful defaults:** include everyday productivity, media, system-monitoring and maintenance tools.
- **Automated ISO build:** a GitHub Actions workflow is provided for building and publishing an alpha ISO.

## 🖥️ Desktop and appearance

The current package manifest installs XFCE session and panel components, Openbox, Thunar and the Whisker Menu plugin. The default GTK styling uses a dark palette with cyan accents and rounded menu elements.

The repository includes custom background images and a GRUB background:

- Wallpapers and alternate backgrounds: `assets/bg1.jpg` through `assets/bg9.jpg`, plus `assets/bg10.png`
- GRUB background image: `assets/boot.jpg`
- Additional root-level artwork: `wallpaper.jpg` and `boot.jpg`

A **static boot background** is present. A Windows-like looping animated boot sequence is a future enhancement; it is not currently implemented by the files in this repository.

## 📦 Application format support

| Format | Current state | Notes |
|---|---|---|
| **DEB** | Available through Debian | Install packages with `apt` or `dpkg`, subject to Debian compatibility and dependencies. |
| **Flatpak** | Included in the package list | A systemd service is provided to add the Flathub remote after network connectivity is available. |
| **AppImage** | FUSE packages are listed | Compatibility depends on the AppImage and its runtime. Test individual AppImages; universal compatibility is not guaranteed. |

## 🧰 Included software

The current package manifest includes selected tools such as:

- **Desktop and file management:** XFCE session/panel, Openbox, Thunar, XFCE Terminal and Whisker Menu
- **Office and web:** LibreOffice Writer/Calc/Impress and Falkon
- **Media:** VLC and FFmpeg
- **Development and terminal:** Geany, Neovim, Git, curl, Btop, Htop and Fastfetch
- **System tools:** GParted, Calamares, archive utilities and Flatpak
- **Hardware and system support:** firmware packages for several common Wi-Fi/audio/graphics devices, Mesa Vulkan drivers, PipeWire audio, ZRAM tools and TLP

The exact software set can change between builds. Check `config/package-list/mos-core.list.chroot` for the current package manifest.

## 💻 Hardware and compatibility

M-OS currently configures an **AMD64 (64-bit x86)** ISO build. The lightweight desktop is intended to suit older computers and HDD-based systems, but performance depends on the processor, RAM, graphics and drive condition. No minimum or recommended hardware specification has yet been formally validated.

Debian Bookworm compatibility is the baseline. Hardware support also depends on firmware availability and the specific device.

## 🚀 Build an ISO

The repository includes a GitHub Actions workflow at `.github/workflows/build.yml`.

1. Open the repository's **Actions** tab.
2. Select **Build MOS (Mighty OS)**.
3. Run the workflow with **Run workflow**, or push a change to the `main` branch.
4. When the workflow succeeds, check the workflow run and the linked GitHub prerelease for the ISO.

The workflow uses a Debian Bookworm container and `live-build`, targets `amd64`, and is configured to publish a prerelease named **M-OS LINUX v0.1 alpha**. Builds are experimental; a workflow file being present does not mean every run has completed successfully.

## 📁 Repository layout

```text
M-OS/
├── .github/
│   └── workflows/
│       └── build.yml                 # GitHub Actions ISO build/release workflow
├── assets/
│   ├── bg1.jpg ... bg9.jpg           # Background images
│   ├── bg10.png                      # Additional background
│   └── boot.jpg                      # GRUB background artwork
├── config/
│   ├── includes.chroot/
│   │   └── etc/skel/                 # Default user settings
│   │       ├── .bashrc
│   │       └── .config/
│   │           ├── fastfetch/
│   │           ├── gtk-3.0/
│   │           └── xfce4/panel/
│   └── package-list/
│       ├── mos-core.list.chroot      # Package manifest
│       └── includes.chroot/          # Additional system configuration files
├── boot.jpg                          # Additional boot artwork
├── wallpaper.jpg                     # Additional wallpaper
└── README.md
```

## 🛣️ Roadmap

- [x] Debian Bookworm base and AMD64 live-build workflow configuration
- [x] XFCE/Openbox desktop components and custom GTK styling
- [x] MOS background and GRUB artwork
- [x] Flatpak package and Flathub setup service files
- [ ] Verify repeatable ISO builds from a clean GitHub Actions run
- [ ] Validate Flatpak/Flathub setup on a freshly installed ISO
- [ ] Test AppImages across common runtime types
- [ ] Add and test a proper looping boot animation
- [ ] Publish verified minimum/recommended hardware requirements
- [ ] Expand desktop polish, installer testing and release documentation

## 🤝 Contributing

Issues, testing reports and pull requests are welcome. Please include the ISO build link, hardware details and relevant logs when reporting a build or hardware problem.

## 📄 License

Check the repository for the applicable license before redistributing or modifying M-OS.

---

<p align="center">
  Made with care in Bangladesh 🇧🇩
</p>
