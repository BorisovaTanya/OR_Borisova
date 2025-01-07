echo "Please enter a number"
read number

while [ $number -ge 0 ]; do
    echo $number
    ((number--))
done
