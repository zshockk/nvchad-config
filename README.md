# Pre-requisites

- Neovim 0.11
- Nerd Font as your terminal font. *Mono fonts would work but icons will slightly look smaller*
- Ripgrep is required for grep searching with Telescope (OPTIONAL)
- GCC
- Make
- LazyGit *(Optional)*
- Delete old neovim folders

# Features

- Go Programming Language support
- Dockerfile support
- GitHub Actions and Workdlows support
- GitLab CI support

# Install 

## Linux/MacOS

```bash
git clone https://github.com/zshockk/nvim.git ~/.config/nvim && nvim
```

- Run `:MasonInstallAll ` command after lazy.nvim finishes downloading plugins
- Delete the `.git ` folder from nvim folder
- Learn customization of ui & base46 from `:h nvui`

## Visual Studio Code

Install [VSCode Neovim](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim)

Plugin `vscodevim` consumes a lot of resources, so `VSCode Neovim` is much better in performance, \
because it uses native **Neovim** calls instead of JavaScript emulation

Set up Visual Studio Code: 
- Press `cmd + shift + p`
- Choose `Preferences: Open User Settings (JSON)`
- Paste there everything from `.vscode/settings.json`

Set up Visual Studio Code mappings:
- Press `cmd + shift + p`
- Choose `Preferences: Open Keyboard Shrotcuts (JSON)`
- Paste there everything from `.vscode/keybindings.json`

# Uninstall

Linux/MacOS

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

**This repo is supposed to be used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

# Credits

1) Lazyvim starter https://github.com/LazyVim/starter as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!

