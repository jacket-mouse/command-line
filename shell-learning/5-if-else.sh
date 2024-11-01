#!/bin/sh

# if-else
# if ... fi
# if ... else ... fi
# if ... elif ... else ... fi



# case-esac

read num
case $num in
	1)
		echo "You entered one.";;
	2)
		echo "You entered two.";;
	*)
		echo "Invalid number!";;
esac
