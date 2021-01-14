# Automation with Bash Script

Add the `crun.sh` file into your desired directory and get your code compiled automatically just by running one command.

> ## Prerequisite
> * g++, gcc and javac should be pre-installed
> * run this script in the linux terminal

> ## Usage
> put the `crun.sh` in the directory where the c and c++ programs are located.
> * To access Permission:
>  run `chmod +x crun.sh` then
>  run `./crun.sh filename.c` or `./crun.sh filename.cpp` or `./crun.sh filename.java`
>> Pass the file (name with extention) as arguement

> ## Windows
> If you are on Windows subsystem for Linux (wsl)->
> Use `dos2unix` package to resolve the error: `'\r': command not found`
> Follow the steps,
> * `sudo apt install dos2unix` 
>> not necessary if it is pre-installed
> * `dos2unix crun.sh` 
>> after this try to run the script

> ## To make it short
> use `alias` after cloning the repo.<br>
> * `alias crun="./crun.sh"`
>>P.S. You can use any alias you want<br>

>After declaring the alias
>* `crun filename.c` for c file
>* `crun filename.cpp` for c++ file
>* `crun filename.java` for java file