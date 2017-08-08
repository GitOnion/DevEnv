alias ll="ls -al"

# Prevent a typo that occurs far too often
alias gt=git

# Automatically add match highlighting to grep
alias grep="grep --color=auto"

# Shortcut to see the procs you're running
alias myprocs="ps aux | grep -v grep | grep -v \"ps aux\" | grep -P \"^$(whoami)\s+\d+\""

# shortcut for laziness
alias ..="cd .."

platform=$(uname)
mac=false
linux=false
unknown=false

if [ $platform = 'Darwin' ]; then
    platform='osx'
    mac=true
elif [ $platform = 'Linux' ]; then
    platform='linux'
    linux=true
else
    platform='unknown'
    unknown=true
fi

if [ $mac = true ]; then
    # On mac, the ls alias to make the colors look pretty is different than on linux
    alias ls="ls -alGFh"
fi

if [ $linux = true ]; then
    # On linux, the ls alias to make the colors look pretty is different than on mac
    alias ls='ls --color=auto -alFh'
fi
