#!/bin/bash

echo "Enter the number of subjects"
read n
while [ $n -gt 0 ]
do
echo "Enter the CIE Marks"
read cie
echo "Enter the SEE Marks"
read see
see=`expr $see / 2`
if [ `expr $see % 2` -nt 0 ]
then
see=`expr see + 1`
fi
sum=`expr $cie + $see`
if [ $sum -gt 89 ]
then 
echo "The Grade is : S"
elif [ $sum -gt 79 -a $sum -lt 90 -a $see -ge 20 ]
then 
echo "The Grade is : A"
elif [ $sum -gt 69 -a $sum -lt 80 -a $see -ge 20 ]
then 
echo "The Grade is : B"
elif [ $sum -gt 59 -a $sum -lt 70 -a $see -ge 20 ]
then 
echo "The Grade is : C"
elif [ $sum -gt 49 -a $sum -lt 60 -a $see -ge 20 ]
then 
echo "The Grade is : D"
elif [ $sum -gt 39 -a $sum -lt 50 -a $see -ge 20 ]
then 
echo "The Grade is : E"
else
echo "The Grade is : F"
fi
n=`expr $n - 1`
done
