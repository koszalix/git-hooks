#!/bin/bash

echo "start of shell check"
find . -not -type d -name '*.sh' -exec shellcheck --enable=all {} +  > shellcheck.txt

len=$(cat shellcheck.txt | wc -w | cut -c 1)

if [[ ${len} == "0" ]]
then
	echo -e "\033[0;1m Shell check: \033[0;32m PASS! \033[0;0m"
else
	echo -e "\033[0;1m Shell check:  \033[0;31m FAIL! \033[0;0m"
fi

