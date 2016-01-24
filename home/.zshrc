# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

#export _Z_DATA=$HOME/.z/db
#. /home/lyh/.z/z.sh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="bira"
#ZSH_THEME="aussiegeek"
#ZSH_THEME="cloud"
#ZSH_THEME="gnzh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow sudo debian history-substring-search github svn zsh-syntax-highlighting sublime colored-man golang cp extract)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export LC_ALL=C
export GOROOT=~/.local/go
export GOBIN=$GOROOT/bin
export GOPATH=~/Works/Go
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:~/.local/bin:$GOBIN:~/.mongodb/bin

export PAGER='/usr/bin/less -s'
export BROWSER='/usr/bin/less -s'

export EDITOR="vim"
export LANG="en_US.UTF-8"

#set -o vi
alias emacs='LC_CTYPE="zh_CN.UTF-8" emacs'
alias goagent="python2 ~/Works/goagent/local/proxy.py &"
alias lt="~/Works/LightTable/deploy/LightTable &"
alias today='date +"%A, %B %-d, %Y"'
alias by="byobu-tmux 1>/dev/null"
alias http='python2 -m SimpleHTTPServer'
alias grep='grep -n --color=auto'
alias blog='cd ~/Works/gor/lyhopq.com'
alias panpdf="pandoc --template=$HOME/.pandoc/template.tex --latex-engine=xelatex"
alias pynb='ipython notebook --profile=lyh'

alias ariac="aria2c --enable-rpc --rpc-listen-all && chromium /opt/webui-aria2/index.html"

alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"

alias sudo='sudo '
alias vi='vim'
alias e='vim'
alias ll='ls -l'
alias la='ls -a'
alias -s html=vi
alias -s py=vi
alias -s js=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias py='ptipython --vi'
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

alias alert_helper='history|tail -n1|sed -e "s/^\s*[0-9]\+\s*//" -e "s/;\s*alert$//"'
alias alert='
set status=$?;
if [ $status = 0 ]; then
     notify-send -i /usr/share/icons/oxygen/32x32/apps/preferences-desktop-text-to-speech.png "[$status] $(alert_helper) Finished ^_^" ;
elif [ $status = 127 ]; then
     notify-send -i /usr/share/icons/oxygen/32x32/apps/preferences-desktop-text-to-speech.png "[$status] $(alert_helper) Command cannot be found ?_?" ;
else
     notify-send -i usr/share/icons/oxygen/32x32/apps/preferences-desktop-text-to-speech.png "[$status] $(alert_helper) Error &gt;_&lt;" ;
fi'

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;37m") \
		LESS_TERMCAP_md=$(printf "\e[1;37m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;47;30m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[0;36m") \
			man "$@"
}
