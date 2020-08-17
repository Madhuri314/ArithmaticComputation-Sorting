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
n=4
for (( j=$n;j>=0;j-- ))
do
        for (( k=$n;k>$n-$j;k-- ))
        do
                if [ ${arr[k]} -gt ${arr[$(( k-1 ))]} ]
                then
                        temp=${arr[k]}
                        arr[$k]=${arr[$(( k-1 ))]}
                        arr[$(( k-1 ))]=$temp
                fi
        done
done
echo "Sorted in descendind:"
echo ${arr[@]}
