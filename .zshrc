export ZSH="$HOME/.oh-my-zsh"
#ZSH_THEME="robbyrussell"
#plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# oh my posh theme
eval "$(oh-my-posh init zsh --config /home/manu/.dotfiles/1_shell.omp.json)"

# Path
export PATH=/home/manu/.local/bin:$PATH

# Aliases 
alias ls="exa --icons"
alias lg="lazygit"
alias yt="yt-dlp -x --audio-format mp3"


# Node version manager stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/home/manu/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/manu/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
