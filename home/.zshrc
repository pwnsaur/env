# zmodload zsh/zprof

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

#atlas cli
export fpath=(~/.zsh/functions $fpath)
if [ -f ~/.zsh/functions/_atlas ]; then
  . ~/.zsh/functions/_atlas
fi

# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/kaspars/.zshrc'
autoload -Uz compinit && compinit
# End of lines added by compinstall

# zsh plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-completions/zsh-completions.plugin.zsh

# LSD
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# bindings
bindkey  "^[[H"  beginning-of-line
bindkey  "^[[F"  end-of-line
bindkey  "^[[3~" delete-char
bindkey '^[[A'   history-beginning-search-backward
bindkey '^[[B'   history-beginning-search-forward

# aliases
alias rm='rm -i'
alias mkdir='mkdir -p'
alias h='history'
alias which='type -a'
alias ..='cd ..'
alias ...='cd ../..'
alias c='clear'
alias ccd='clear && cd'

# default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# exercism cli
if [ -f ~/.zsh/functions/exercism_completion.zsh ]; then
  . ~/.zsh/functions/exercism_completion.zsh
fi

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

eval "$(starship init zsh)"

# zprof
