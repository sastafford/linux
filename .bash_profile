# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
JAVA_HOME=/usr/java/jdk1.8.0_102

PATH=$JAVA_HOME/bin:$HOME/bin:$PATH

export PATH
