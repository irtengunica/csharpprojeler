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
#include <math.h>
#include <stdio.h>


#include <cmath>
#include <iostream>


using namespace cv;
using namespace  std;
#define CLS()

//printf("\033 [H\033[2J");
//fflush(stdout);
typedef struct {

	Point sum;
	Point sum_abs;
	Point av_sum;
	Point av_abs;
	float av_angle;
	int n;
} LineStruct;

float calcAngle(Point delta)
{
	float angle;
	if (delta.y != 0)
		angle = (float)atan(((double)delta.x / -(double)delta.y));
	else
		angle = CV_PI / 2;
	return angle;
}
void setLabel(Mat& dst, string label, vector& contour)
{
	int fontface = FONT_HERSHEY_PLAIN;
	double scale = 0.5;
	int thickness = 1;
	int baseline = 0;
	//char text[50];
	Size text = getTextSize(label, fontface, scale, thickness, &baseline);
	Rect r = boundingRect(contour);
	//putText(im, label, fontFace, fontScale, CV_RGB(0,0,0), thickness, 8);//char screenshot[50];
	//int screenshot_counter =0;
	//putText(cdst, text, label, fontface, scale, Scalar(0,255,0), thickness, 8);
}
int main(int agrc, char * argv[1])
{
	CvCapture* capture = 0;
	capture = cvCreateFileCapture(argv[1]);
	if (!capture)
	{
		return -1;
	}
	IplImage *bgr_frame = cvQueryFrame(capture);
	CvSize size = cvSize((int)cvGetCaptureProperty(capture, CV_CAP_PROP_FRAME_WIDTH), (int)cvGetCaptureProperty(capture, CV_CAP_PROP_FRAME_HEIGHT));
	IplImage* pgm_frame = cvCreateImage(size, IPL_DEPTH_8U, 1);
	int frame_count = 0;
	int frames = (int)cvGetCaptureProperty(capture, CV_CAP_PROP_FRAME_COUNT);

	//char text[50];
	//int fontFace = FONT_HERSHEY_PLAIN;
	//double fontScale =1;
	//int thickness =1;
	char screenshot[50];
	int screenshot_counter = 0;
	while ((bgr_frame = cvQueryFrame(capture)) != NULL)
	{
		frame_count++;
		if (frame_count == frames - 1)
		{
			cvSetCaptureProperty(capture, CV_CAP_PROP_POS_FRAMES, 0);
			frame_count = 0;
		}
		cvConvertImage(bgr_frame, pgm_frame, 0);
		Mat gray = pgm_frame;
		Mat dst = bgr_frame;
		GaussianBlur(gray, gray, Size(9, 9), 2, 2);
		Canny(gray, gray, 50, 200, 3);
		vector<vector<Point> >contours;
		findContours(gray.clone(), contours, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE);
		vector<Point>approx;
		//Mat dst = bgr_frame.clone();
		for (int i = 0; i< contours.size(); i++)
		{
			approxPolyDP(Mat(contours[i]), approx, arcLength(cv::Mat(contours[i]), true)* 0.02, true);
			if (fabs(contourArea(contours[i]))<100 || !isContourConvex(approx))
				//{
				continue;
			//}

			if (approx.size() >= 4 && approx.size() >6)
			{

				printf("circle Detection\n");
				double area = contourArea(contours[i]);
				Rect  r = boundingRect(contours[i]);
				int radius = r.width / 2;
				if (abs(1 - ((double)r.width / r.height)) <= 0.2 && abs(1 - (area / (CV_PI * pow(radius, 2)))) <= 0.2)
				{
					setLabel(dst, "CIR", contours[i]);
				}
			}
		}

		Point circle_center;
		circle(dst, Point(size.width / 2, size.height / 2), 4, Scalar(255, 0, 0), -1, 8, 0);
		CLS();
		if ((!pgm_frame) || (!bgr_frame))
			break;
		cvShowImage("Edges", pgm_frame);
		cvShowImage("Result", bgr_frame);
		imshow("Detected Lines", dst);
		char c = cvWaitKey(33);
		if (c == 'p')

		{
			c = 0;
			while (1)
			{
				c = cvWaitKey(33);
				if (c == 'p') break;
				if (c == 27) break;
				if (c == 's')
				{
					sprintf(screenshot, "screenshot %d.jpg", screenshot_counter);
					imwrite(screenshot, dst);
					screenshot_counter++;
				}
			}
		}
		if (c == 27)
			break;
		if (c == 's')
		{
			sprintf(screenshot, "Screenshot%d.jpg", screenshot_counter);
			imwrite(screenshot, dst);
			screenshot_counter++;
		}
	}
	cvReleaseImage(&bgr_frame);
	cvReleaseImage(&pgm_frame);
	cvReleaseCapture(&capture);
	cvDestroyWindow("Edges");
	cvDestroyWindow("Result");
	cvDestroyWindow("Detected Lines");
	return 0;
}