#!/bin/sh
DPATH=/Users/scottkrig/Desktop/BOOK_VisualMetrics/opencv-2.4.6.1/opencv_extra-master/testdata/cv/features2d/tsukuba.png
SRC=/Users/scottkrig/Desktop/BOOK_VisualMetrics/opencv-2.4.6.1/build/bin
TESTFILE=tesfile.png

#
echo "TEST START " > SAKTEST.txt
#

DEGREES=$1
echo $DEGREES 
echo $DEGREES >> SAKTEST.txt


#####################################################
# Interest point tests
######################################################
if [ "$DETECTOR" == "INTEREST_POINTS" ]; then
echo "DETECTOR=INTEREST_POINTS"

echo "***\nInterestPoints test start\n ***\n"
/bin/date

PCOLOR=Black
export PCOLOR

echo "BlackInterestPoints"
echo "BlackInterestPoints" >> SAKTEST.txt
/bin/cp -v $SRC/InterestPoints/InterestPoints_1024x1024_$DEGREES.png $DPATH
./opencv_test_nonfree
./opencv_test_features2d

# 
PCOLOR=White
export PCOLOR

echo "WhiteInterestPoints" >> SAKTEST.txt
/bin/cp -v ./InterestPoints/WhiteInterestPoints_1024x1024_$DEGREES.png $DPATH
./opencv_test_nonfree
./opencv_test_features2d

#
PCOLOR=Gray
export PCOLOR

echo "GrayInterestPoints"
echo "GrayInterestPoints" >> SAKTEST.txt
/bin/cp -v ./InterestPoints/GrayInterestPoints_1024x1024_$DEGREES.png $DPATH
./opencv_test_nonfree
./opencv_test_features2d

# COPY ALL THE FILES INTO INDEPENDENT SAVE DIRECTORIES

/bin/mv -v ./SIFT* ./InterestPoints/$DEGREES
/bin/mv -v ./SURF* ./InterestPoints/$DEGREES
/bin/mv -v ./BRISK* ./InterestPoints/$DEGREES
/bin/mv -v ./FAST* ./InterestPoints/$DEGREES
/bin/mv -v ./HARRIS* ./InterestPoints/$DEGREES
/bin/mv -v ./GFFT* ./InterestPoints/$DEGREES
/bin/mv -v ./MSER* ./InterestPoints/$DEGREES
/bin/mv -v ./ORB* ./InterestPoints/$DEGREES
/bin/mv -v ./STAR* ./InterestPoints/$DEGREES
/bin/mv -v ./SIMPLEBLOB* ./InterestPoints/$DEGREES

/bin/mkdir ./InterestPoints/$DEGREES/bins
/bin/mv -v ./InterestPoints/$DEGREES/*Binning* ./InterestPoints/$DEGREES/bins

#
/bin/cp -v SAKTEST.txt ./InterestPoints/$DEGREES/TESTRESULTS.txt 
#

fi
#########################################################################





######################################################
# Corners tests
######################################################
if [ "$DETECTOR" == "CORNERS" ]; then
echo "DETECTOR=CORNERS"

echo "***\nCornerPoints test start\n ***\n"
/bin/date


# 
PCOLOR=Black
export PCOLOR

echo "BlackCornerPoints"
echo "BlackCornerPoints" >> SAKTEST.txt
/bin/cp -v ./Corners/CornerPoints_1024x1024_$DEGREES.png $DPATH
./opencv_test_nonfree
./opencv_test_features2d

# 
PCOLOR=White
export PCOLOR

echo "WhiteCornerPoints"
echo "WhiteCornerPoints" >> SAKTEST.txt
/bin/cp -v ./Corners/CornerPointsWhite_1024x1024_$DEGREES.png $DPATH
./opencv_test_nonfree
./opencv_test_features2d

#
PCOLOR=Gray
export PCOLOR

echo "GrayCornerPoints"
echo "GrayCornerPoints" >> SAKTEST.txt
/bin/cp -v ./Corners/GrayCornerPoints_1024x1024_$DEGREES.png $DPATH
./opencv_test_nonfree
./opencv_test_features2d

# COPY ALL THE FILES INTO INDPENDENT SAVE DIRECTORIES

/bin/mv -v ./SIFT* ./Corners/$DEGREES
/bin/mv -v ./SURF* ./Corners/$DEGREES
/bin/mv -v ./BRISK* ./Corners/$DEGREES
/bin/mv -v ./FAST* ./Corners/$DEGREES
/bin/mv -v ./HARRIS* ./Corners/$DEGREES
/bin/mv -v ./GFFT* ./Corners/$DEGREES
/bin/mv -v ./MSER* ./Corners/$DEGREES
/bin/mv -v ./ORB* ./Corners/$DEGREES
/bin/mv -v ./STAR* ./Corners/$DEGREES
/bin/mv -v ./SIMPLEBLOB* ./Corners/$DEGREES

/bin/mkdir ./Corners/$DEGREES/bins
/bin/mv -v ./Corners/$DEGREES/*Binning* ./Corners/$DEGREES/bins

#
/bin/cp -v SAKTEST.txt ./Corners/$DEGREES/TESTRESULTS.txt
#


fi
#########################################################################


echo "FINISHED."

