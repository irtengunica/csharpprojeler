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
#include <fcntl.h>
#include <sstream>

using namespace cv;
using namespace  std;

CvCapture* capture = 0;	//image window
IplImage *img = 0;
IplImage *gray;

int main()
{
	CvCapture* capture = cvCaptureFromCAM(1);	//Initializing camera
	IplImage *img1 = cvRetrieveFrame(capture);	//Capture a frame and retrieve the frame

	IplImage * original = cvCreateImage(cvGetSize(img1), 8, 3);;//cvCloneImage(img1); //cvLoadImage("image.jpg",1);
	IplImage * img = cvCreateImage(cvGetSize(original), 8, 1); //cvLoadImage("image.jpg",0);
	IplImage * bw = cvCreateImage(cvGetSize(original), 8, 1);
	cvNamedWindow("Test");

	while (1){
		//Capturing the image
		img1 = cvRetrieveFrame(capture);
		//cvSaveImage("image.jpg",img1);

		//cvCopyImage(img1, original);


		cvCvtColor(original, img, CV_RGB2GRAY);
		// Find Egdes 
		cvCanny(img, bw, 0, 100);
		cvShowImage("Test", bw);

		// fill some holes in the contours (comment out those lines to see the difference)
		cvDilate(bw, bw, NULL, 2);
		cvErode(bw, bw, NULL, 2);

		// Create Memory for contour-search
		CvMemStorage* stor = cvCreateMemStorage(0);
		CvSeq* cont = cvCreateSeq(CV_SEQ_ELTYPE_POINT, sizeof(CvSeq), sizeof(CvPoint), stor);


		// find external contours
		cvFindContours(bw, stor, &cont, sizeof(CvContour), CV_RETR_EXTERNAL, 2, cvPoint(0, 0));


		// some fun with the color, ignore it (just some transformation of color-space)
		cvCvtColor(original, original, CV_RGB2HSV);




		// loop over all contours
		for (; cont; cont = cont->h_next)
		{
			// size of pointArray and polygon
			int point_cnt = cont->total;


			cout << "point_cnt: " << point_cnt << endl;


			// no small contours
			if (point_cnt<20){
				continue;
			}


			// Allocate memory for contour point set.
			CvPoint* PointArray = (CvPoint*)malloc(point_cnt*sizeof(CvPoint));


			// Get contour point set.
			cvCvtSeqToArray(cont, PointArray, CV_WHOLE_SEQ);



			for (int i = 0; i <= point_cnt; i++){
				// Show the Pixelcoordinates
				cout << PointArray[i].x << " " << PointArray[i].y << endl;


				// have some fun with the color
				int h_value = int(i*3.0 / point_cnt * 0) % 100;

				cvLine(original, PointArray[i%point_cnt], PointArray[(i + 1) % point_cnt], cvScalar(h_value, 255, 255), 4);
			}



		}




		// back to RGB-colorSpace

		cvCvtColor(original, original, CV_HSV2BGR);


		cvNamedWindow("img", 1);
		cvShowImage("img", original);

		cvWaitKey(500);
		if (cvWaitKey(500) == 27)break;
	}

	cvReleaseImage(&original);
	cvReleaseImage(&img);
	cvReleaseImage(&bw);
	cvDestroyAllWindows();
	return 0;
}