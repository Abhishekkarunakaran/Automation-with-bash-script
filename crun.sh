#!/bin/bash

#bash script to compile and run c and c++ programs
if [ -z "$1" ]
then 
    echo "Pass a c or c++ program as arguement"
    exit
fi

input=${1}

if test -f "a.out"
    then
        rm a.out
fi

if [[ $input == *".cpp" ]]
then
    g++ $input 
    
    #Can also compile a c program with g++ compiler
    if test -f "a.out"
    then
        ./a.out
    else
        exit
    fi
elif [[ $input == *".c" ]]
then
    gcc $input
    
    if test -f "a.out"
    then
        ./a.out
    else 
        exit
    fi

else
    echo "Invalid filename with extention"
    exit
fi