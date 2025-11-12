# 🧭 Aether Browser

Aether Browser is a minimalist, developer-oriented fork of Mozilla Firefox —  
part of the **CIL/CIEL (Cognitive Internet Layer)** initiative.

---

## ✨ Features
- Minimalist UI with Command Palette (VS Code–style)
- Tree Tabs and Containerized Links
- Developer & Web Research Focus
- Native support for AI-assisted browsing via **Raspberry Pi 5 + Hailo NPU**
- 100% open source under MPL 2.0, preserving Mozilla credits and trademarks

---

## 🧱 Build (Arch Linux)
```bash
sudo pacman -S git python nodejs clang llvm mold cbindgen rustup autoconf2.13 \
  pkgconf gtk3 dbus-glib alsa-lib mesa libvpx nspr nss unzip zip
rustup default stable

git clone https://github.com/moughamir/aether-browser.git
cd aether-browser
./scripts/build.sh
./scripts/run-dev.sh
```

---

## ⚙️ Branding
Branding is located in `branding/aether`.  
Rebranding is required to comply with Mozilla trademark policy.

---

## 🔬 Hardware Integration
For Raspberry Pi 5 setups with **AI HAT+** or **AI Kit**:
- Hailo NPU is used for local inference tasks
- CIEL layer connects via `/dev/hailo` to Rust microservice (`src/ai/`)

---

## 🧩 Credits
Based on **Mozilla Firefox (MPL 2.0)**  
Mozilla and Firefox are trademarks of Mozilla Foundation.  
© 2025 Moughamir Labs under the CIL/CIEL initiative.
