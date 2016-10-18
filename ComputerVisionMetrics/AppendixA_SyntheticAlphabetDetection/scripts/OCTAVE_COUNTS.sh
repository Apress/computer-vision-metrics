#!/bin/sh
PATH=/Users/scottkrig/Desktop/BOOK_VisualMetrics/opencv-2.4.6.1/opencv_extra-master/testdata/cv/features2d/tsukuba.png

#
echo "COUNT OCTAVES GrayInterestPoints"
echo "COUNT OCTAVES GrayInterestPoints" >> SAKTEST.txt

echo "SURF 0 - 3"
echo "SURF 0 - 3" >> SAKTEST.txt
/bin/cat ./InterestPoints/SURF_GrayInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "BRISK 0 - 3"
echo "BRISK 0 - 3" >> SAKTEST.txt
/bin/cat ./InterestPoints/BRISK_GrayInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "ORB 0 - 7"
echo "ORB 0 - 7" >> SAKTEST.txt
/bin/cat ./InterestPoints/ORB_GrayInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 4 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 5 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 6 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GrayInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 7 | /usr/bin/wc -l
#
#


#
echo "COUNT OCTAVES WhiteInterestPoints"
echo "COUNT OCTAVES WhiteInterestPoints" >> SAKTEST.txt

echo "SURF 0 - 3"
echo "SURF 0 - 3" >> SAKTEST.txt
/bin/cat ./InterestPoints/SURF_WhiteInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "BRISK 0 - 3"
echo "BRISK 0 - 3" >> SAKTEST.txt
/bin/cat ./InterestPoints/BRISK_WhiteInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "ORB 0 - 7"
echo "ORB 0 - 7" >> SAKTEST.txt
/bin/cat ./InterestPoints/ORB_WhiteInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 4 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 5 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 6 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_WhiteInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 7 | /usr/bin/wc -l
#
#


#
echo "COUNT OCTAVES BlackInterestPoints"
echo "COUNT OCTAVES BlackInterestPoints" >> SAKTEST.txt

echo "SURF 0 - 3"
echo "SURF 0 - 3" >> SAKTEST.txt
/bin/cat ./InterestPoints/SURF_BlackInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "BRISK 0 - 3"
echo "BRISK 0 - 3" >> SAKTEST.txt
/bin/cat ./InterestPoints/BRISK_BlackInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "ORB 0 - 7"
echo "ORB 0 - 7" >> SAKTEST.txt
/bin/cat ./InterestPoints/ORB_BlackInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 4 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 5 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 6 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_BlackInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 7 | /usr/bin/wc -l
#
#


#
echo "COUNT OCTAVES SaltPepperInterestPoints"
echo "COUNT OCTAVES SaltPepperInterestPoints" >> SAKTEST.txt

echo "SURF 0 - 3"
echo "SURF 0 - 3" >> SAKTEST.txt
/bin/cat ./InterestPoints/SURF_SaltPepperInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "BRISK 0 - 3"
echo "BRISK 0 - 3" >> SAKTEST.txt
/bin/cat ./InterestPoints/BRISK_SaltPepperInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "ORB 0 - 7"
echo "ORB 0 - 7" >> SAKTEST.txt
/bin/cat ./InterestPoints/ORB_SaltPepperInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 4 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 5 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 6 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_SaltPepperInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 7 | /usr/bin/wc -l
#
#


#
echo "COUNT OCTAVES GaussianInterestPoints"
echo "COUNT OCTAVES GaussianInterestPoints" >> SAKTEST.txt

echo "SURF 0 - 3"
echo "SURF 0 - 3" >> SAKTEST.txt
/bin/cat ./InterestPoints/SURF_GaussianInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/SURF_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "BRISK 0 - 3"
echo "BRISK 0 - 3" >> SAKTEST.txt
/bin/cat ./InterestPoints/BRISK_GaussianInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/BRISK_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "ORB 0 - 7"
echo "ORB 0 - 7" >> SAKTEST.txt
/bin/cat ./InterestPoints/ORB_GaussianInterestPoints.txt | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 4 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 5 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 6 | /usr/bin/wc -l
/bin/cat ./InterestPoints/ORB_GaussianInterestPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 7 | /usr/bin/wc -l
#
#


#
echo "COUNT OCTAVES GrayCorners"
echo "COUNT OCTAVES GrayCorners" >> SAKTEST.txt

echo "SURF 0 - 3"
echo "SURF 0 - 3" >> SAKTEST.txt
/bin/cat ./Corners/SURF_GrayCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/SURF_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "BRISK 0 - 3"
echo "BRISK 0 - 3" >> SAKTEST.txt
/bin/cat ./Corners/BRISK_GrayCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "ORB 0 - 7"
echo "ORB 0 - 7" >> SAKTEST.txt
/bin/cat ./Corners/ORB_GrayCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 4 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 5 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 6 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GrayCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 7 | /usr/bin/wc -l
#
#


#
echo "COUNT OCTAVES WhiteCorners"
echo "COUNT OCTAVES WhiteCorners" >> SAKTEST.txt

echo "SURF 0 - 3"
echo "SURF 0 - 3" >> SAKTEST.txt
/bin/cat ./Corners/SURF_WhiteCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/SURF_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "BRISK 0 - 3"
echo "BRISK 0 - 3" >> SAKTEST.txt
/bin/cat ./Corners/BRISK_WhiteCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "ORB 0 - 7"
echo "ORB 0 - 7" >> SAKTEST.txt
/bin/cat ./Corners/ORB_WhiteCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/ORB_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 4 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 5 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 6 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_WhiteCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 7 | /usr/bin/wc -l
#
#


#
echo "COUNT OCTAVES BlackCorners"
echo "COUNT OCTAVES BlackCorners" >> SAKTEST.txt

echo "SURF 0 - 3"
echo "SURF 0 - 3" >> SAKTEST.txt
/bin/cat ./Corners/SURF_BlackCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/SURF_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "BRISK 0 - 3"
echo "BRISK 0 - 3" >> SAKTEST.txt
/bin/cat ./Corners/BRISK_BlackCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "ORB 0 - 7"
echo "ORB 0 - 7" >> SAKTEST.txt
/bin/cat ./Corners/ORB_BlackCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/ORB_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 4 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 5 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 6 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_BlackCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 7 | /usr/bin/wc -l
#
#


#
echo "COUNT OCTAVES SaltPepperCorners"
echo "COUNT OCTAVES SaltPepperCorners" >> SAKTEST.txt

echo "SURF 0 - 3"
echo "SURF 0 - 3" >> SAKTEST.txt
/bin/cat ./Corners/SURF_SaltPepperCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/SURF_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "BRISK 0 - 3"
echo "BRISK 0 - 3" >> SAKTEST.txt
/bin/cat ./Corners/BRISK_SaltPepperCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "ORB 0 - 7"
echo "ORB 0 - 7" >> SAKTEST.txt
/bin/cat ./Corners/ORB_SaltPepperCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/ORB_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 4 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 5 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 6 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_SaltPepperCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 7 | /usr/bin/wc -l
#
#


#
echo "COUNT OCTAVES GaussianCorners"
echo "COUNT OCTAVES GaussianCorners" >> SAKTEST.txt

echo "SURF 0 - 3"
echo "SURF 0 - 3" >> SAKTEST.txt
/bin/cat ./Corners/SURF_GaussianCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/SURF_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/SURF_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "BRISK 0 - 3"
echo "BRISK 0 - 3" >> SAKTEST.txt
/bin/cat ./Corners/BRISK_GaussianCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/BRISK_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l


echo "ORB 0 - 7"
echo "ORB 0 - 7" >> SAKTEST.txt
/bin/cat ./Corners/ORB_GaussianCornerPoints.txt | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 0 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 1 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 2 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 3 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 4 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 5 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 6 | /usr/bin/wc -l
/bin/cat ./Corners/ORB_GaussianCornerPoints.txt | /usr/bin/cut -d ' ' -f 12 | /usr/bin/sort | /usr/bin/grep 7 | /usr/bin/wc -l
#
#

