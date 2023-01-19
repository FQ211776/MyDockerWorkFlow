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
#  1.   
#  2.   
#  3.   
#  4.   
#  5.   
#  6.   
#  7.   
#  8.   
#  9.   
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

export EDITOR="code --wait"


export PATH=$PATH:.
export PATH=$PATH:$HOME/bin

# wrappers to run commands installed in JuNest directly from host:
export PATH=~/.local/share/junest/bin:$PATH
export PATH="$PATH:~/.junest/usr/bin_wrappers"


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#export JAVA_HOME=$(/usr/libexec/java_home)
# JAVA_HOME=/home/nunu/.sdkman/candidates/java/current
#export MYSQL_HOME=/usr/local/mysql

#alias start_mysql='sudo $MYSQL_HOME/bin/mysqld_safe &'
#alias stop_mysql='sudo $MYSQL_HOME/bin/mysqladmin shutdown'
