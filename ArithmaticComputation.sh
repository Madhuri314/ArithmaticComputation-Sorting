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

echo ${arithmaticDictionary[@]}
echo ${!arithmaticDictionary[@]}
