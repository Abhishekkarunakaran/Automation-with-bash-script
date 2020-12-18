#!/bin/bash

#bash script to compile and run c and c++ programs
if [ -z "$1" ]
then 
    echo "Pass a c or c++ program as arguement"
    exit
fi

input=${1}

if [[ $input == *".cpp" ]]
then
    if test -f "a.out"
    then
        rm a.out
    fi

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
    if test -f "a.out"
    then
        rm a.out
    fi
    gcc $input
    
    if test -f "a.out"
    then
        ./a.out
    else 
        exit
    fi
elif [[ $input == *".java" ]]
then
    class_name=`echo $input | cut -d'.' -f 1`
    file_name="_crun_java_${class_name}_"

    if test -d $file_name
    then
        rm -r $file_name
    fi

    mkdir $file_name
    cp $input $file_name
    cd $file_name

    javac $input

    java $class_name

    cd ..
    exit
else
    echo "Invalid filename with extention"
    exit
fi