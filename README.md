# Automation with Bash Script :sunglasses:

Clone and the `crun.sh` file into your desired directory to get your code compiled automatically just by running one command :heart_eyes::heart_eyes:

> ## Prerequisite
> * g++ and gcc should be pre-installed for compiling c and c++ programs
> * javac should be pre-installed for the sucessfull compilation of java programs

> ## How it Works?
> add the `crun.sh` in the directory where the c, c++, or java programs are located.
> * To access Permission: <br/> 
>  1. run `chmod +x crun.sh` <br/> 
>  2. run `./crun.sh filename.c` or `./crun.sh filename.cpp`  or `./crun.sh filename.java` <br/>
>> Pass the file (name with extention) as arguement

> ## Windows
> If you are on Windows subsystem for Linux (wsl)->
> Use `dos2unix` package to resolve the error: `'\r': command not found`
> Follow the steps,
> * `sudo apt install dos2unix` 
>> not necessary if it is pre-installed
> * `dos2unix crun.sh` 
>> after this try to run the script
 
