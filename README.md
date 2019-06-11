# bginbey's dotfiles

## Minimal features:
- zshrc with antigen
- nvim config neovim-init.vim 
- nvim plugins neovim-plugins.vim 
- gitconfig
- OS X customisations

## Installation
- Use [this Ansible Playbook](https://github.com/bginbey/mac-config-management)

#### TODO: For Ansible Playbook
- copy neovim-init.vim to .config/nvim/init.vim
- copy vim-plug's plug.vim from github to .local/share/nvim/site/autoload/plug.vim
```bash
curl -fLo ~/.config/nvim/init.vim --create-dirs \
    https://raw.githubusercontent.com/bginbey/dotfiles/master/neovim-init.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
#### NeoVim
- Open and run `:PlugInstall`
- Compile YouCompleteMe
```bash
~/nvim -c 'PlugInstall|qa!' \
  && ~/.local/share/nvim/plugged/YouCompleteMe/install.py \
  --clang-completer
``` 
