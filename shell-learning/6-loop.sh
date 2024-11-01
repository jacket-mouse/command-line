#!/bin/sh

# while loop

# while command
# do
# 	Statement(s) to be executed if command is true
# done

a=0

while [ $a -lt 10 ]
do
	echo $a
	a=`expr $a + 1`
done

# for loop

# for var in word1 word2 ... wordN
# do
#	Statement(s) to be executed for every word.
# done

for var in 0 1 2 3 4 5
do
	echo $var
done

for file in $HOME/*
do
	echo "$file"
done

# until loop
# until command
# do
# 	Statement(s) to be executed until command is true
# done

# select loop
# select var in word1 word2 ... wordN
# do
# Statement(s) to be executed for every word
# done

# !important
select DRINK in tea cofee water juice appe all none
do
   case $DRINK in
      tea|cofee|water|all) 
         echo "Go to canteen"
         ;;
      juice|appe)
         echo "Available at home"
      ;;
      none) 
         break 
      ;;
      *) echo "ERROR: Invalid selection" 
      ;;
   esac
done
