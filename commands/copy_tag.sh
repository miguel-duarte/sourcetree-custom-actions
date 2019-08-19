#!/bin/bash
result=$(git log --decorate=short $1 | head -n1)
echo "original result " $result
IFS=','
read -ra ADDR <<< "$result"
array=()
for i in "${ADDR[@]}"; do
	if [[ $i == *"tag: "* ]]; then
		array+="$i"
	fi
done 
unset IFS

delimiter="tag: "
finalArray=""
for k in "$array"; do
	str=$k$delimiter
	j=0;
	while [[ $str ]]; do
		if [[ $j != 0 && $k == *"tag: "* ]]; then
			finalArray+="${str%%"$delimiter"*}"
		fi
		j+=1
		str=${str#*"$delimiter"};
	done;
done

echo $finalArray | sed 's/(//' | sed 's/)//' | clip
