#!/bin/bash
echo "Total nos "
read n
echo "enter Numbers in array --"
for (( i = 0; i < $n; i++ ))
do
read nos[$i]
done
echo "Numbers enterred --"
for (( i = 0; i < $n; i++ ))
do
echo ${nos[$i]}
done

for (( i = 0; i < $n ; i++ ))
do
for (( j = $i; j < $n; j++ ))
do
if [ ${nos[$i]} -gt ${nos[$j]}  ]; then
t=${nos[$i]}
nos[$i]=${nos[$j]}
nos[$j]=$t
fi
done
done

echo -e "\n sequence-- "
for (( i=0; i < $n; i++ ))
do
echo ${nos[$i]}
done