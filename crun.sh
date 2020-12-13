#!/bin/bash

#bash script to compile and run c program
if [[ $1 == *".cpp"* ]]
then
    g++ $1
elif [[ $1 == *".c"* ]]
then
    gcc $1
fi

echo "Do you want to run the c program(y/n)?"

read ch

if [ $ch == 'y' ] || [ $ch == 'Y' ]
then
    ./a.out
else
    exit
fi