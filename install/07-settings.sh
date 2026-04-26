# Configuration Settings

# Remove all .config that might clash
rm -rf ~/.config/nvim ~/.config/kitty ~/.config/waybar ~/.config/wlogout ~/.config/wofi ~/.config/dunst 2>/dev/null

# Copy all .config files to .config
cp -r config/.config/* ~/.config

# -----------------------------------------------------------------

# Install Thunar fixes/settings

CONFIG_DIR="/home/$USER/git/arch-linux-install/config/thunar"

# Settings.ini
if [ -f "$CONFIG_DIR/settings.ini" ]; then
    sudo cp "$CONFIG_DIR/settings.ini" /usr/share/gtk-3.0/
else
    echo "Warning: $CONFIG_DIR/settings.ini not found."
fi

# helpers.rc
if [ -f "$CONFIG_DIR/helpers.rc" ]; then
    sudo cp "$CONFIG_DIR/helpers.rc" ~/.config/xfce4/helpers.rc
else
    echo "Warning: $CONFIG_DIR/helpers.rc not found."
fi

echo -e "\nInstalled: Thunar Settings"