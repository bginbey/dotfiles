# Dotfiles

## Minimal features:
- zshrc with antigen
- nvim config neovim-init.vim 
- nvim plugins neovim-plugins.vim 
- gitconfig
- OS X customisations

## Installation
- Use [this Ansible Playbook](https://github.com/bginbey/mac-dev-playbook)
or
- Manually create symbolic links for each file to the home directory
```bash
# Link all dotfiles to home directory
cd ~/dotfiles
ln -s .* ~

# For Neovim
cd ~
mkdir -p .config/nvim
ln -s ~/dotfiles/.neovim-init.vim ~/.config/nvim/init.vim
```

## TODO: For Ansible Playbook
#### OS X configuration
- Change caps lock key to ctrl on wired and bluetooth keyboards by default
```bash
``` 
