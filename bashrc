# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

############ custom settings ################
### for GPG ###
if [ -f "${HOME}/.gpg-agent-info" ]; then
	. "${HOME}/.gpg-agent-info"
	export GPG_AGENT_INFO
	export SSH_AUTH_SOCK
	export SSH_AGENT_PID
fi
export GPG_TTY=$(tty)

### for Arch Linux ###
 export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
 gpg-connect-agent updatestartuptty /bye

### for linux ###
# export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"
# gpgconf --launch gpg-agent



### GCC 7.3 ###
#export PATH=/tool/gnu/gcc/7.3/bin:/tool/gnu/binutils/2.31.1/bin:$PATH
export PATH=/tool/gnu/gcc/7.3/bin:$PATH
#export LD_LIBRARY_PATH=/tool/gnu/gcc/7.3/lib64:/tool/gnu/mpc/1.1.0/lib:/tool/gnu/mpfr/4.0.1/lib:/tool/gnu/gmp/6.1.2/lib:/tool/gnu/isl/0.20/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/tool/gnu/gcc/7.3/lib64:$LD_LIBRARY_PATH

### Alpine #
export PATH=$PATH:/tool/app/alpine/2.21/bin
############# End of custom settings ################
