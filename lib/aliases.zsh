# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'
alias la='ls -lA'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

# Other Aliases
alias cdp='cd ~/Programming/'
alias cdd='cd ~/Dropbox'
alias cdc="cd /home/ben/Dropbox/Documents/Master/M2/Q1"
alias pinghome='ping bendaccache.dyndns-server.com'
alias ll='ls -l'
alias rmr='rm -r'

if [ -x /usr/bin/browsed ] ; then
    alias browsed='browsed -hc'
fi

if [ -x /usr/bin/chromium ] ; then
    alias drive="chromium --app=http://drive.google.com"
fi

if [ -x /usr/bin/wine ] ; then
    alias airport="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/AirPort/APUtil.exe"
fi

if [ -x /usr/bin/google-translate ] ; then
    alias translate="google-translate"
fi

if [ -x /usr/bin/tmux ] ; then
    alias tmux="TERM=screen-256color-bce tmux"
fi
