# Default 
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more=less
alias ll="ls -lrth"
alias la="ls -a"
alias lla="ll -a"

# Pacman and Yay
alias pi="sudo pacman -Syu"
alias pd="sudo pacman -Rs"
alias pf="sudo pacman -Qs"
alias pff="sudo pacman -Ss"
alias pc="sudo pacman -Sc"
alias yi="yay -Syu"
alias yc="yay -Sc"

# Vim
alias vim="nvim"
alias vi="nvim"

# Nordvpn
alias nconn="nordvpn connect France"
alias nd="nordvpn disconnect"
alias ns="nordvpn status"

# Misc
alias ':q'="exit"
alias ipa="ip -br -c a"
alias nf="neofetch"
alias myip="curl ifconfig.co"

# Systemctl
alias scst='sudo systemctl start'
alias scsp='sudo systemctl stop'
alias scrl='sudo systemctl reload'
alias scrt='sudo systemctl restart'
alias sce='sudo systemctl enable'
alias scd='sudo systemctl disable'
alias scs='systemctl status'
alias scsw='systemctl show'
alias sclu='systemctl list-units'
alias scluf='systemctl list-unit-files'
alias sclt='systemctl list-timers'
alias scc='systemctl cat'
alias scie='systemctl is-enabled'

# Useful functions

ranger_cd() {
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi
    rm -f -- "$temp_file"
} 
bindkey -s '^O' 'ranger_cd\n'

ex  () # Archive Extractor
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

gccc() { # Fast compile one c source
	gcc -Wall -o "${1%.*}" "$1";
}

hh() {
	"$1" -h | less;
}

