#include "stdafx.h"
#include <stdlib.h>
#include <vector>
//#include <cv.h> 
//#include <highgui.h>
//#include <cxcore.h>
//#include <dos.h>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/core/core.hpp>

#include <math.h>
#include <stdio.h>
#include <string.h>



#include <cmath>
#include <iostream>
#include <fcntl.h>
#include <sstream>
#include <Windows.h>
#include <thread>


using namespace cv;
using namespace  std;



int main()
{
	const char* windowName = "Fingertip detection";
	// Capture images from any camera connected to the system
	CvCapture* capture = cvCaptureFromCAM(0);
	int minH = 130, maxH = 160, minS = 10, maxS = 40, minV = 75, maxV = 130;
	cv::namedWindow(windowName);
	cv::createTrackbar("MinH", windowName, &minH, 180);
	cv::createTrackbar("MaxH", windowName, &maxH, 180);
	cv::createTrackbar("MinS", windowName, &minS, 255);
	cv::createTrackbar("MaxS", windowName, &maxS, 255);
	cv::createTrackbar("MinV", windowName, &minV, 255);
	cv::createTrackbar("MaxV", windowName, &maxV, 255);

	
	while (1)
	{
		cv::Mat frame = cvQueryFrame(capture);
		//cap >> frame;
		cv::Mat hsv;
		cv::cvtColor(frame, hsv, CV_BGR2HSV);
		cv::inRange(hsv, cv::Scalar(minH, minS, minV), cv::Scalar(maxH, maxS, maxV), hsv);
		int blurSize = 5;
		int elementSize = 5;
		cv::medianBlur(hsv, hsv, blurSize);
		cv::Mat element = cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(2 * elementSize + 1, 2 * elementSize + 1), cv::Point(elementSize, elementSize));
		cv::dilate(hsv, hsv, element);

		std::vector<std::vector<cv::Point> > contours;
		std::vector<cv::Vec4i> hierarchy;
		cv::findContours(hsv, contours, hierarchy, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE, cv::Point(0, 0));
		//int largestContour,i;
		decltype(contours.size()) largestContour = 0;
		//std::size_t i = 0;
		for (decltype(contours.size()) i = 1; i < contours.size(); i++)
		{
			if (cv::contourArea(contours[i]) > cv::contourArea(contours[largestContour]))
				largestContour = i;
		}
		cv::drawContours(frame, contours, largestContour, cv::Scalar(0, 0, 255), 1);
		cv::imshow(windowName, hsv);
		cv::imshow("goruntu", frame);
		if (cv::waitKey(30) >= 0) break;
	}
	return 0;
}