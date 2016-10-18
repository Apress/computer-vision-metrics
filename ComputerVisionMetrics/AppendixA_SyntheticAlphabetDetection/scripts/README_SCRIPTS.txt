
========================================================================================
This source code is published, in part, in the book:

Computer Vision Metrics: Survey, Taxonomy, and Analysis, ISBN 978-1-4302-5929-9
Author Scott Krig, 2014.

Copyrighted by Apress Media, LLC, all rights reserved.
All code, scripts and images may be used freely for research and educational purposes
as per the Apress Media LLC copyright agreement, contact Apress for more info.
========================================================================================

ALL DEVELOPMENT OF THIS DISTRIBUTION IS FOR MAC OS 10.9.2


------------------------
Description
------------------------
This directory contains the scripts to drive the detector tests, including 
analysis of the test results from .txt files containing interest point info,
and also to assemble the 2D bin count histograms for the alphabet detector counts.
The individual alphabet detector 2D histogram images for each detector
are created in the C++ code, the scripts are used here to stitch them together.
See the file README_CODE.txt for build and test info for the C++ code.


------------------------
Target system pathnames
------------------------
*NOTE: edit the shell scripts to change hard-coded pathnames for each target system.

*NOTE: all the scripts mentioned here must be copied to opencv-2.4.6.1/build/bin


-------------------------
Downloads/Installs
-------------------------
For using the 2D binning histogram scripts, download the following:

http://www.imagemagick.org/script/download.php
- Install imagemagick
- Add imagemagick to the searchpath (for examlpe, in ~/.login:
		PATH=/opt/ImageMagick/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
 		export PATH

http://www.fmwconcepts.com/imagemagick/adjoin/index.php
- get the script adjoin.sh (this script uses imagemagick)


--------------------------
Top level tests
--------------------------
$ TEST.sh - runs all the detectors against the Black, White and Gray versions
	of the alphabets (0-90 degree images), and produces annotated
	image files *.png. Output also incldues summary text files containing interest point coordinates
	and other information such as strength and octave, depending on each detector method.	
	
	Output goes here:
	opencv-2.4.6.1/build/bin/Corners/[0-90]Degree/TESTRESULTS.txt -> summary test results
	opencv-2.4.6.1/build/bin/Corners/[0-90]Degree/*.png, *.txt -> annotated alphabet images + text files
	opencv-2.4.6.1/build/bin/Corners/[0-90]Degree/bins/*.png, *.txt -> 2D histogram images

	opencv-2.4.6.1/build/bin/InterestPoints/[0-90]Degree/TESTRESULTS.txt -> summary test results
	opencv-2.4.6.1/build/bin/InterestPoints/[0-90]Degree/*.png, *.txt -> annotated alphabet images + text files
	opencv-2.4.6.1/build/bin/InterestPoints/[0-90]Degree/bins/*.png, *.txt -> 2D histogram images


--------------------------
Parsing text output
--------------------------
$ OCTAVE_COUNTS.sh - parses the interest point text file output to find out the pyramid octaves
	where detectors found interest points, some detectors do not use octaves and provide no info.


---------------------------
Creating 2D histogram sets
---------------------------
Run this first to create the 0-90 deg. set of 2D histograms images per detector:
$ BINS_PER_DETECTOR.sh - creates complete 2D histogram sets of detections under 0-90 degree rotations per detector such as:
	"opencv-2.4.6.1/build/bin/BinTiles_BlackCorners_BRISK.png"

Run this next to create the summary table for all detectors:
$ BINNING.sh - creates the full set of 2D histogram bin images such as:
	"opencv-2.4.6.1/build/bin/BinTiles_GrayInterestPoints_ALL.png"

*NOTE: for viewing the 2D histograms and adjusting the LUT's and gray levels, try using imageJ Fiji version:
	http://fiji.sc/Downloads
	Zoom in on the images, and change the LUT’s to provide false coloring.



--------------------------
Included script files
--------------------------
TEST.sh
OCTAVE_COUNTS.sh
BINS_PER_DETECTOR.sh
BinningHistograms
MAKE_TILES.sh
BINNING.sh
MakeBinningImages.sh
OCTAVE_COUNTS.sh
README.txt
TEST.sh
TEST_BWG_ALPHABETS.sh
TEST_GIRLS.sh
adjoin.sh (*DOWNLOAD AS PER INSTRUCTIONS ABOVE, and install here with the scripts)

