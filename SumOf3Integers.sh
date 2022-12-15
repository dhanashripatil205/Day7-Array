#!/bin/bash -x

# sum of 3 integer
a=(1 2 3 -1 -2 -3 4)
for (( i=0; i<7; i++ ))
do
	for (( j=i+1; j<7; j++ ))
	do	
		for (( k=j+1; k<7; k++ ))
		do	
			sum=$((${a[i]}+${a[j]}+${a[k]}))
			if [ $sum -eq 0 ]
			then
				echo "Sum of ${a[i]} + ${a[j]} + ${a[k]} is zero"
			fi
		done
	done
done
