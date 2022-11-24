for ((i=1;i<=50;i++)) 
do 
echo $((RANDOM%12+1)) 
done | sort -n | uniq -c
