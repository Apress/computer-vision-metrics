#!/bin/sh


# 
# NOTE: the C++ code "testKeypoints.cpp" requires that the DETECTOR shell variable is set correctly, 
# so, set it to INTEREST_POINTS or CORNERS prior to calling the shell script below "TEST_BWG_ALPHABETS.sh" !!!
# This means that the tests are called twice, once with DETECTOR=INTEREST_POINTS, and once with DETECTOR=CORNERS !
#

a=0
while [ "$a" -lt 100 ]
do
        Degree=Degree
        DEGREES=$a$Degree
        export DEGREES

        echo "LOOP"
        echo $a
        echo $DEGREES

	DETECTOR=INTEREST_POINTS
	export DETECTOR
	echo $DETECTOR
	/bin/rm ./InterestPoints/$DEGREES/*
	./TEST_BWG_ALPHABETS.sh $DEGREES

	DETECTOR=CORNERS
	export DETECTOR
	echo $DETECTOR
	/bin/rm ./Corners/$DEGREES/*
	./TEST_BWG_ALPHABETS.sh $DEGREES


   	a=`expr $a + 10`
done



