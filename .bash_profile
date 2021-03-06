export PATH="~/bin:/usr/local/sbin:$PATH"

export EDITOR=nvim
export TERM=xterm-256color
export TZ=America/Los_Angeles

alias ll='ls -l'
alias la='ls -al'
alias rvim='nvim -u ~/.config/nvim/rust.vim'
alias svim='nvim -u ~/.config/nvim/scala.vim'
alias gvim='nvim -u ~/.config/nvim/go.vim'
alias vvim='nvim -u ~/.config/nvim/vue.vim'
alias pvim='nvim -u ~/.config/nvim/perl.vim'
alias mysql='/usr/local/opt/mysql-client/bin/mysql --defaults-extra-file=~/src/my.cnf'
alias todo='note -e ~/Sync/Notes/TODO.gpg'
alias cpass='find $PASSWORD_STORE_DIR | sed "s|$PASSWORD_STORE_DIR/||" | grep "\.gpg" | sed "s|\.gpg$||" | peco | xargs pass -c'

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="[\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]] \\$ "

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home

# pass
export PASSWORD_STORE_DIR=$HOME/Sync/Pass

#set -o vi
#bind -m vi-command 'Control-l: clear-screen'
#bind -m vi-insert 'Control-l: clear-screen'

# gnupg
export GPG_TTY=$(tty)
