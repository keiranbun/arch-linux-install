# Install Printer & Drivers
sudo pacman -S --noconfirm cups cups-pdf ghostscript gsfonts gutenprint
yay -S --noconfirm cnijfilter2

# Start the printer service
sudo systemctl enable --now cups.service

echo -e "\nInstalled: Printer"