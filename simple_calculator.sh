#!/bin/bash

read a b op

if [ "$op" = "+" ]; then
echo "Results $((a + b))"
elif [ "$op" = "-" ]; then
echo "Results $((a - b))"
 elif [ "$op" = "*" ]; then
 echo " Results $((a * b))"



 elif [ "$op" = "/" ]; then

  
 if [ "$op" = -eq 0]; then         

 echo "Imposible de diviser par zéro"

 else 

echo " Results $((a / b))"
fi

else
echo "Operation invalide"
fi
