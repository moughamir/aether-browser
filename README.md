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

## 🧱 Build (Arch Linux)

Follow these steps to build Aether Browser from source:

```bash
sudo pacman -S git python nodejs clang llvm mold cbindgen rustup autoconf2.13 \
  pkgconf gtk3 dbus-glib alsa-lib mesa libvpx nspr nss unzip zip
rustup default stable

git clone https://github.com/moughamir/aether-browser.git
cd aether-browser
./scripts/build.sh
./scripts/run-dev.sh
```

The build process uses [`scripts/build.sh`](scripts/build.sh) for compilation and [`scripts/run-dev.sh`](scripts/run-dev.sh) to launch the development version.

---

## ⚙️ Branding

Branding files are located in [`branding/aether/`](branding/aether/).  
Rebranding is required to comply with Mozilla trademark policy.

---

## 🔬 Hardware Integration

For Raspberry Pi 5 setups with **AI HAT+** or **AI Kit**:
- Hailo NPU is used for local inference tasks
- CIEL layer connects via `/dev/hailo` to Rust microservice (planned for `src/ai/`)

---

## 🧩 Credits

Based on **Mozilla Firefox** ([MPL 2.0](LICENSE))  
Mozilla and Firefox are trademarks of Mozilla Foundation.  
© 2025 Moughamir Labs under the CIL/CIEL initiative.
