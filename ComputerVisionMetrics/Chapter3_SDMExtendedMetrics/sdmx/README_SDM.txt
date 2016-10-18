

========================================================================================
This source code is published, in part, in the book:

Computer Vision Metrics: Survey, Taxonomy, and Analysis, ISBN 978-1-4302-5929-9
Author Scott Krig, 2014.

Copyrighted by Apress Media, LLC, all rights reserved.
All code, scripts and images may be used freely for research and educational purposes
as per the Apress Media LLC copyright agreement, contact Apress for more info.
========================================================================================

ALL DEVELOPMENT OF THIS DISTRIBUTION IS FOR MAC OS 10.9.2 and opencv2.4.6.1


This source code implements the extended SDM metrics from Chapter 3 of the book "Computer Vision Metrics 2014 1st edition", Scott Krig author.


---------------------
Overview
---------------------
The source code is contained in a single source code file "SDMExtended.cpp".


Output is generated as a table into "SDMExtended.txt", and as SDM images
created into the files: 

	FILE.png_SDMQUadrant0_8UC1.png
	FILE.png_SDMQUadrant135_8UC1.png
	FILE.png_SDMQUadrant45_8UC1.png
	FILE.png_SDMQUadrant90_8UC1.png

The resulting images are small, and must be rescaled and false colored for best viewing.
To display the images, try using imagej or the imagej FIJI distribution, and rescale the images larger + false color using LUT’s:

http://fiji.sc/Fiji
http://rsbweb.nih.gov/ij/download.html


---------------------
BUILD AND TEST
---------------------

The code relies on a few opencv functions to read images, so install opencv 2.4.6.1 prior to building this code.

CMake was used to build the makefile supplied here, however it will not work on every target system. 
For each target system, some sort of a makefile or build script must be built.

TO build using make:
$ make

Run as follows:

$ ./sdmx FILENAME



