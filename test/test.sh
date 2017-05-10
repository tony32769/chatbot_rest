#!/bin/bash                                                                                                                                                                                                     
IFS=" "
export IFS;
words=$(cat result.txt | grep Request)
rsnum=${words##* }
echo $rsnum
std=1000.0
if (( $(echo "$rsnum > $std" | bc -l) )); then
	echo -e "[-----------------------"
	echo -e "[Performace Tests passed"
	echo -e "[-----------------------"
        exit 0
fi
	echo -e "[-----------------------"
	echo -e "[Performace Tests failed"
	echo -e "[-----------------------"
        exit 1
