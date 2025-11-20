# 🧭 Aether Browser

Aether Browser is a minimalist, developer-oriented fork of Mozilla Firefox — part of the **CIL/CIEL (Cognitive Internet Layer)** initiative.

---

## ✨ Features

- **Minimalist UI** with Command Palette (VS Code-style)
- **Tree Tabs** and Containerized Links for better organization
- **Developer & Web Research Focus** with enhanced productivity tools
- **Native AI-assisted browsing** via Raspberry Pi 5 + Hailo NPU
- **100% open source** under MPL 2.0, preserving Mozilla credits and trademarks

---

## 🧱 Build Instructions

### Prerequisites (Arch Linux)

Follow these steps to build Aether Browser from source:

```bash
sudo pacman -S git python nodejs clang llvm mold cbindgen rustup autoconf2.13 \
  pkgconf gtk3 dbus-glib alsa-lib mesa libvpx nspr nss unzip zip
rustup default stable
```

### Building from Source

```bash
git clone https://github.com/moughamir/aether-browser.git
cd aether-browser
./scripts/build.sh
./scripts/run-dev.sh
```

The build process uses [`scripts/build.sh`](scripts/build.sh) for compilation and [`scripts/run-dev.sh`](scripts/run-dev.sh) to launch the development version.

---

## ⚙️ Branding & Customization

All Aether Browser branding assets are located in the [`branding/aether/`](branding/aether/) directory. This includes:

- Application icons and logos
- Splash screens and UI elements  
- Brand-specific configuration files

**Note**: Rebranding is required to comply with [Mozilla's trademark policy](https://www.mozilla.org/en-US/foundation/trademarks/policy/) when creating Firefox-based browsers.

---

## 🔬 Hardware Integration

### Raspberry Pi 5 + AI Acceleration

Aether Browser is optimized for Raspberry Pi 5 setups with **AI HAT+** or **AI Kit**:

- **Hailo NPU**: Provides local AI inference for enhanced browsing features
- **CIEL Integration**: Connects via `/dev/hailo` to dedicated Rust microservices
- **Planned Features**: AI-assisted content analysis, smart bookmarking, and contextual suggestions

> 💡 **Coming Soon**: Full AI integration will be available in the [`src/ai/`](src/ai/) directory

---

## 🚀 Getting Started

1. **Check Prerequisites**: Ensure you have all required dependencies installed (see [Build Instructions](#build-instructions))
2. **Clone & Build**: Follow the build steps above to compile from source
3. **Explore Features**: Try the Command Palette (Ctrl+Shift+P) and Tree Tabs
4. **Customize**: Modify branding and preferences to suit your workflow

## 🤝 Contributing

We welcome contributions to Aether Browser! Whether it's:
- 🐛 Bug reports and fixes
- ✨ New feature implementations  
- 📚 Documentation improvements
- 🎨 UI/UX enhancements

Please feel free to open issues and submit pull requests.

---

## 🧩 Credits & License

**Aether Browser** is based on **Mozilla Firefox** and distributed under the [Mozilla Public License 2.0](LICENSE).

- Mozilla and Firefox are trademarks of the Mozilla Foundation
- Developed by Moughamir Labs as part of the **CIL/CIEL (Cognitive Internet Layer)** initiative
- © 2025 All rights reserved
