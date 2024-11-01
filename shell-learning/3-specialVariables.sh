#!/bin/sh

# $ character represents the process ID number, or PID, of the current shell
echo "\$$ $$"

# 0 the filename of the current script
echo "\$0 $0"

# n correspond to the arguments with which a script was invoked
echo "\$1 $1"
echo "\$2 $2"

# # the number of arguments supplied to a script
echo "\$# $#"

# the "$*" special parameter takes the entire list as one argument with spaces between 
# * all the arguments are double quoted
# if a script recieves two arguments, $* is equivalent to $1 $2
echo "\$* $*"

for TOKEN in $*
do 
	echo $TOKEN
done

# the "$@" special parameter takes the entire list and separates it into separate arguments.
# @ all the arguments are individually double quoted
echo "\$@ $@"

for TOKEN in $@
do
	echo $TOKEN
done

# ? the exit status of the last command executed
# if echo $TOKNE is successful, return 0 else return 1
echo "\$? $?"

# ! the process number of the last background command
echo "\$! $!"



