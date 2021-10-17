ZSH_THEME="powerlevel10k/powerlevel10k"


f [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export ZSH="/home/yehoshouad/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git gitfast z command-not-found  zsh-interactive-cd aws fzf helm zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
