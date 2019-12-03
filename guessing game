# File: guessinggame.sh


function fresults {
if [[ $1 -eq $2 ]]
then
  echo "Congratulations. you have entered the right count."
elif [[ $1 -gt $2 ]]
then
  echo "The number you entered is too high"
else
  echo "The number you entered is too low"
fi
}


i=1
while [[ $i -eq 1 ]]
do
echo "Enter the number of files present in the current directory:"
read response
a=$response
b=$(ls | wc -l)
fresults $a $b
if [[ $a -eq $b ]]
then 
 let i=0 
else 
 let i=1 
fi 
done
