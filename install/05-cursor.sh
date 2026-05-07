# Visual Studio Code

# Install Extensions
cursor --install-extension vscodevim.vim
cursor --install-extension arturock.gitstash
cursor --install-extension dbaeumer.vscode-eslint
cursor --install-extension bradlc.vscode-tailwindcss
cursor --install-extension pkief.material-icon-theme
cursor --install-extension github.github-vscode-theme
cursor --install-extension wayou.vscode-todo-highlight
cursor  --install-extension esbenp.prettier-vscode@11.0.3 # specific version since cursor has a linting issue with newest
cursor --install-extension ms-vscode.vscode-typescript-next
cursor --install-extension streetsidesoftware.code-spell-checker

# Copy settings/keybindings
cp config/cursor/keybindings.json ~/.config/Cursor/User
cp config/cursor/settings.json ~/.config/Cursor/User

echo -e "\nInstalled: Visual Studio Code + Extensions"
