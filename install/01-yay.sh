# Install Yay
sudo pacman -S --noconfirm go
sudo pacman -S --noconfirm --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

echo -e "\nInstalled: Yay"