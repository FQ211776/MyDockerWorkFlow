# .bash_profile
# # # # # # # # # # # # # # # # # # # # # # # # # # # #
#    _             _                     __ _ _       #
#   | |__  __ _ __| |_     _ __ _ _ ___ / _(_) |___   #
#  _| '_ \/ _` (_-< ' \   | '_ \ '_/ _ \  _| | / -_)  #
# (_)_.__/\__,_/__/_||_|__| .__/_| \___/_| |_|_\___|  #
#                     |___|_|                         #
# # # # # # # # # # # # # # # # # # # # # # # # # # # #


#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases
#
#  Sections:
#  1.   Environment Configuration
#  2.   Make Terminal Better (remapping defaults and adding functionality)
#  3.   File and Folder Management
#  4.   Searching
#  5.   Process Management
#  6.   Networking
#  7.   System Operations & Information
#  8.   Web Development
#  9.   Reminders & Notes
#
#  ---------------------------------------------------------------------------


###############
### UTILITY ###
###############

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

if [ -f ~/.docker_aliases ]; then
        . ~/.docker_aliases
fi

if [ -f ~/.git_aliases ]; then
        . ~/.git_aliases
fi


###############
### EXPORTS ###
###############

export PATH=$PATH:.
export PATH=$PATH:$HOME/bin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#export JAVA_HOME=$(/usr/libexec/java_home)

#export MYSQL_HOME=/usr/local/mysql




###############
### ALIASES ###
###############

#alias start_mysql='sudo $MYSQL_HOME/bin/mysqld_safe &'
#alias stop_mysql='sudo $MYSQL_HOME/bin/mysqladmin shutdown'

alias cds=echo '"`pwd`" > ~/.cdsave'  #cd save : save where i am
alias cdb='cd "`cat ~/.cdsave`"' # cd back

# Compare Contents of Two Directories with diff: diff -rq directory1 directory2
alias compare-folders=" diff -rq "

##
## ports
#   ------------------------------------------------------------
alias check_open_ports="lsof -Pi | grep LISTEN"
alias check_port="lsof -i :8888"
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias check_establish="lsof -i | grep -i estab"
# Ethernet Address
alias get_macaddress=" networksetup -getmacaddress Wi-Fi "
# public IP
alias ip=" curl -s http://wtfismyip.com/text "
# public IP
alias ip2=" curl l2.io/ip "
# header
alias header=" curl -I g.cn "
alias validate_json=' curl -s "http://feeds.delicious.com/v2/json?count=5" | python -m json.tool | less -R '
# flushDNS:     Flush out the DNS Cache
alias flushDNS=" dscacheutil -flushcache "
# lsock:        Display open sockets
alias lsock=" sudo /usr/sbin/lsof -i -P "
# lsockU:       Display only open UDP sockets
alias lsockU=" sudo /usr/sbin/lsof -nP | grep UDP "
# lsockT:       Display only open TCP sockets
alias lsockT=" sudo /usr/sbin/lsof -nP | grep TCP "
# ipInfo0:      Get info on connections for en0
alias ipInfo0=" ipconfig getpacket en0 "
 # ipInfo1:      Get info on connections for en1
alias ipInfo1=" ipconfig getpacket en1 "
 # openPorts:    All listening connections
alias openPorts='sudo lsof -i | grep LISTEN'
# showBlocked:  All ipfw rules inc/ blocked IPs
alias showBlocked='sudo ipfw list'
alias crazy=" LC_ALL=C tr -c '[:digit:]' ' ' < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR='1;32' grep --color '[^ ]' "
# alias matrix=" yes 'c=(" " "  " "   " 0 1); printf "${c[RANDOM%5]}"' | bash "
alias make_svg=' open http://www.vectorization.org/es.html '
# Get the HTTP Headers of a URL
alias url-header=" curl -I --http2 https://www.ubuntu.com/ "

##
## BASIC npm COMMANDS
#   ------------------------------------------------------------
# List packages in cache
alias n-ls=" npm cache ls "

# Clean npm cache
# clean: Delete all data out of the cache folder
# verify: Garbage collecting any unneeded data
alias n-clean=" npm cache clean -f && clean cache verify"

# runs a set of checks to ensure that your npm installation
alias n-doc=" npm doctor "

# Check for outdated packages in local
alias n-check=" npm outdated "

# Check for outdated packages in Global
alias n-check-g=" npm outdated -g "

# Check for outdated packages in Production only
alias n-check-p=" npm outdated --prod "

# List installed packages: Local with tree
alias n-ls=" npm ls "

# List installed packages: only parents
alias n-ld0=" npm ls --depth=0 "

# List installed packages: Global - only parent
alias n-lgd0=" npm ls -g --depth=0 "

# List installed packages: List production packages only
alias n-lp=" npm ls --prod "

# Remove un-used packages from node_modules folder
alias n-prune=" npm prune "

# Remove all devDependencies from node_modules
alias n-prune-p=" npm prune --production "

# Update all packages listed in package.json
alias n-up=" npm update "

# Remove duplicate packages from node_modules
alias n-rm-dupli" npm dedupe "

# Lockdown package versions for production
alias n-lock=" npm shrinkwrap "

# Lockdown package versions for productiona ans also include devDependencies
alias n-lock-dev=" npm shrinkwrap --dev "

# Run npm in production (will not download devDependencies)
alias n-prod=" npm install --only=production "

# install dependency specific version
alias n-pick=" npm install -g npm@3.2.1 "

# list available scripts
alias n-run=" npm run "

# updating and checking for outdated stuff
alias n-audit=" npm audit "

# turn off Security vulnerabilities found with suggested updates
alias n-no-audit=" npm set audit false "

# Security vulnerabilities found with suggested updates
alias n-audit-fix=" npm audit fix "

# list npm configuration files
alias n-config-ls=" npm config list -l "

# Opens the config file in an editor
alias n-config-edit=" npm config edit "

# Opens the global config file in an editor
alias n-config-edit-g=" npm config edit --global"



##
## Disk Use Information
#   ------------------------------------------------------------
# disk use
alias d-use=" du -h * "
# displays disk usage information directory
alias d-use-ts=" du -sh * "
# displays disk usage information for each file and directory
alias d-use-file=" du -ck * | sort -rn | head -11 "


#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias show_options='shopt'                  # Show_options: display bash options settings
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash



###############
### FUNCTIONS #
###############

# Download a website
dl-website() {
    polite=''

    if [[ $* == *--polite* ]]; then
        polite="--wait=2 --limit-rate=50K"
    fi

    wget --recursive --page-requisites --convert-links --user-agent="Mozilla" $polite "$1";
}