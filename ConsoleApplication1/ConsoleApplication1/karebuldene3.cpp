#include "stdafx.h"
#include <stdlib.h>
//#include <cv.h> 
//#include <highgui.h>
//#include <cxcore.h>
//#include <dos.h>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <math.h>
#include <stdio.h>
#include <vector>

#include <cmath>
#include <iostream>


using namespace cv;
using namespace  std;
Mat src; Mat src_gray;
int64 thresh = 100;
int64 max_thresh = 255;
RNG rng(12345);

/// Function header
void thresh_callback(int, void*);

/** @function main */
int main()
{
	Mat canny_output;
	vector<vector<Point> > contours;
	vector<Vec4i> hierarchy;

	/// Load source image and convert it to gray
	VideoCapture capture(1);
	if (!capture.isOpened()){
		printf("hatalý kamera");
		return 1;
	}
	Mat src, src_gray;
	Mat detected_edges;
	while (1){
		capture >> src;
		if (true)
		{
			/// Convert image to gray and blur it
			cvtColor(src, src_gray, CV_BGR2GRAY);
			blur(src_gray, src_gray, Size(3, 3));

			/// Create Window
			char* source_window = "Source";
			namedWindow(source_window, CV_WINDOW_AUTOSIZE);
			imshow(source_window, src);

			createTrackbar(" Canny thresh:", "Source", &thresh, max_thresh, thresh_callback);
			/// Detect edges using canny
			Canny(src_gray, canny_output, thresh, thresh * 2, 3);
			/// Find contours
			findContours(canny_output, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0));

			/// Draw contours
			Mat drawing = Mat::zeros(canny_output.size(), CV_8UC3);
			for (int i = 0; i< contours.size(); i++)
			{
				Scalar color = Scalar(rng.uniform(0, 255), rng.uniform(0, 255), rng.uniform(0, 255));
				drawContours(drawing, contours, i, color, 2, 8, hierarchy, 0, Point());
			}

			/// Show in a window
			namedWindow("Contours", CV_WINDOW_AUTOSIZE);
			imshow("Contours", drawing);;
		}
		else
		{
			break;
		}
	if (waitKey(10) >= 0) break;
	}

}

/** @function thresh_callback */
void thresh_callback(int, void*)
{
	Mat canny_output;
	vector<vector<Point> > contours;
	vector<Vec4i> hierarchy;

	/// Detect edges using canny
	Canny(src_gray, canny_output, thresh, thresh * 2, 3);
	/// Find contours
	findContours(canny_output, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0));

	/// Draw contours
	Mat drawing = Mat::zeros(canny_output.size(), CV_8UC3);
	for (int i = 0; i< contours.size(); i++)
	{
		Scalar color = Scalar(rng.uniform(0, 255), rng.uniform(0, 255), rng.uniform(0, 255));
		drawContours(drawing, contours, i, color, 2, 8, hierarchy, 0, Point());
	}

	/// Show in a window
	namedWindow("Contours", CV_WINDOW_AUTOSIZE);
	imshow("Contours", drawing);
}