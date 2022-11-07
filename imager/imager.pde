//global variables
//
int appWidth, appHeight;
float backgroundImageX, backgroundimageY, backgroundimageWidth, backgroundimageHeight;
float smallerDimension, largerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
Boolean widthLarger= false, heightLarger=false;
PImage pic;
Boolean nightMode=false;
//
size(1920, 1080); //landscape
//copy display algorithm
appWidth = width;
appHeight = height;
//
//aspect ratio of background image
int picWidth = 900;
int picHeight = 600;
//image oreintation: landscape, square, portrait
if (picWidth >= picHeight) {//true if landscape or square
largerDimension = picWidth;
smallerDimension = picHeight;
widthLarger = true;
} else {//false if portrit
largerDimension = picHeight;
smallerDimension = picWidth;
heightLarger = true;
}
//
//Aspect ratio calculations
if (widthLarger ==true) imageWidthRatio = largerDimension/largerDimension;
if (widthLarger ==true) imageHeightRatio = smallerDimension/largerDimension;
if (heightLarger == true) imageWidthRatio = smallerDimension/largerDimension;
if (heightLarger == true) imageHeightRatio = largerDimension/largerDimension;
//population
pic = loadImage("../Images Used/boom.jpg");
backgroundImageX = appWidth*0;
backgroundimageY = appHeight*0;
backgroundimageWidth = appWidth-1;
backgroundimageHeight = appHeight-1;
//
//adjust image variables for aspect ratio
float picWidthAdjusted, picHeightAdjusted;
picWidthAdjusted = backgroundimageWidth * imageWidthRatio;
picHeightAdjusted = backgroundimageHeight * imageHeightRatio;
//rectangular layout and image drawing to canvas
rect(backgroundImageX, backgroundimageY, backgroundimageWidth, backgroundimageHeight);
//
if (nightMode == false ) tint(255, 64); //gray scale, day use
if (nightMode == true ) tint(64, 64, 40); //rgb nightmode
image(pic, backgroundImageX, backgroundimageY, backgroundimageWidth, backgroundimageHeight);
image(pic, width/2, 0);
