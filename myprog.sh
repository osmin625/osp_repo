#myfrog.sh
#1
mkdir temp
echo ..create temp directory...
#2
cp cal.sh temp
cp num1.txt temp
cp num2.txt temp
echo ..copy files to temp directory..
#3
PS3="select menu:"
select parm in add sub div mul
do
	#4
	./cal.sh $parm
	break
done
