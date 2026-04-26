<div align="center">
<img src="https://archlinux.org/static/logos/archlinux-logo-dark-90dpi.png" alt="Arch linux logo"/>
</div>

# Installation

- `git clone https://github.com/Klon3r/arch-linux-install.git`
- `cd arch-linux-install`
- `sudo chmod +x ./install.sh`

## Printer (CUPS)

- `http://localhost:631`
- Administration > Add printer

## Chroot

1. ### Get iso/usb ready

- [Download iso](https://archlinux.org/download/)
- Place iso onto usb via [ventoy](https://www.ventoy.net/en/index.html)
- Boot into usb via bios

2. ### Chroot into setup

- `sudo mount /dev/nvme0n1p2 /mnt`
- `sudo mount /dev/nvme0n1p1 /mnt/boot`
- `sudo arch-chroot /mnt`

## Xbox Controller (USB Dongle)

- `sudo pacman -S linux-headers`
- `yay -S xone-dkms-git xone-dongle-firmware`

## Clean up

- `yay -Yc` Clean unneeded dependencies
- `sudo pacman -Sc` - Remove all cached packages that are not currently installed
- `~/.cache` - Remove .cache to help clean up

## Fixes
<details>
  <summary>AMDGPU - High Performance on Boot (Fix 144Hz Ultrawide Artifacts)</summary>


- If you have an AMD RX 7600 or similar RDNA3 card, intermittent white/artifact lines can appear at high refresh rates (e.g., 144Hz ultrawide) due to dynamic power management (DPM) downclocking GPU and VRAM.  
The following steps force **high performance** to fix this.


### 1. Create a udev rule

Open a new udev rule file:

```bash
sudo nvim /etc/udev/rules.d/30-amdgpu-high-performance.rules
```

### 2. Paste the following
```
ACTION=="add", SUBSYSTEM=="drm", DRIVERS=="amdgpu", ATTR{power_dpm_force_performance_level}="high"
```

### 3. Reload udev rules and trigger 
```bash
sudo udevadm control --reload
sudo udevadm trigger
```

### 4. Verify the setting
```
cat /sys/class/drm/card1/device/power_dpm_force_performance_level
```
- It should display
```ngix
high
```


</details>
  
