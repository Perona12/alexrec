#!/bin/bash
lineas=`cat notas.txt | wc -l`

for i in `seq 2 $lineas`
do
  linea=`cat notas.txt | head -n$i | tail -n1`
  nom=`echo $linea | awk '{print $1}'`
  assig=`echo $linea | awk '{print $2}'`
  nota=`echo $linea | awk '{print $3}'`

if [ $nota -le 4 ]; then
	echo "Suspenso"
    echo "$nom", "$assig"
elif [ $nota -gt 5 ] && [ $nota -le 8 ]; then 
	echo "Aprobado"
    echo "$nom", "$assig"
elif [ $nota -gt 8 ] && [ $nota -le 10  ]; then
	echo "Sobresaliente"
    echo "$nom", "$assig"
fi
done