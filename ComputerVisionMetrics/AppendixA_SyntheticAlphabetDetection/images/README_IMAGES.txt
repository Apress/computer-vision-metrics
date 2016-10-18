

========================================================================================
This source code is published, in part, in the book:

Computer Vision Metrics: Survey, Taxonomy, and Analysis, ISBN 978-1-4302-5929-9
Author Scott Krig, 2014.

Copyrighted by Apress Media, LLC, all rights reserved.
All code, scripts and images may be used freely for research and educational purposes
as per the Apress Media LLC copyright agreement, contact Apress for more info.
========================================================================================

ALL DEVELOPMENT OF THIS DISTRIBUTION IS FOR MAC OS 10.9.2



============
TEST IMAGES
============
Test images are provided in two directories: Corners and InterestPoints.
All test images should be installed in the expected location in order for the scripts and code to work:

	TARGET_SYSTEM_PATH/opencv-2.4.6.1/build/bin/Corners/*
	TARGET_SYSTEM_PATH/opencv-2.4.6.1/build/bin/InterestPoints/*
	
	Note that the directories 0Degree, 10Degree .. 90Degree contain output from running the tests.


The test images should include the following files:


$ cd Corners/
$ ls
0Degree
10Degree
20Degree
30Degree
40Degree
50Degree
60Degree
70Degree
80Degree
90Degree
CornerPointsWhite_1024x1024_0Degree.png
CornerPointsWhite_1024x1024_10Degree.png
CornerPointsWhite_1024x1024_20Degree.png
CornerPointsWhite_1024x1024_30Degree.png
CornerPointsWhite_1024x1024_40Degree.png
CornerPointsWhite_1024x1024_50Degree.png
CornerPointsWhite_1024x1024_60Degree.png
CornerPointsWhite_1024x1024_70Degree.png
CornerPointsWhite_1024x1024_80Degree.png
CornerPointsWhite_1024x1024_90Degree.png
CornerPoints_1024x1024_0Degree.png
CornerPoints_1024x1024_10Degree.png
CornerPoints_1024x1024_20Degree.png
CornerPoints_1024x1024_30Degree.png
CornerPoints_1024x1024_40Degree.png
CornerPoints_1024x1024_50Degree.png
CornerPoints_1024x1024_60Degree.png
CornerPoints_1024x1024_70Degree.png
CornerPoints_1024x1024_80Degree.png
CornerPoints_1024x1024_90Degree.png
GaussianCornerPoints_1024x1024_0Degree.png
GaussianCornerPoints_1024x1024_10Degree.png
GaussianCornerPoints_1024x1024_20Degree.png
GaussianCornerPoints_1024x1024_30Degree.png
GaussianCornerPoints_1024x1024_40Degree.png
GaussianCornerPoints_1024x1024_50Degree.png
GaussianCornerPoints_1024x1024_60Degree.png
GaussianCornerPoints_1024x1024_70Degree.png
GaussianCornerPoints_1024x1024_80Degree.png
GaussianCornerPoints_1024x1024_90Degree.png
GrayCornerPoints_1024x1024_0Degree.png
GrayCornerPoints_1024x1024_10Degree.png
GrayCornerPoints_1024x1024_20Degree.png
GrayCornerPoints_1024x1024_30Degree.png
GrayCornerPoints_1024x1024_40Degree.png
GrayCornerPoints_1024x1024_50Degree.png
GrayCornerPoints_1024x1024_60Degree.png
GrayCornerPoints_1024x1024_70Degree.png
GrayCornerPoints_1024x1024_80Degree.png
GrayCornerPoints_1024x1024_90Degree.png
SaltPepperCornerPoints_1024x1024_0Degree.png
SaltPepperCornerPoints_1024x1024_10Degree.png
SaltPepperCornerPoints_1024x1024_20Degree.png
SaltPepperCornerPoints_1024x1024_30Degree.png
SaltPepperCornerPoints_1024x1024_40Degree.png
SaltPepperCornerPoints_1024x1024_50Degree.png
SaltPepperCornerPoints_1024x1024_70Degree.png
SaltPepperCornerPoints_1024x1024_80Degree.png
SaltPepperCornerPoints_1024x1024_90Degree.png


$ cd ../InterestPoints/
$ ls
0Degree
10Degree
20Degree
30Degree
40Degree
50Degree
60Degree
70Degree
80Degree
90Degree
GaussianInterestPoints_1024x1024_0Degree.png
GaussianInterestPoints_1024x1024_10Degree.png
GaussianInterestPoints_1024x1024_20Degree.png
GaussianInterestPoints_1024x1024_30Degree.png
GaussianInterestPoints_1024x1024_40Degree.png
GaussianInterestPoints_1024x1024_50Degree.png
GaussianInterestPoints_1024x1024_60Degree.png
GaussianInterestPoints_1024x1024_70Degree.png
GaussianInterestPoints_1024x1024_80Degree.png
GaussianInterestPoints_1024x1024_90Degree.png
GrayInterestPoints_1024x1024_0Degree.png
GrayInterestPoints_1024x1024_10Degree.png
GrayInterestPoints_1024x1024_20Degree.png
GrayInterestPoints_1024x1024_30Degree.png
GrayInterestPoints_1024x1024_40Degree.png
GrayInterestPoints_1024x1024_50Degree.png
GrayInterestPoints_1024x1024_60Degree.png
GrayInterestPoints_1024x1024_70Degree.png
GrayInterestPoints_1024x1024_80Degree.png
GrayInterestPoints_1024x1024_90Degree.png
InterestPoints_1024x1024_0Degree.png
InterestPoints_1024x1024_10Degree.png
InterestPoints_1024x1024_20Degree.png
InterestPoints_1024x1024_30Degree.png
InterestPoints_1024x1024_40Degree.png
InterestPoints_1024x1024_50Degree.png
InterestPoints_1024x1024_60Degree.png
InterestPoints_1024x1024_70Degree.png
InterestPoints_1024x1024_80Degree.png
InterestPoints_1024x1024_90Degree.png
SaltPepperInterestPoints_1024x1024_0Degree.png
SaltPepperInterestPoints_1024x1024_10Degree.png
SaltPepperInterestPoints_1024x1024_20Degree.png
SaltPepperInterestPoints_1024x1024_30Degree.png
SaltPepperInterestPoints_1024x1024_40Degree.png
SaltPepperInterestPoints_1024x1024_50Degree.png
SaltPepperInterestPoints_1024x1024_60Degree.png
SaltPepperInterestPoints_1024x1024_70Degree.png
SaltPepperInterestPoints_1024x1024_80Degree.png
SaltPepperInterestPoints_1024x1024_90Degree.png
WhiteInterestPoints_1024x1024_0Degree.png
WhiteInterestPoints_1024x1024_10Degree.png
WhiteInterestPoints_1024x1024_20Degree.png
WhiteInterestPoints_1024x1024_30Degree.png
WhiteInterestPoints_1024x1024_40Degree.png
WhiteInterestPoints_1024x1024_50Degree.png
WhiteInterestPoints_1024x1024_60Degree.png
WhiteInterestPoints_1024x1024_70Degree.png
WhiteInterestPoints_1024x1024_80Degree.png
WhiteInterestPoints_1024x1024_90Degree.png









