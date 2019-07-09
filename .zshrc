source ~/.antigenrc

# General aliases
alias vim="nvim"
alias theme="antigen theme"

# Git aliases
# Alias all hub commands to work with git
eval "$(hub alias -s)"
alias gitignore="cp ~/dotfiles/.gitignore . && echo '.gitignore added to current directory.'"

# Add aseprite CLI to Path
export PATH=$PATH:~/Library/Application\ Support/Steam/steamapps/common/Aseprite/Aseprite.app/Contents/MacOS/

# Init pyenv
# eval "$(pyenv init -)"
# use pyenv to install python versions
# use pipenv for new python projects
