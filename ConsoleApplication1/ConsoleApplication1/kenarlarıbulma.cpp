#include "stdafx.h"

//#include <cv.h> 
//#include <highgui.h>
//#include <cxcore.h>
#include <dos.h>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <math.h>


using namespace cv;
using namespace  std;
int main()
{
	VideoCapture capture(1);
	if (!capture.isOpened()){
		printf("hatalý kamera");
		return 1;
	}
	Mat cap_img, gray_img;
	Mat detected_edges;
	vector<Vec2f> lines;
	while (1){
		capture >> cap_img;
		cvtColor(cap_img, gray_img, CV_BGR2GRAY);
		//Canny(gray_img, detected_edges, 20, 60, 3);
		Canny(gray_img, detected_edges, 50, 200, 3);
		imshow("Edges", detected_edges);
		if (waitKey(10) >= 0) break;
	}
	return 0;
}