//global variables
//
int appWidth, appHeight;
float backgroundImageX, backgroundimageY, backgroundimageWidth, backgroundimageHeight;
PImage pic;
size(1920, 1080); //landscape
//copy display algorithm
appWidth = width;
appHeight = height;
//
//population
pic = loadImage("../Images Used/boom.jpg");
backgroundImageX = appWidth*0;
backgroundimageY = appHeight*0;
backgroundimageWidth = appWidth-1;
backgroundimageHeight = appHeight-1;
//rectangular layout and image drawing to canvas
rect(backgroundImageX, backgroundimageY, backgroundimageWidth, backgroundimageHeight);
//
image(pic, backgroundImageX, backgroundimageY, backgroundimageWidth, backgroundimageHeight);
tint(255, 128, #FFFFFF);  // Apply transparency without changing color
image(pic, width/2, 0);
