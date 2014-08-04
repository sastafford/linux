# .bashrc
# The .bashrc file is executed when you run bash using an interactive shell
# (e.g., su, bash). The .bash_profile (or .profile) file is executed
# during a login shell (e.g., su -, bash --login).
 
#============================================================
# SOURCE FILES
#============================================================
 
# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi
 
# Enable programmable completion features
if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi
 
#============================================================
# COLORS
#============================================================
 
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'              # No Color
# Sample Command using color: echo -e "${CYAN}This is BASH ${RED}${BASH_VERSION%.*}${CYAN} - DISPLAY on ${RED}$DISPLAY${NC}\n"
 
#===============================================================
# ALIASES
#===============================================================
 
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# Prevents accidentally clobbering files.
alias mkdir='mkdir -p'
 
alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias print='/usr/bin/lp -o nobanner -d $LPDEST' # Assumes LPDEST is defined (default printer)
alias pjet='enscript -h -G -fCourier9 -d $LPDEST' # Pretty-print using enscript
alias du='du -kh'       # Makes a more readable output.
alias df='df -kTh'
 
alias mktar='tar -cvzf' # Compress and uncompress tar
alias untar='tar -xvzf'
alias netrestart='sudo invoke-rc.d networking restart'
 
# The 'ls' family (this assumes you use a recent GNU ls)
alias ll='ls -l --group-directories-first'
alias ls='ls -hF --color'  # add colors for filetype recognition
alias la='ls -Al'          # show hidden files
alias lx='ls -lXB'         # sort by extension
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lt='ls -ltr'         # sort by date, most recent last
alias lm='ls -al | more'    # pipe through 'more'
alias lr='ls -lR'          # recursive ls
alias tree='tree -Csu'     # nice alternative to 'recursive ls'
 
# If your version of 'ls' doesn't support --group-directories-first try this:
# function ll(){ ls -l "$@"| egrep "^d" ; ls -lXB "$@" 2&gt;&amp;-| \
#                egrep -v "^d|total "; }
 
# Tailoring 'less'
alias more='less'
export PAGER=less
#export LESSCHARSET='latin1'
#export LESSOPEN='|/usr/bin/lesspipe.sh %s 2&gt;&amp;-'
# Use this if lesspipe.sh exists
#export LESS='-i -N -w  -z-4 -g -e -M -X -F -R -P%t?f%f \
#:stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'