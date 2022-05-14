export GOPATH=$HOME/golang
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# use .localrc for local machine configs.
if [ -f "$HOME/.localrc" ]; then
	. "$HOME/.localrc"
fi

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ddg="BROWSER=/Applications/Firefox.app/Contents/MacOS/firefox-bin ddgr"
alias cdqt="cd ~/src/golang/src/github.com/qlik-trial"
alias ls="ls -G"
alias lbe-stage="echo https://lef.us-east-1.lef-stage.k8s.qlikcloud.io"
alias lbe-ci="echo https://lef.us-west-2.lef-stage.k8s.qlikcloud.io"
alias lbe-prod="echo https://license.qlikcloud.com"
alias sessionstage="echo $SESSIONSTAGE"
alias sessionprod="echo $SESSIONPROD"

autoload -Uz compinit && compinit
# Autoload zsh add-zsh-hook and vcs_info functions (-U autoload w/o substition, -z use zsh style)
autoload -Uz add-zsh-hook vcs_info
# Enable substitution in the prompt.
setopt prompt_subst
# Run vcs_info just before a prompt is displayed (precmd)
add-zsh-hook precmd vcs_info
# add ${vcs_info_msg_0} to the prompt
# e.g. here we add the Git information in red  
PROMPT='%1~ %F{red}${vcs_info_msg_0_}%f➜ '

# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '(%b%u%c) '
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c) '
