#cal.sh
narr=($(<num1.txt),$(<num2.txt))
if [ $# -gt 0 ]; then
	echo ...$1 selected...
	echo ...run calculater...
	case $1 in
		add) let result=${narr[0]}+${narr[1]};;
		sub) let result=${narr[0]}-${narr[1]};;
		div) let result=${narr[0]}/${narr[1]};;
		mul) let result=${narr[0]}*${narr[1]};;
	esac
	echo
	echo num1: ${narr[0]}
	echo num2: ${narr[1]}
	echo op: $1
	echo result: $result
else
	echo ...none operator parameter....
	PS3="select menu:"
	select opt in add sub div mul
	do
		break
	done
	case $opt in	
		add) let result=${narr[0]}+${narr[1]};;
        sub) let result=${narr[0]}-${narr[1]};;
        div) let result=${narr[0]}/${narr[1]};;
        mul) let result=${narr[0]}*${narr[1]};;
	esac
	echo
	echo num1: ${narr[0]}
	echo num2: ${narr[1]}
	echo op: $opt
	echo result: $result
fi
