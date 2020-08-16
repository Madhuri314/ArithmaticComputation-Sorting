#!/bin/bash -x

echo "Enter three numbers:"
read -p "a: " a
read -p "b: " b
read -p "c: " c

d=$(($a + $b * $c))
