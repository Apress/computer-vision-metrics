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



########################################################################################
	DETECTOR=INTEREST_POINTS
	export DETECTOR
	echo $DETECTOR

	/bin/mkdir ./InterestPoints/$DEGREES/bins
	/bin/mv -v ./InterestPoints/$DEGREES*/*Binning* ./InterestPoints/$DEGREES/bins

	/bin/cp -v spacer.png ./InterestPoints/$DEGREES/bins
	/bin/cp -v adjoin.sh ./InterestPoints/$DEGREES/bins
	/bin/cp -v MakeBinningImages.sh ./InterestPoints/$DEGREES/bins
	pushd ./InterestPoints/$DEGREES/bins
	/bin/rm ./BinTiles*
	./MakeBinningImages.sh $DEGREES
	popd


########################################################################################
	DETECTOR=CORNERS
	export DETECTOR
	echo $DETECTOR

        /bin/mkdir ./Corners/$DEGREES/bins
	/bin/mv -v ./Corners/$DEGREES*/*Binning* ./Corners/$DEGREES/bins

	/bin/cp -v spacer.png ./Corners/$DEGREES/bins
	/bin/cp -v adjoin.sh ./Corners/$DEGREES/bins
        /bin/cp -v MakeBinningImages.sh ./Corners/$DEGREES/bins
        pushd ./Corners/$DEGREES/bins
	/bin/rm ./BinTiles*
        ./MakeBinningImages.sh $DEGREES
        popd




   	a=`expr $a + 10`
done

exit


