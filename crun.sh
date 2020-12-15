#!/bin/bash

#bash script to compile and run c and c++ programs
if [[ $1 == *".cpp" ]]
then
    g++ $1 
    
    #Can also compile a c program with g++ compiler
    echo "Do you want to run the c++ program(y/n)?"

    read ch
elif [[ $1 == *".c" ]]
then
    gcc $1
    echo "Do you want to run the c program(y/n)?"

    read ch
else
    echo "Invalid filename with extention"
    exit
fi

if [ $ch == 'y' ] || [ $ch == 'Y' ]
then
    ./a.out
else
    exit
fi