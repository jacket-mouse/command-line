#!/bin/sh

# array_name[index]=value
# ksh set -A array_name value1 value2 ... valuen
# bash array_name=(value1 ... valuen)
NAME=("l" "e" "e" "s" "o" "n")
PHONE[0]=1
PHONE[1]=2
PHONe[2]=3

# accessing array values
# ${array_name[index]}
echo ${NAME[*]} # access all the items
echo ${PHONE[@]}



