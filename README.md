# bginbey's dotfiles

## Minimal features:
- zshrc (with antigen)
- antigen
- nvim config neovim-init.vim (.config/nvim/init.vim)
- nvim plugins neovim-plugins.vim (copy to .local/share/nvim/site/autoload)
- gitconfig
- OS X customisations

# Installation


#### NeoVim
- Open and run `:PlugInstall`
- Compile YouCompleteMe
```bash
~/nvim -c 'PlugInstall|qa!' \
  && ~/.local/share/nvim/plugged/YouCompleteMe/install.py \
  --clang-completer
``` 
