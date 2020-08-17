#!/bin/bash -x

declare -A arithmaticDictionary
declare -a arr

echo "Enter three numbers:"
read -p "a: " a
read -p "b: " b
read -p "c: " c

d=$(($a + $b * $c))
e=$(($a * $b + $c))
f=$(($c + $a / $b))
g=$(($a % $b + $c))

arithmaticDictionary[res1]=$d
arithmaticDictionary[res2]=$e
arithmaticDictionary[res3]=$f
arithmaticDictionary[res4]=$g

counter=0
for i in ${!arithmaticDictionary[@]}
do
        arr[counter++]=${arithmaticDictionary[$i]}
done

for (( j=0;j<4;j++ ))
do
        for (( k=0;k<4-j-1;k++ ))
        do
                if [ ${arr[k]} -gt ${arr[$(( k+1 ))]} ]
                then
                        temp=${arr[k]}
                        arr[$k]=${arr[$(( k+1 ))]}
                        arr[$(( k+1 ))]=$temp
                fi
        done
done
echo "Sorted :"
echo ${arr[@]}
