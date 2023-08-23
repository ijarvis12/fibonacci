#!/usr/bin/env bash

function fib(){
    if [[ $1 -eq 1 ]]; then
        echo $(($2+$3))
    else
        let "z = $2 + $3"
        echo $z
        fib $(($1-1)) $3 $z
    fi
}

echo "Calculate the Fibonacci Sequence"
echo "Enter Fib Number to Go Until:"
declare -i n
read n
echo "The Sequence:"
echo "1"
echo "1"
fib $n 1 1
exit 0
