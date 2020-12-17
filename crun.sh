#!/bin/bash

#bash script to compile and run c and c++ programs
if [ -z "$1" ]
then 
    echo "Pass a c or c++ program as arguement"
    exit
fi

input=${1}

if [ ! -z "$2" ]
then
    arg=$2
fi

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
elif [[ $input == *".java" ]]
then
    if [ -z "$arg" ]
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
        class_name=`echo $input | cut -d'.' -f 1`
        file_name="_crun_java_${class_name}_"

        if test -d $file_name
        then
            rm -r $file_name
        fi
        mkdir $file_name
        if [[ $arg == *".txt" ]]
        then
            cp $input $file_name
            cp $arg $filename
            cd $file_name

            javac $input

            java $class_name $arg
        else
            cp $input $file_name
            cd $file_name

            javac $input

            java $class_name $arg
        fi
    fi
else
    echo "Invalid filename with extention"
    exit
fi