export DOTFILES="~/Git/repositories/private/dotfiles/src/MacOS"
export EDITOR='vim'
export GOPATH=$HOME/Git/go
export LANG=en_US.UTF-8
export MANPATH="/usr/local/man:$MANPATH"
export NVM_DIR="$HOME/.nvm"
export UPDATE_ZSH_DAYS=2
export ZSH="/Users/rabl/.oh-my-zsh"

HIST_STAMPS="mm/dd/yyyy"
ZSH_THEME="random"
ZSH_THEME_RANDOM_CANDIDATES=( "af-magic" "cloud" )

plugins=(
	ansible
	cask
	colored-man-pages
	docker
	docker-compose
	fzf
    python
	golang
	gpg-agent
)

source $ZSH/oh-my-zsh.sh

# Enable GPG Agent for ssh
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh
 gpgconf --launch gpg-agent


# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

  # This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


# Overwrites
alias grep='ggrep' # requires -->  brew insall grep

# Listing
alias l.='ls -A | egrep "^\."'
alias l='ls -l'
alias la='ls -a'
alias ll='ls -laht' # The best one

# Git
alias g='git'
alias ga="git add $@"
alias gaa='git add .'
alias gbd='git branch -d $@'
alias gc='git commit'
alias gch='git checkout'
alias gchb='git checkout -b $@'
alias gcl="git clone $1"
alias gcm='git commit -m "$@"'
alias gcp='git commit -p'
alias gd='git diff'
alias gp='git push'
alias gpl='git pull'
alias gpm='git push origin master'
alias gs='git status'

# Dotfiles
alias sz='source $HOME/.zshrc'
alias vv='vim $DOTFILES/.vimrc'
alias vz='vim $DOTFILES/.zshrc'

# Fix obvious typo's
alias bew='brew'
alias bre='brew'
alias cd..='cd ..'
alias pdw='pdw'

# Brew fomulae and casks
alias bci="brew cask install $@"
alias bcr="brew cask uninstall $@"
alias bi="brew install $@"
alias bl="brew list"
alias br="brew uninstall $@"
alias bs="brew search $1"
alias bu="brew update"
alias buu="brew upgrade $@"

# readbale df output
alias df='df -H'

# function
pep8() {
    autopep8 --in-place --aggressive --aggressive $@
}

yaml2json() {
    python3 -c 'import sys, yaml, json; json.dump(yaml.safe_load(sys.stdin), sys.stdout, indent=4)'
}

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
