#!/bin/sh

# arithmetic operators
# all the arithmetic calculations are done using long integers
a=10
b=20
c=`expr $a + $b` # there must be spaces between operators and expressions
echo $c
c=`expr $a - $b` # the complete expression should be enclosed between ``, called the backtick
echo $c
c=`expr $a \* $b`
echo $c
c=`expr $a / $b`
echo $c
c=`expr $a % $b`
echo $c
a=$b
echo $a
[ $a == $b ] # [$a==$b] is incorrect
[ $a != $b ]

# relational operators
[ $a -eq $b ] # equal
[ $a -ne $b ] # not equal
[ $a -gt $b ] # greater than
[ $a -lt $b ] # less than
[ $a -ge $b ] # greater than or equal
[ $a -le $b ] # less than or equal

# boolean operators
[ !false ]
[ $a -lt 20 -o $b -gt 100 ] # or
[ $a -lt 20 -a $b -gt 100 ] # and

# string operators
a="abc"
b="efg"
[ $a = $b ] # false
[ $a != $b ] # true
[ -z $a ] # check if the given string operand size is 0
[ -n $a ] # check if the given stirng operand size in non-zero
[ $a ] # check if str is not the empty string

# file test operators
file="test.txt"
if [ -b $file ]; then # check if file is a block special file
	echo "$file is a block special file"
else
	echo "$file is not a block special file"
fi

[ -c $file ] # check if file is a character special file
[ -d $file ] # check if file is a directory
[ -f $file ] # check if file is an ordinary file as opposed to a directory or special file
[ -g $file ] # check if file has its set group ID (SGID)  bit set
[ -k $file ] # check if file has its sticky bit set
[ -p $file ] # check if file is a named pipe
[ -t $file ] # check if file descriptor is open and associated with a terminal
[ -u $file ] # check if file has its Set User ID (SUID) bit set
[ -w $file ] # check if file is writable
[ -r $file ] # check if file is readable
[ -x $file ] # check if file is executable
[ -s $file ] # check if file has size greater than 0
[ -e $file ] # check if file exists

