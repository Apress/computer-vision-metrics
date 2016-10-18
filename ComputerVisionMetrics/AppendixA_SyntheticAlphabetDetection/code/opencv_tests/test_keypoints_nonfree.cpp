/*M///////////////////////////////////////////////////////////////////////////////////////
//
//  IMPORTANT: READ BEFORE DOWNLOADING, COPYING, INSTALLING OR USING.
//
//  By downloading, copying, installing or using the software you agree to this license.
//  If you do not agree to this license, do not download, install,
//  copy or use the software.
//
//
//                        Intel License Agreement
//                For Open Source Computer Vision Library
//
// Copyright (C) 2000, Intel Corporation, all rights reserved.
// Third party copyrights are property of their respective owners.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
//   * Redistribution's of source code must retain the above copyright notice,
//     this list of conditions and the following disclaimer.
//
//   * Redistribution's in binary form must reproduce the above copyright notice,
//     this list of conditions and the following disclaimer in the documentation
//     and/or other materials provided with the distribution.
//
//   * The name of Intel Corporation may not be used to endorse or promote products
//     derived from this software without specific prior written permission.
//
// This software is provided by the copyright holders and contributors "as is" and
// any express or implied warranties, including, but not limited to, the implied
// warranties of merchantability and fitness for a particular purpose are disclaimed.
// In no event shall the Intel Corporation or contributors be liable for any direct,
// indirect, incidental, special, exemplary, or consequential damages
// (including, but not limited to, procurement of substitute goods or services;
// loss of use, data, or profits; or business interruption) however caused
// and on any theory of liability, whether in contract, strict liability,
// or tort (including negligence or otherwise) arising in any way out of
// the use of this software, even if advised of the possibility of such damage.
//
//M*/

#include "test_precomp.hpp"
#include "opencv2/highgui/highgui.hpp"

using namespace std;
using namespace cv;

const string FEATURES2D_DIR = "features2d";
const string IMAGE_FILENAME = "tsukuba.png";

#define CORNERS 		1
#define INTEREST_POINTS 2

// SAK
int interestPoints_g = 0;
vector<KeyPoint> keypoints_g;
vector<KeyPoint> keypoints_sorted_g;
Mat imageOut_g;
int rows_g = imageOut_g.rows;
int cols_g = imageOut_g.cols;

string imageFilenameOutput_g;
char qualifiedFileName_g[256];


/****************************************************************************************\
*                                     Test for KeyPoint                                  *
\****************************************************************************************/

class CV_FeatureDetectorKeypointsTest : public cvtest::BaseTest
{
public:
    CV_FeatureDetectorKeypointsTest(const Ptr<FeatureDetector>& _detector) :
        detector(_detector) {}

protected:
    virtual void run(int)
    {
        cv::initModule_features2d();
        CV_Assert(!detector.empty());
        string imgFilename = string(ts->get_data_path()) + FEATURES2D_DIR + "/" + IMAGE_FILENAME;

        // SAK
        string imageFilenameOutput_g = string(ts->get_data_path()) + FEATURES2D_DIR + "/" + "Output" + IMAGE_FILENAME;
        cout << endl << "*** InputPath: " << string(ts->get_data_path()) << " :: " << imgFilename.c_str() << endl;
        cout << endl << "*** OutputPath: " << string(ts->get_data_path()) << " :: " << imageFilenameOutput_g.c_str() << endl;

        // Read the test image.
        Mat image = imread(imgFilename);
        if(image.empty())
        {
            ts->printf(cvtest::TS::LOG, "Image %s can not be read.\n", imgFilename.c_str());
            ts->set_failed_test_info(cvtest::TS::FAIL_INVALID_TEST_DATA);
            return;
        }

        // SAK - save the image to use when drawing keypoints
        imageOut_g = imread(imgFilename);
        rows_g = imageOut_g.rows;
        cols_g = imageOut_g.cols;

        vector<KeyPoint> keypoints;
        detector->detect(image, keypoints);

        // SAK
        keypoints_g.clear();
        keypoints_sorted_g.clear();
        detector->detect(image, keypoints_g);

        if(keypoints.empty())
        {
            ts->printf(cvtest::TS::LOG, "Detector can't find keypoints in image.\n");
            ts->set_failed_test_info(cvtest::TS::FAIL_INVALID_OUTPUT);
            return;
        }

        // SAK DEBUG
        cout << endl << "*** " << keypoints.size() << " Interest points for : " << imgFilename.c_str() << endl;
        interestPoints_g = 0;
        interestPoints_g = keypoints.size();

        Rect r(0, 0, image.cols, image.rows);
        for(size_t i = 0; i < keypoints.size(); i++)
        {
            const KeyPoint& kp = keypoints[i];

            // SAK DEBUG
            //cout << "x:" << kp.pt.x << "y:" << kp.pt.y << " ";

            if(!r.contains(kp.pt))
            {
                ts->printf(cvtest::TS::LOG, "KeyPoint::pt is out of image (x=%f, y=%f).\n", kp.pt.x, kp.pt.y);
                ts->set_failed_test_info(cvtest::TS::FAIL_INVALID_OUTPUT);
                return;
            }

            if(kp.size <= 0.f)
            {
                ts->printf(cvtest::TS::LOG, "KeyPoint::size is not positive (%f).\n", kp.size);
                ts->set_failed_test_info(cvtest::TS::FAIL_INVALID_OUTPUT);
                return;
            }

            if((kp.angle < 0.f && kp.angle != -1.f) || kp.angle >= 360.f)
            {
                ts->printf(cvtest::TS::LOG, "KeyPoint::angle is out of range [0, 360). It's %f.\n", kp.angle);
                ts->set_failed_test_info(cvtest::TS::FAIL_INVALID_OUTPUT);
                return;
            }
        }
        cout << endl;
        ts->set_failed_test_info(cvtest::TS::OK);
    }

    Ptr<FeatureDetector> detector;
};

// SAK - new function
static int writeKeypoints(char *name)
{
	FILE *outfile;

//	char pathname[1024];
//	sprintf(pathname, "$s$s", testPath, name);
//	cout << "*** Interest Point Pathname: " << pathname << endl;
//    //setenv("TEST_PATH", "./LittleGirls/SURF.txt", 1);
//    //cout << "***  TEST_PATH " << getenv("TEST_PATH") << endl;

	outfile = fopen(name, "w+");
	if (outfile < 0)
	{
		cout << "*** ERROR OPENING FILE " << name << endl;
		return -1;
	}

	int counter = 0;
    for(size_t i = 0; i < keypoints_g.size(); i++)
    {
//        CV_PROP_RW float size; //!< diameter of the meaningful keypoint neighborhood
//        CV_PROP_RW float angle; //!< computed orientation of the keypoint (-1 if not applicable);
//                                //!< it's in [0,360) degrees and measured relative to
//                                //!< image coordinate system, ie in clockwise.
//        CV_PROP_RW float response; //!< the response by which the most strong keypoints have been selected. Can be used for the further sorting or subsampling
//        CV_PROP_RW int octave; //!< octave (pyramid layer) from which the keypoint has been extracted
//        CV_PROP_RW int class_id; //!< object class (if the keypoints need to be clustered by an object they belong to)

        const KeyPoint& kp = keypoints_g[i];
        char str[256];
        sprintf(str, "x: %f y: %f response: %f size: %f angle: %f octave: %u class_id: %u\n",
        		kp.pt.x,
        		kp.pt.y,
        		kp.response,
        		kp.size,
        		kp.angle,
        		kp.octave,
        		kp.class_id);
        fwrite(str, 1, strlen(str), outfile);

    }
    fclose (outfile);

    return 0;
}


int degrees()
{
	char *str = getenv("DEGREES");
	cout << "degrees() " << str << endl;
	if (str == 0)
	{
		return -1;
	}

	if (!strcmp(str,"0Degree"))
	{
		return 0;
	}
	if (!strcmp(str,"10Degree"))
	{
		return 10;
	}
	if (!strcmp(str,"20Degree"))
	{
		return 20;
	}
	if (!strcmp(str,"30Degree"))
	{
		return 30;
	}
	if (!strcmp(str,"40Degree"))
	{
		return 40;
	}
	if (!strcmp(str,"50Degree"))
	{
		return 50;
	}
	if (!strcmp(str,"60Degree"))
	{
		return 60;
	}
	if (!strcmp(str,"70Degree"))
	{
		return 70;
	}
	if (!strcmp(str,"80Degree"))
	{
		return 80;
	}
	if (!strcmp(str,"90Degree"))
	{
		return 90;
	}

	// all else failed...
	cout << "*** ERROR ON BAD DEGREE VALUE - in degrees() " << endl;
	return -1;

}


#include <math.h>
#define PI 3.14159265
#define DEGREES_TO_RADIANS (PI / 180.0)
int rectifyCoordinates(int *xp, int *yp, double xf, double yf, int degrees)
{
	double degreesf = degrees;

	if ((degrees <= 0) || (degrees > 90))
	{
		return 0;
	}

	if (degrees == 90)
	{
		// needed since SIN 90 == 1,, COS 90 == 0;
		degreesf = 89.99;
	}

	//
	// This function rectifies the interest points from rotated images by affine transforming each coordinate -degrees back to 0 degrees for binning.
	//
	double xorigin = (double)cols_g / 2.0;
	double yorigin = (double)rows_g / 2.0;
	int xboundary = (rows_g - 1024) / 2;
	int yboundary = (cols_g - 1024) / 2;

	double x = xf - xorigin;
	double y = yf - yorigin;

	double hypotx = x;//abs(x);
	double hypoty = y;//abs(y);

	double hypot = sqrt(x*x + y*y);
	//
	// Convert rotated angle in degrees to radians for sin()/cos() functions
	//
	double radians = (degreesf) * DEGREES_TO_RADIANS;

	double newx = ((cos(radians) * (xf - xorigin)) - (sin(radians) * (yf - yorigin))) + xorigin;
	double newy = ((sin(radians) * (xf - xorigin)) + (cos(radians) * (yf - yorigin))) + yorigin;

	double adjx = abs(newx - (double)xboundary) + .5;
	double adjy = abs(newy - (double)yboundary) + .5;

	//cout << "radians " << radians << " hypot " << hypot << " IN " << xf << " " << yf << " HYPOTx/y " << hypotx << " " << hypoty << " newx/y " << newx << " " << newy << " ADJx/y " << adjx << " " << adjy << endl;

    *xp = (int)adjx;
    *yp = (int)adjy;

	return 0;
}


static int getDetectorType()
{

	char *detectorType = getenv("DETECTOR");
	if (!strcmp(detectorType,"INTEREST_POINTS"))
	{
		return INTEREST_POINTS;
	}
	else if (!strcmp(detectorType,"CORNERS"))
	{
		return CORNERS;
	}
	else
	{
		cout << "*** ERROR: DETECTOR shell variable not defined!" << endl;
	}

	return 0;

}

static char * getColor()
{

	char *pcolor = getenv("PCOLOR");

	if (!strcmp(pcolor,"Black"))
	{
		return "Black";
	}
	else if (!strcmp(pcolor,"White"))
	{
		return "White";
	}
	else if (!strcmp(pcolor,"Gray"))
	{
		return "Gray";
	}
	else
	{
		cout << "### ERROR: PCOLOR shell variable not defined!" << endl;
		return "x";
	}

	return "x";

}


static int computeFeatureBinning(char *name, int octave)
{

	// set up for interest points
	int GRIDXOFFSET;
	int GRIDYOFFSET;
	int GRIDXLIMIT;
	int GRIDYLIMIT;


	int GRIDYSIZE;
	int GRIDXSIZE;

	int GROUPWIDTH;
	int GROUPHEIGHT;

	int ALPHABETROWS;
	int ALPHABETCOLUMNS;

	if (getDetectorType() == INTEREST_POINTS)
	{
		// set up for interest points
//		GRIDXOFFSET = 14; // 14 for interest points, 9 for corners
//		GRIDYOFFSET = 15; // 15 for interest points, 6 for corners
//		GRIDXLIMIT = 1024 - 18; // 18 for interest points, 10 for corners
//		GRIDYLIMIT = 1024 - 18; // 18 for interest points, 10 for corners
		GRIDXOFFSET = 14; // 14 for interest points, 9 for corners
		GRIDYOFFSET = 15; // 15 for interest points, 6 for corners
		GRIDXLIMIT = 1024 - 42; // 18 for interest points, 10 for corners
		GRIDYLIMIT = 1024 - 26; // 18 for interest points, 10 for corners


		GRIDYSIZE = 14;
		GRIDXSIZE = 14;

		GROUPWIDTH = 7;	 //12 for corner points, 7 for interest points
		GROUPHEIGHT = 7; // 8 for corner points, 7 for interest points

		ALPHABETROWS = 10; // 10 for interest points, 9 for corners
		ALPHABETCOLUMNS = 10; // 10 for interest points, 6 for corners
	}

	if (getDetectorType() == CORNERS)
	{
		// set up for corners
		GRIDXOFFSET = 8; // 14 for interest points, 9 for corners
		GRIDYOFFSET = 5; // 15 for interest points, 6 for corners
		GRIDXLIMIT = 1024 - 8; // 18 for interest points, 8 for corners
		GRIDYLIMIT = 1024 - 8; // 18 for interest points, 8 for corners


		GRIDYSIZE = 14;
		GRIDXSIZE = 14;

		GROUPWIDTH = 12;	 //12 for corner points, 7 for interest points
		GROUPHEIGHT = 8; // 8 for corner points, 7 for interest points

		ALPHABETROWS = 9; // 10 for interest points, 9 for corners
		ALPHABETCOLUMNS = 6; // 10 for interest points, 6 for corners

	}

    // SAK compute keypoint bin counts
    // The Synthetic Interest Point Alphabet contains multiples of the 75 unique patterns as shown in in Figure A-1.
    // Total unique feature count is 7 x 7 x 84 = 4116, with 7 x 7 = 49 instances of each feature.
    // The features are layed out on a 14 x 14 pixel grid, and the offset of the grid from the top left of the images is xoffset=14 and yoffset=14.

	//	Synthetic Interest Point Alphabet contains multiples of the 63 unique patterns as shown in Figure A-2.
	//	Total unique feature count is 8 x 12 x 63 = 6048, with 8 x 12 = 96 instances of each feature.
	//	Each feature is arranged on a grid of 14 x 14 pixel rectangles,
	//	including 9 rows and 6 columns of features, with the offset from the top left of the images as xoffset= 5 and yoffset=5.

	//int bins[ALPHABETROWS][ALPHABETCOLUMNS] = {0};
	int bins[10][10] = {0};
	int featureIsOutsideRegion = 0;

	int degreesVariable = degrees();
	cout << "DEGREES -> " << degreesVariable;
	int binningCount = 0;
    for(size_t i = 0; i < keypoints_g.size(); i++)
    //for(size_t i = 0; i < 2; i++)
    {
        const KeyPoint& kp = keypoints_g[i];
        int xp = kp.pt.x + 0.5f; //20 + 14; //
        int yp = kp.pt.y+ 0.5f; // 20 + (14 * 9); //

        rectifyCoordinates(&xp, &yp, kp.pt.x,  kp.pt.y, degreesVariable);

        // only bin features in selected octave
        //if ((int)kp.octave == octave)
        if (1 == 1)
        {
			int x = -1;
			// Check to see that coordinate is in the valid pattern region
			if ((xp >= GRIDXOFFSET) && (xp < GRIDXLIMIT))
			{
				x = ((xp - GRIDXOFFSET) / GRIDXSIZE) % ALPHABETCOLUMNS;
			}

			int y;
			y = -1;
			// Check to see that coordinate is in the valid pattern region
			if ((yp >= GRIDYOFFSET) && (yp < GRIDYLIMIT))
			{
				y = ((yp - GRIDYOFFSET) / GRIDYSIZE) % ALPHABETROWS;
			}

			// Check to see that both coordinates are valid
			if (int(x != -1) && int(y != -1))
			{
	//        	cout << "xp: " << xp << " yp: " << yp << endl;
	//        	cout << "x: " << x << " y: " << y << endl;
				binningCount++;
				bins[x][y]++;
			}
			else
			{
				cout << "!!! NOT EXPECTED: " << xp << " " << yp <<endl;
				// Not expected
				featureIsOutsideRegion++;
			}
		}

    }

    // SAK - write out bin totals
    cout << endl << "*** " << name << " BIN COUNTS :: featureIsOutsideRegion = " << featureIsOutsideRegion << " :: binningCount = " << binningCount << " :: keypoints_g.size() " << keypoints_g.size() << endl;
	char str[256];
	sprintf(str, "echo \"*** %s BIN COUNTS :: featureIsOutsideRegion = %u :: binningCount = %u :: keypoints_g.size() = %u\" >> SAKTEST.txt",
			name,
			featureIsOutsideRegion,
			binningCount,
			keypoints_g.size());
    system(str);

    // Convert to 16 bit short ints to load into an image
    unsigned short int ubins[10][10] = {0};
    for (int xc=0; xc < 10; xc++)
    {
    	for (int yc = 0; yc < 10; yc++)
    	{
    		ubins[xc][yc] = (unsigned short int)bins[yc][xc];
    	}
    }

	char binBitmapFileName[256];
	char *degreeStr = getenv("DEGREES");
	if (getDetectorType() == INTEREST_POINTS)
	{
		cout << "*** Writing interest points into bin file ***" << endl;
		sprintf(binBitmapFileName, "%s_%sInterestPointsBinningImage_%s.png", name, getColor(), degreeStr);

	    Mat binBitmap(ALPHABETROWS, ALPHABETCOLUMNS, CV_16UC1, ubins);
	    cout << "*** Create binning bitmap file " << binBitmapFileName << endl;
	    imwrite(binBitmapFileName, binBitmap);
	}
	else if (getDetectorType() == CORNERS)
	{
		cout << "*** Writing corners into bin file ***" << endl;
		sprintf(binBitmapFileName, "%s_%sCornersBinningImage_%s.png", name, getColor(), degreeStr);

	    // Convert to 16 bit short ints to load into an image
	    unsigned short int ubins[9][6] = {0};
	    for (int xc=0; xc < 9; xc++)
	    {
	    	for (int yc = 0; yc < 6; yc++)
	    	{
	    		ubins[xc][yc] = (unsigned short int)bins[yc][xc];
	    	}
	    }

	    Mat binBitmap(ALPHABETROWS, ALPHABETCOLUMNS, CV_16UC1, ubins);
	    cout << "*** Create binning bitmap file " << binBitmapFileName << endl;
	    imwrite(binBitmapFileName, binBitmap);
	}
	else
	{
		cout << "*** ERROR: DETECTOR shell variable undefined! ***" << endl;
		sprintf(binBitmapFileName, "%s_BinningImage_%sDEGREES.png", name, degreeStr);
	}

    for (int y = 0; y < ALPHABETROWS; y++)
    {
    	for (int x = 0; x < ALPHABETCOLUMNS; x++)
    	{
    		cout << bins[x][y] << " ";
    	}
    	cout << endl;

    	// Interest points
    	if (getDetectorType() == INTEREST_POINTS)
    	{
    		sprintf(str, "echo \"%u %u %u %u %u %u %u %u %u %u\" >> SAKTEST.txt",
    				bins[0][y], bins[1][y], bins[2][y], bins[3][y], bins[4][y], bins[5][y], bins[6][y], bins[7][y], bins[8][y], bins[9][y]);
    		system(str);
    	}

    	// Corner points
    	if (getDetectorType() == CORNERS)
    	{
    		sprintf(str, "echo \"%u %u %u %u %u %u\" >> SAKTEST.txt",
    				bins[0][y], bins[1][y], bins[2][y], bins[3][y], bins[4][y], bins[5][y]);
    		system(str);
    	}

    }

    return 0;

}

// SAK
static int drawKeypoints(char *name, int octave)
{
    cout << "*** drawKeypoints " << name << " " << octave << endl;

//	// Sort the keypoints from selected octave
//	int sortCount = 0;
//    for(size_t i = 0; i < keypoints_g.size(); i++)
//    {
//        const KeyPoint& kp = keypoints_g[i];
//        KeyPoint& kps = keypoints_g[sortCount];
//        //if (((int)kp.octave == octave) || (octave == 99))
//        //{
//        	kps.pt.x = kp.pt.x;
//        	kps.pt.y = kp.pt.y;
//
//    		kps.response = kp.response;
//    		kps.size = kp.size;
//    		kps.angle = kp.angle;
//    		kps.octave = kp.octave;
//    		kps.class_id = kp.class_id;
//    		sortCount++;
//        //}
//    }
//    cout << "*** sortCount " << sortCount << endl;

	//
    // draw the keypoints into a new image
    //

    cout << "*** Creating annotated output image... " << name << " dx=" << imageOut_g.cols << " dy: " << imageOut_g.rows << endl;
    //drawKeypoints(imageOut_g, keypoints_g, imageOut_g, Scalar(0xd2, 0xfa, 0xfa /* pale gold */), DrawMatchesFlags::DRAW_OVER_OUTIMG + DrawMatchesFlags::DRAW_RICH_KEYPOINTS);
    drawKeypoints(imageOut_g, keypoints_g, imageOut_g, Scalar(0x82, 0xaa, 0xaa /* pale gold */), DrawMatchesFlags::DRAW_OVER_OUTIMG + DrawMatchesFlags::DRAW_RICH_KEYPOINTS);

    imageFilenameOutput_g.append(string(name));
    cout << "*** Writing to file: " << name << endl;
    if ((unsigned)(imageOut_g.cols) == 0)
    {
    	cout << "ERROR: imageOut_g.data == 0!" << endl;
    }
    imwrite(name, imageOut_g);

    cout << "*** done." << endl;
    return 0;
}

char * getQualifiedName(char *detectorName, char *suffix)
{

	char detectorStr[256];

	if (getDetectorType() == CORNERS)
	{
		sprintf(detectorStr, "Corners");
	}
	else if (getDetectorType() == INTEREST_POINTS)
	{
		sprintf(detectorStr, "InterestPoints");
	}
	else
	{
		cout << "*** ERROR: DETECTOR TYPE NOT SET!" << endl;
		sprintf(detectorStr, "x");
	}
	char *degreeStr = getenv("DEGREES");
	char *pcolor = getColor();

	// BRISK_BlackCornerPoints90Degree.png
	sprintf(qualifiedFileName_g, "%s_%s%s%s.%s", detectorName, pcolor, detectorStr, degreeStr, suffix);
	cout << "*** QUALIFIED NAME: " << qualifiedFileName_g << endl;

	return qualifiedFileName_g;

}

// Registration of tests

TEST(Features2d_Detector_Keypoints_SURF, validation)
{
	char *strenv = getenv("DEGREES");
	if (strenv == 0)
	{
		cout << "DEGREES SHELL VARIABLE NOT SET" << endl;
		exit(0);
	}
	cout << "DEGREES SET " << strenv << " " << degrees() << endl;

	cout << "*** NAME: " << getQualifiedName("SURF","X") << endl;

    CV_FeatureDetectorKeypointsTest test(Algorithm::create<FeatureDetector>("Feature2D.SURF"));
    test.safe_run();

    // SAK
    char str[256];
    sprintf(str, "echo \"***  TestName SURF %u \" >> SAKTEST.txt", interestPoints_g);
    system(str);
    writeKeypoints(getQualifiedName("SURF","txt"));
    drawKeypoints(getQualifiedName("SURF","png"),0);
    computeFeatureBinning("SURF", 0);

}

TEST(Features2d_Detector_Keypoints_SIFT, validation)
{
    CV_FeatureDetectorKeypointsTest test(FeatureDetector::create("SIFT"));
    test.safe_run();

    // SAK
    char str[256];
    sprintf(str, "echo \"***  TestName SIFT %u \" >> SAKTEST.txt", interestPoints_g);
    system(str);
    writeKeypoints(getQualifiedName("SIFT","txt"));
    drawKeypoints(getQualifiedName("SIFT","png"),99);
    computeFeatureBinning("SIFT", 99);
}





