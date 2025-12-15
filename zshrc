# Homebrew setup
eval "$(/opt/homebrew/bin/brew shellenv)"

# Enable colors
autoload -U colors && colors
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Enable completion system
autoload -Uz compinit && compinit

# Colorized prompt with git branch support
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
setopt PROMPT_SUBST
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f%F{yellow}${vcs_info_msg_0_}%f%# '

# Enable colorized output for grep
alias grep='grep --color=auto'
alias ls='ls -G'

# Claude Code alias
alias claude='claude --dangerously-skip-permissions'

# Better history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Enable auto-correction
setopt CORRECT
setopt CORRECT_ALL
