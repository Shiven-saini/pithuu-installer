## Pithuu-Installer
An installer framework based upon calamares framework.

## Build

Make sure all the dependencies are satisfied.
```bash
pacman -S --needed boost boost-libs yaml-cpp python python-jsonschema python-yaml kcoreaddons
kconfig ki18n kiconthemes kpmcore solid qt6-base qt6-svg qt6-tools extra-cmake-modules git
hwinfo polkit-qt6 squashfs-tools libpwquality
```

Get the source code :-
```bash
git clone https://github.com/Shiven-saini/pithuu-installer.git
cd pithuu-installer
```

Compile using cmake and make :-

```bash
mkdir build && cd build/
cmake -DCMAKE_BUILD_TYPE=Debug ..
make -j$(nproc)
sudo make install
```

---
Contact Me :-

Shiven Saini</br>
shiven.career@proton.me
