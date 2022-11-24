#Roll a die and find the number between 1 to 6
die1=$(( RANDOM%6+1 ))
echo "Die 1: $die1"

#Repeat the Die roll and find the result each time
die2=$(( RANDOM%6+1 ))
echo "Die 2: $die2"

#Store the result in a dictionary
declare -A dice
dice[die1]=$die2

#Repeat till any one of the number has reached 10 times in shell script
for (( i=0; i<=10; i++ ))
do
   for(( j=1; j<=6; j++ ))
   do
      if [[ ${dice[$j]} -eq 10 ]]
      then
         echo "$j has reached 10 times"
      fi
   done
done
