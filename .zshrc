# Enable Powerlevel12k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# add the homebrew to path
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/lib:$PATH "
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

export GOPATH=$HOME/.go
export GOROOT=$(brew --prefix go)/libexec
export GOBIN=$GOPATH/bin

alias ls='ls --color'

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

# init the zplug
source /opt/homebrew/Cellar/zplug/2.4.2/init.zsh 

zplug "zsh-users/zsh-syntax-highlighting"
zplug "romkatv/powerlevel10k", as:theme, depth:1

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug update >/dev/null || echo "zplug update failed"
zplug load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
