# ~/.config/zsh/history.zsh

HISTFILE="$HOME/.config/zsh/.zsh_history"
HISTSIZE=5000
SAVEHIST=5000

setopt sharehistory
setopt histignorealldups
setopt incappendhistory
