# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)
source $ZSH/oh-my-zsh.sh

# Activate other plugins.
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/Users/dylan/.local/bin:$PATH"

# Load custom configs.
source ~/.profile
