# Cursor

# Install Extensions
cursor --install-extension streetsidesoftware.code-spell-checker
cursor --install-extension dbaeumer.vscode-eslint
cursor --install-extension arturock.gitstash
cursor --install-extension github.github-vscode-theme
cursor --install-extension golang.go
cursor --install-extension ms-vscode.vscode-typescript-next
cursor --install-extension esbenp.prettier-vscode
cursor --install-extension bradlc.vscode-tailwindcss
cursor --install-extension vscodevim.vim
cursor --install-extension wayou.vscode-todo-highlight

# Copy settings/keybindings
cp config/cursor/keybindings.json ~/.config/Cursor/User
cp config/cursor/settings.json ~/.config/Cursor/User

echo -e "\nInstalled: Cursor + Extensions"
