#!/bin/bash

echo -e "\033[0;1mStart of shell check \033[0;0m"
find . -not -type d -name '*.sh' -exec shellcheck --enable=all {} +\
| tee  shellcheck.txt || true 

len=$(wc -w shellcheck.txt | cut -c 1 || true) 


if [[ ${len} == "0" ]]
then
	echo -e "\033[0;1mShell check: \033[0;32m PASS! \033[0;0m"
else
	echo -e "\033[0;1mShell check:  \033[0;31m FAIL! \033[0;0m"
fi

