#!/bin/bash

read -p " L'utilisation de deux nombres et un operateur : " a b op

if [ "$op" = "+" ]; then
echo "Results $((a + b))"
elif [ "$op" = "-" ]; then
echo "Results $((a - b))"
 elif [ "$op" = "*" ]; then
 echo " Results $((a * b))"
 elif [ "$op" = "/" ]; then
 if [ "$b" -eq 0 ]; then         
 echo "Imposible de diviser par zéro"
 else 
echo " Results $((a / b))"
fi
else
echo "Operation invalide"
fi
