#!/bin/bash
if [[ -z $1 ]]
then
        echo "hook-creator"
        echo "usage: hook-creator <hook-name> <hook-type>"
        echo "available hooks: "
        echo "  check_shell"
              
else    
        # check if there is a git hooks directory
        if [[ ! -e .git/hooks ]] 
        then
                echo "Couldn't find a hook directory are you in git repo directory?"
                exit
        fi


        # check if hook type is specified
        if [[  -z $2 ]]
        then
                                
                echo "hook type not specified, using default one"
        fi

        # set the check_shell
        if [[ $1 == "check_shell" ]]
        then
                if [[  -z $2 ]]
                then
                        TYPE="post-commit"
                else
                        TYPE=$2
                fi      
     
                curl https://raw.githubusercontent.com/koszalix/git-hooks/main/check_shell.sh \
                -o .git/hooks/"${TYPE}"
                chmod +x .git/hooks/"${TYPE}"
        
        # unidentified hook
        else
                echo "$1 hook doesn't exist"
                exit
        fi
fi

