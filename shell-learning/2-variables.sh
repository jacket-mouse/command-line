#!/bin/sh

# name by a-z A-Z 0-9 _
# UPPERCASE
# variable_name=variable_value

# scalar variables
NAME="leeson"
# access the value of defined variable
echo $NAME

# read-only variables
PHONE="123456"
readonly PHONE
# PHONE="12345" # ./variables.sh: line 17: PHONE: readonly variable

# unset variables
unset NAME # success
# unset PHONE # ./variables.sh: line 19: unset: PHONE: cannot unset: readonly variable



