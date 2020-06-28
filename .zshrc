export ZSH_CONFIG="$HOME/.config/zsh"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""

# profile
[[ -f "$HOME/.zprofile" ]] \
    && source "$HOME/.zprofile"

plugins=(
  bgnotify
  command-not-found
  git
  git-extras
  yarn
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
  z
)

# oh-my-zsh
[[ -f "$ZSH/oh-my-zsh.sh" ]] \
    && source "$ZSH/oh-my-zsh.sh"

# options
setopt hist_ignore_space
setopt append_history
setopt extended_history
setopt hash_list_all

# aliases
[[ -f "$ZSH_CONFIG/alias.zsh" ]] \
    && source "$ZSH_CONFIG/alias.zsh"

# fzf
[[ -f "$ZSH_CONFIG/fzf.zsh" ]] \
    && source "$ZSH_CONFIG/fzf.zsh"

# functions
[[ -f "$ZSH_CONFIG/functions.zsh" ]] \
    && source "$ZSH_CONFIG/functions.zsh"

# key_bindings
[[ -f "$ZSH_CONFIG/key_bindings.zsh" ]] \
    && source "$ZSH_CONFIG/key_bindings.zsh"

# direnv
eval "$(direnv hook zsh)"

# prompt
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure
