#!/bin/bash
who
echo "Script  Starting"
mkdir quiz
cd quiz
mkdir backup
mkdir getup
cd getup
for (( i=0;i<=10;i+=2 ))
do
    touch test$i
done
pwd >> test2

tar cvfz ../backup/bkup.tar.gz test*
cd getup
rm *0
cd ..
tar xvfz backup/bkup.tar.gz -C ../quiz
cp test0 getup/
mv backup/bkup.tar.gz ../quiz
rm -r backup
rm -r getup
mv test2 output
ls > summary
cd ..
mv quiz quiz1
echo "Script  End"


