add() {
  echo $(($1 + $2))
}

subtract() {
  echo $(($1 - $2))
}

multiply() {
  echo $(($1 * $2))
}

divide() {
  if [ $2 -eq 0 ]; then
    echo "Error zero division!"
  else
    echo $(($1 / $2))
  fi
}


echo "Enter first number:"
read num1
echo "Enter second number:"
read num2
echo "Choose operation (+, -, *, /):"
read operation

case $operation in
  +) add $num1 $num2 ;;
  -) subtract $num1 $num2 ;;
  \*) multiply $num1 $num2 ;;
  /) divide $num1 $num2 ;;
  *) echo "Unknown command!" ;;
esac
