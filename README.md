# Dotfiles

## Minimal features:
- zshrc with antigen
- nvim config neovim-init.vim 
- nvim plugins neovim-plugins.vim 
- gitconfig
- OS X customisations

## Installation
- Use [this Ansible Playbook](https://github.com/bginbey/mac-dev-playbook)

## TODO: For Ansible Playbook
#### NeoVim extra setup steps
```bash
# Symlink .neovim-init.vim to Neovim's default init.vim location
ln -s ~/.neovim-init.vim ~/.config/nvim/init.vim

# Clone plug.vim from github to Neovim's autoload directory
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Open Neovim and install vim-plug plugins
~/nvim -c 'PlugInstall|qa!'

# Compile YouCompleteMe
~/.local/share/nvim/plugged/YouCompleteMe/install.py \
  --clang-completer
``` 
