#!/bin/bash
# Authors : Richard Diaz Bustos
# Date: 2/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter an expression: "
read expression1 

echo "Enter a file name: "
read fileName1

grep $expression1 $fileName1

echo "number of phone numbers: "
grep "[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]" "./regex_practice.txt" -c

echo "number of emails: "
grep "@" "./regex_practice.txt" -c

echo "adding numbers in 303 area code to file."
grep "303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]" "./regex_practice.txt" > "phone_results.txt"

echo "adding emails from geocities.com to file."
grep "geocities.com" "./regex_practice.txt" > "email_results.txt"

grep $expression1 "./regex_practice.txt" > "command_results.txt"