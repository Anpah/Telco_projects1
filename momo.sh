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

  recipient1=$3
  amount1=$4

  # In a real scenario, this function would interact with the mobile money API to make the payment
  # For this example, we'll just display a message indicating the payment has been made
  echo "Payment of $amount to $recipient has been successfully made."
}

# Main script
echo "Welcome to Mobile Money Script!"
echo "Please select an option:"
echo "1. Check Account Balance"
echo "2. Make Payment"
echo "3. Transfer money to wallet"
echo "4. Trnsfer money to Bank Account"
echo "5. Transfer money to Crypto Account"
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
  3)
    Transfer_money_to_wallet
    echo "Enter the recipient wallet number:"
    read wallet number
    echo "Enter amount"
    read amount1
    make_payment $recipient1 $amount1 
    echo "Option does not exist. Exiting."
    ;; 
  *)
esac
