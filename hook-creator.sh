#!/bin/bash

if [[ ! -e $1 ]]
then
        echo "hook-creator"
        echo "usage: hook-creator <hook-name> <hook-type>"
        echo "available hooks: "
        echo "\t check_shell"
        echo "available types"
        echo "\t post-update"
else
        if [[ -d .git/hooks ]] 
        then
                echo "Couldn't find a hook directory are you in git repo directory?"
                exit
        fi
        if [[ $1 == "check_shell" ]]
        then
                if [[ ! -e $2 ]]
                then

                        curl https://raw.githubusercontent.com/koszalix/git-hooks/main/check_shell.sh \
                        -o .git/hooks/post-commit
                else
                        curl https://raw.githubusercontent.com/koszalix/git-hooks/main/check_shell.sh
                        -o .git/hooks/$2
                fi

        else
                echo "$1 hook doesn't exist"
                exit
        fi
fi

