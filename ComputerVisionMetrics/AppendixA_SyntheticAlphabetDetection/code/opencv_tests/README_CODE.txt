

========================================================================================
This source code is published, in part, in the book:

Computer Vision Metrics: Survey, Taxonomy, and Analysis, ISBN 978-1-4302-5929-9
Author Scott Krig, 2014.

Copyrighted by Apress Media, LLC, all rights reserved.
All code, scripts and images may be used freely for research and educational purposes
as per the Apress Media LLC copyright agreement, contact Apress for more info.
========================================================================================

ALL DEVELOPMENT OF THIS DISTRIBUTION IS FOR MAC OS 10.9.2 and opencv2.4.6.1


============
OpenCV 2.4.6.1
============
Install and build opencv-2.4.6.1.

http://opencv.org/downloads.html
- OpenCV 2.4.6.1 is used for these tests, however later versions should work with little or no additional effort.

When opencv builds OK, then proceed with the rest of the changes noted below.


===================
TEST IMAGES
===================
The source code runs assuming the test images in the “Corners” and “InterestPoints” directories are installed
in the correct locations (see the /images distribution):

	TARGET_SYSTEM_PATH/opencv-2.4.6.1/build/bin/Corners/*
	TARGET_SYSTEM_PATH/opencv-2.4.6.1/build/bin/InterestPoints/*


===================
SOURCE FILE CHANGES
===================
Here is a summary of the changes made to the opencv test code. 
These changes must be made to run the detector tests included here.

1. Increase number of keypoints recorded (idea is to max-out and stress-test detectors)
/opencv_2.4.6.1/modules/features2d/include/opencv2/features2d/features2d.hpp

line 370: Changed ORB nFeatrues to 60000
line 597: changes GFFT maxCorners to 60000
line 707: changed GridAdaptedFeatureDetector maxTotalKeypoints to 60000
line 798: changed max_features to 60000

/opencv_2.4.6.1/modules/features2d/src/features2d_init.cpp
line 157: changed maxCorners to 60000


2. Allow alternative keypoint annotation methods
/opencv_2.4.6.1/modules/features2d/src/draw.cpp
line 76: changed #if 0 to #if 1 to allow alternative annotations of interest points


3. Record test results, count features, annotated images
New source code is developed to run the tests. The new source code is distributed here
in files, which must be renamed and moved to the appropriate directory as shown here.

*NOTE: annotated source files are included in this distribution as follows:

	"test_keypoints_free.cpp",
	rename the source file and use it to replace the following file:
	/opencv_2.4.6.1/modules/features2d/test/test_keypoints.cpp
	Several changes to annotated and record interest points (ORB, MSER, HARRIS, etc.), see source file.

	"test_keypoints_nonfree.cpp"
	rename the source file and use it to replace the following file:
	/opencv_2.4.6.1/modules/nonfree/test/test_keypoints.cpp
	*NOTE: the annotaded source file is included in this distribution as ,
	Several changes to annotated and record interest points (SIFT, SURF), see source file.


4. Added Lines 510 & 511 as follows to ignore test reports since we are not using the tsukuba image:
/opencv_2.4.6.1/modules/ts/src/ts.cpp

510:    //SAK
511:    code = 1;


============
ENVIRONMENT
============
Here are useful symbols to set up key environment variables into ~/.login:
*NOTE: OPENCV_TEST_DATA_PATH must be set for the opencv tests to work at all!


OPENCV_TEST_DATA_PATH=/Users/scottkrig/Desktop/BOOK_VisualMetrics/opencv-2.4.6.1/opencv_extra-master/testdata
export OPENCV_TEST_DATA_PATH
DPATH=/Users/scottkrig/Desktop/BOOK_VisualMetrics/opencv-2.4.6.1/opencv_extra-master/testdata/cv/features2d/tsukuba.png
export DPATH
SRC=/Users/scottkrig/Desktop/BOOK_VisualMetrics/opencv-2.4.6.1/build/bin
export SRC
PATH=/opt/ImageMagick/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH


======
BUILD 
======
Existing OpenCV tests were modified, so the opencv makefiles are used as-is with no modifications.
TODO: more work on the code is needed to make the modifications flexible with command line switches,
and extendable to use any test image set. Several things are hard-coded now.

NOTE: the default OpenCV tests used here expect a test image called:
   /opencv-2.4.6.1/opencv_extra-master/testdata/cv/features2d/tsukuba.png,
So this test code just copies each alphabet test file into tsukuba.png and run the test, 
however this would be easy to change later.

$ cd /opencv_2.4.6.1/build
$ make opencv_tests_features2d (MSER, OREB, HARRIS, etc.)
$ make opencv_tests_nonfree (SIFT, SURF) 
The build process produces the following binaries in opencv-2.4.6.1/build/bin:

	opencv_test_features2d
	opencv_test_nonfree


=====
TEST
=====
To run the tests, the test driver scripts must be copied to opencv-2.4.6.1/build/bin.
See the file README_SCRIPTS.txt for all script information.
NOTE: the shell scripts set up environment variables also used by the c++ code.


To run the tests:

$ cd bin
$ ./TEST.sh  -> produces interest point location .txt files,and png images with interest point location overlay annotations
# ./BINNING.sh  -> produces tiled images showing summary bin counts
	
* Test progress result text messages are sent to in SAKTEST.txt
* Test images, annotated images showing interest point locations, and keypoint coordinates etc. are created in .txt files in /opencv_2.4.6.1/build/bin:
        bin/LittleGirls/*.png, *.txt
        bin/Corners/*.png, *.txt
        bin/InterestPoints/*.png, *.txt




=====================







