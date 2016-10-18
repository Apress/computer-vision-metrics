#!/bin/sh
#
# Make a horizontal row of detector rotations, foir each detector
#


makeMasterImage() {

echo $1
echo $2

TYPE=$1
COLOR=$2
export $TYPE
export $COLOR

./adjoin.sh -m vertical -b black \
BinTiles_$2$1_SURF.png \
spacer1x1.png \
BinTiles_$2$1_SIFT.png \
spacer1x1.png \
BinTiles_$2$1_BRISK.png \
spacer1x1.png \
BinTiles_$2$1_FAST.png \
spacer1x1.png \
BinTiles_$2$1_HARRIS.png \
spacer1x1.png \
BinTiles_$2$1_GFFT.png \
spacer1x1.png \
BinTiles_$2$1_MSER.png \
spacer1x1.png \
BinTiles_$2$1_ORB.png \
spacer1x1.png \
BinTiles_$2$1_STAR.png \
spacer1x1.png \
BinTiles_$2$1_SIMPLEBLOB.png \
spacer1x1.png \
BinTiles_$2$1_MASTER.png 

}


makeTileImage() {

echo $1
echo $2
echo $3

TYPE=$1
DETECTOR=$2
COLOR=$3
export $TYPE
export $DETECTOR
export $COLOR

./adjoin.sh -m horizontal -b black \
./$1/0Degree/bins/$2_$COLOR$1BinningImage_0Degree.png \
spacer1x1.png \
./$1/10Degree/bins/$2_$COLOR$1BinningImage_10Degree.png \
spacer1x1.png \
./$1/20Degree/bins/$2_$COLOR$1BinningImage_20Degree.png \
spacer1x1.png \
./$1/30Degree/bins/$2_$COLOR$1BinningImage_30Degree.png \
spacer1x1.png \
./$1/40Degree/bins/$2_$COLOR$1BinningImage_40Degree.png \
spacer1x1.png \
./$1/50Degree/bins/$2_$COLOR$1BinningImage_50Degree.png \
spacer1x1.png \
./$1/60Degree/bins/$2_$COLOR$1BinningImage_60Degree.png \
spacer1x1.png \
./$1/70Degree/bins/$2_$COLOR$1BinningImage_70Degree.png \
spacer1x1.png \
./$1/80Degree/bins/$2_$COLOR$1BinningImage_80Degree.png \
spacer1x1.png \
./$1/90Degree/bins/$2_$COLOR$1BinningImage_90Degree.png \
BinTiles_$3$1_$2.png 


}

makeall() {

makeTileImage InterestPoints $1 Black
makeTileImage InterestPoints $1 White
makeTileImage InterestPoints $1 Gray

makeTileImage Corners $1 Black
makeTileImage Corners $1 White
makeTileImage Corners $1 Gray

}


makeall SURF
makeall SIFT
makeall BRISK
makeall FAST
makeall HARRIS
makeall GFFT
makeall MSER
makeall ORB
makeall STAR
makeall SIMPLEBLOB
 

makeMasterImage InterestPoints Black
makeMasterImage InterestPoints White
makeMasterImage InterestPoints Gray

makeMasterImage Corners Black
makeMasterImage Corners White
makeMasterImage Corners Gray



echo "FINISHED."
