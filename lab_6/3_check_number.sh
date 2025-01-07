echo "Please enter a number"
read number

if [[ $number -gt 0 ]]
then
echo "It's a positive number."
elif [[ $number -lt 0 ]]
then 
echo "It's a negative number."
else
echo "It's a zero"
fi
