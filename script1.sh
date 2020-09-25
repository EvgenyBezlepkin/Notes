#! /bin/bash




#operators
# && -a
# || -o
# == -eq
# != -ne




# команда вывода информации на консоль
echo "hello"




# команда записи в файл
#echo "hello" > hello.txt


# команда дозаписи в файл
echo "hello" >> hello.txt




# declaring variable (without spaces)
count=10




# if-statement
if [[ $count > 10 || $count == 11 ]]
#if [ $count == 10 ] || [ $count == 11 ] // alternative syntax
then
	echo "true branch"
else 
	echo "false branch"
fi




# case-statement
case $count in
	9)
	echo "case 1" ;;
	10)
	echo "case 2" ;;
esac




# loops
while [ $count == 10 ]
do
	echo "while cycle"
	count=$((count-1))
done
echo $count




# for-statement
# NB! 73 (if i want to use comparison operators I have to use double bracets, otherwise operator < or > will be interpreted as stdout
for i in {1..10..2}
# for (( i=0; i < 5; i++ )) // alternative
do
	echo for cycle - $i
	if [[ i > 5 ]]
		then
			break
		fi
done




# script input
# ./script.sh  some_var
# $0 - script name
echo this variables input via console - '$0' = $0, '$1' = $1


# print args without script name
args=("$@")
echo first args is ${args[0]}




# all arguments via cycle
# ./hello.sh q w e
i=0
while [ ${args[i]} ]
do
	echo ${args[i]}
	i=$((i+1))
done


# $@ - all arguments
# $# - count of arguments




# read all lines from incoming file
# ./hello.sh ~/log 
#while read line
#do
#	echo $line
#done < "${1:-/dev/stdin}"




# script output : stdout(1), stderr(2)
#ls -la 1>file1 2>file2
#ls -la >file1 2>&1 	#redirect both output
#ls +la >&file1  	#redirect both output




# pipes
#The Pipe is a command in Linux that lets you use two or more commands such that output of one command serves as input to the next. In short, the output of each process directly as input to the next one like a pipeline. The symbol '|' denotes a pipe.
message="Hello linux"
export message
./script2.sh




# arithmetic operations
n1=1
n2=3
echo $(( n1+n2 ))




# declaring variables in bash
declare var=3
#echo $(declare -p)




# arrays
nums=("first" "second" "third")
echo ${nums[0]}
#add
nums+=("zero")
#delete
unset nums[1]
# print all elements
echo ${nums[@]}




# functions
function funcName()
{
	echo $1
}
funcName "new func"




# files and directories
#check that directory exists

#echo enter directory name
#read direct
#if [ -d $direct ]	# absolute path
#then
#	echo $direct exists
#else
#	echo $direct does not exists
#	fi


