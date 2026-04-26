# Visual Studio Code

# Install Extensions
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension dbaeumer.vscode-eslint
code --install-extension arturock.gitstash
code --install-extension github.github-vscode-theme
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension esbenp.prettier-vscode
code --install-extension bradlc.vscode-tailwindcss
code --install-extension vscodevim.vim
code --install-extension wayou.vscode-todo-highlight
code --install-extension pkief.material-icon-theme

# Copy settings/keybindings
cp config/vscode/keybindings.json ~/.config/Code/User
cp config/vscode/settings.json ~/.config/Code/User

echo -e "\nInstalled: Visual Studio Code + Extensions"
