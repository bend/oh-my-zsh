# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="b42"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Here the history-substring-search plugin must be enabled after the vi-mode plugin
plugins=(git gem ruby ssh svn cloudapp ecp virtualbox wolfram lipsum vi-mode history-substring-search tmux ) 

source $ZSH/oh-my-zsh.sh

# Completion verbose please
zstyle ':completion:*' verbose true

# Completion for kill
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Speed up completion via cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Auto complete to previous dirs
# cd -<TAB>
setopt autopushd               # automatically append dirs to the push/pop list
setopt pushdignoredups         # and don't duplicate them

# Personnal Settings
export PAGER='less'
export EDITOR='vim'
export VISUAL=vim

# Exports
export PATH=/home/benoit/.ccache/bin:$PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/usr/texbin:/usr/X11/bin:/usr/X11R6/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/root/.gem/ruby/1.9.1/bin:$PATH
export PATH=~/.oh-my-zsh/scripts:$PATH
export PATH=~/local/bin:$PATH

export LSCOLORS="BxGxcxdxCxegedabagacad"

# Key binding
bindkey    "^[3;5~"         delete-char
bindkey    "^[[3~"          delete-char
# Backspace for vi-mode
bindkey    '^?'             backward-delete-char

# Locales
#export LC_CTYPE="fr_FR.UTF-8"

export PERL_LOCAL_LIB_ROOT="/home/ben/perl5";
export PERL_MB_OPT="--install_base /home/ben/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/ben/perl5";
export PERL5LIB="/home/ben/perl5/lib/perl5/x86_64-linux-thread-multi:/home/ben/perl5/lib/perl5";
export PATH="/home/ben/perl5/bin:$PATH";
export MAKEFLAGS='-j8'


