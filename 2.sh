#!/bin/bash
numapro=0
numsuspensos=0
lineas=`cat notas.txt | wc -l`

for i in `seq 2 $lineas`
do
  linea=`cat notas.txt | head -n$i | tail -n1`
  nota=`echo $linea | awk '{print $3}'`

if [ $nota -lt 5 ]; then
((numsuspensos++))
else
((numapro++))
fi
done

echo "El numero de aprobados es $numapro"
echo "El numero de suspensos es $numsuspensos"