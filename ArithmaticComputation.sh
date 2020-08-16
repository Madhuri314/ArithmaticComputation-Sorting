#!/bin/bash -x

declare -A ArithDictionary

echo "Enter three numbers:"
read -p "a: " a
read -p "b: " b
read -p "c: " c

d=$(($a + $b * $c))
e=$(($a * $b + $c))
f=$(($c + $a / $b))
g=$(($a % $b + $c))

ArithDictionary[res1]=$d
ArithDictionary[res2]=$e
ArithDictionary[res3]=$f
ArithDictionary[res4]=$g

echo ${ArithDictionary[@]}
echo ${!ArithDictionary[@]}
