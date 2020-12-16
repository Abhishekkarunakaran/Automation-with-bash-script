# Automation with Bash Script

> ## Prerequisite
> * g++ and gcc should be pre-installed
> * run this script in the linux terminal

> ## Usage
> put the `crun.sh` in the directory where the c and c++ programs are located.
> * To access Permission
> run `chmod +x crun.sh`
> run `./crun.sh filename.c` or `./crun.sh filename.cpp`  
>> Pass the file (name with extention) as arguement

> ## Windows
> If you are on Windows subsystem for Linux (wsl)->
> Use `dos2unix` package to resolve the error: `'\r': command not found`
> Follow the steps,
> * `sudo apt install dos2unix` 
>> not necessary if it is pre-installed
> * `dos2unix crun.sh` 
>> after this try to run the script
