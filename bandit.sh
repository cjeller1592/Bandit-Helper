#!/bin/bash 

# If the password file exists, log into the bandit level... 
if [[ -f ./pass/$1 ]]; then

        echo "Logging on to bandit$1..."

        export SSHPASS=`cat ./pass/$1`

        sshpass -e ssh bandit$1@bandit.labs.overthewire.org -p 2220

# If password file doesn't exist, create the file and log into the level....
else
        echo "No password found for $1...want to create one? (1) Yes (2) No"

        read option

        if [[ $option == 1 ]]; then
                echo "Okay...what is the password for bandit$1?"

                read pass

                echo $pass > ./pass/$1

                echo "Adding password to directory and logging on to bandit$1..."

                export SSHPASS=$pass

                sshpass -e ssh bandit$1@bandit.labs.overthewire.org -p 2220
        fi

fi
