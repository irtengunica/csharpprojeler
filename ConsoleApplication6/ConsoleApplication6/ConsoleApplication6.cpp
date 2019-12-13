// Background average sample code done with averages and done with codebooks
/*
************************************************** */
#include "stdafx.h"
#include <cv.h>
#include "cvaux.h"
#include "cxmisc.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <dos.h>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <stdio.h>
#include <opencv\cv.h>
#include <opencv\highgui.h>
#include <iostream>

using namespace cv;
using namespace  std;
int main()
{
	VideoCapture capture(1);
	if (!capture.isOpened()){
		printf("hatalý kamera");
		return 1;
	}
	Mat cap_img,gray_img;
	Mat detected_edges;
	while (1){
		capture >> cap_img;
		cvtColor(cap_img, gray_img, CV_BGR2GRAY);
		Canny(gray_img, detected_edges, 20, 60, 3);
		imshow("Edges", detected_edges);
		if (waitKey(10) >= 0) break;
	}
	return 0;
}