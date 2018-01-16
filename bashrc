#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export HISTFILESIZE=100000
export HISTSIZE=10000

# for GPG
if [ -f "${HOME}/.gpg-agent-info" ]; then
	. "${HOME}/.gpg-agent-info"
	export GPG_AGENT_INFO
	export SSH_AUTH_SOCK
	export SSH_AGENT_PID
fi

export GPG_TTY=$(tty)
# for Arch Linux
 export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
 gpg-connect-agent updatestartuptty /bye

# for linux
# export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"
# gpgconf --launch gpg-agent
