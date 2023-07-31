#!/bin/bash

#shell script to calculate simple interest


echo "Enter the Principal amount: "
read principal

echo "Enter the Rate of interest: "
read roi

echo "Enter the time: "
read time

simple_interest=$(expr $principal \* $roi \* $time / 100 )
♠echo "Simple Interest is: " $simple_interest

amount=$(expr $simple_interest + $principal)
echo "Amount is: "$amount





# Function for addition
add() {
  echo "Addition: $(($1 + $2))"
}

# Function for subtraction
subtract() {
  echo "Subtraction: $(($1 - $2))"
}

# Function for multiplication
multiply() {
  echo "Multiplication: $(($1 * $2))"
}

# Function for division
divide() {
  if [ $2 -eq 0 ]; then
    echo "Division by zero is not allowed."
  else
    echo "Division: $(($1 / $2))"
  fi
}

# Main script
echo "Enter two numbers:"
read num1
read num2

add $num1 $num2
subtract $num1 $num2
multiply $num1 $num2
divide $num1 $num2

#!/bin/bash

# Function for checking account balance
check_balance() {
  # In a real scenario, this function would query the mobile money API to get the account balance
  # For this example, we'll use a fixed balance value
  balance=500
  echo "Your account balance: $balance"
}

# Function for making a payment
make_payment() {
  recipient=$1
  amount=$2

  # In a real scenario, this function would interact with the mobile money API to make the payment
  # For this example, we'll just display a message indicating the payment has been made
  echo "Payment of $amount to $recipient has been successfully made."
}

# Main script
echo "Welcome to Mobile Money Script!"
echo "Please select an option:"
echo "1. Check Account Balance"
echo "2. Make Payment"
read option

case $option in
  1)
    check_balance
    ;;
  2)
    echo "Enter recipient's phone number:"
    read recipient
    echo "Enter amount:"
    read amount
    make_payment $recipient $amount
    ;;
  *)
    echo "Invalid option. Exiting."
    ;;
esac

