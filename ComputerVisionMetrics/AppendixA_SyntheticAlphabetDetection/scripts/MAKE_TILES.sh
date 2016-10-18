#!/bin/sh


# 
# NOTE: the C++ code "testKeypoints.cpp" requires that the DETECTOR shell variable is set correctly, 
# so, set it to INTEREST_POINTS or CORNERS prior to calling the shell script below "TEST_BWG_ALPHABETS.sh" !!!
# This means that the tests are called twice, once with DETECTOR=INTEREST_POINTS, and once with DETECTOR=CORNERS !
#

HERE=/Users/scottkrig/Desktop/BOOK_VisualMetrics/opencv-2.4.6.1/build/bin
echo $HERE
cd "$HERE"
/bin/pwd

a=0
while [ "$a" -lt 100 ]
do
        Degree=Degree
        DEGREES=$a$Degree
        export DEGREES

        echo "LOOP"
        echo $a
        echo $DEGREES

	cd "$HERE"

	cd ./InterestPoints/$DEGREES/bins
	./MakeBinningImages.sh

	cd "$HERE"

       cd ./Corners/$DEGREES/bins
	./MakeBinningImages.sh



   	a=`expr $a + 10`
done



