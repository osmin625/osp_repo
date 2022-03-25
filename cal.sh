#cal.sh
num1=$(<num1.txt)
num2=$(<num2.txt)
if [ $# -gt 0 ]; then
	echo ...$1 selected...
	echo ...run calculater...
	case $1 in
		add) let result=$num1+$num2;;
		sub) let result=$num1-$num2;;
		div) let result=$num1/$num2;;
		mul) let result=$num1*$num2;;
	esac
	echo
	echo num1: $num1
	echo num2: $num2
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
		add) let result=$num1+$num2;;
		sub) let result=$num1-$num2;;
		div) let result=$num1/$num2;;
		mul) let result=$num1*$num2;;
	esac
	echo
	echo num1: $num1
	echo num2: $num2
	echo op: $opt
	echo result: $result
fi
