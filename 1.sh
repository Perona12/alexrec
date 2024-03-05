#!/bin/bash
read -p "introduzca una nota: " nota

if [ $nota -le 4 ]; then
	echo "Suspenso"
elif [ $nota -gt 5 ] && [ $nota -le 8 ]; then 
	echo "Aprobado"
elif [ $nota -gt 8 ] && [ $nota -le 10  ]; then
	echo "Sobresaliente"
fi