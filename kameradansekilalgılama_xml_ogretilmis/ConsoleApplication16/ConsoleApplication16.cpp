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
#include <string.h>
#include <fstream>



#include <cmath>
#include <iostream>
#include <fcntl.h>
#include <sstream>
#include <Windows.h>
#include <thread>

using namespace std;
using namespace cv;

int main() {

	cvNamedWindow("Brezel detecting camera", 1);
	// Capture images from any camera connected to the system
	CvCapture* capture = cvCaptureFromCAM(0);

	// Load the trained model
	CascadeClassifier brezelDetector;
	brezelDetector.load("brezel.xml");

	if (brezelDetector.empty()) {
		printf("Empty model.");
		return 0;
	}

	char key;
	while (true) {

		// Get a frame from the camera
		Mat frame = cvQueryFrame(capture);

		std::vector<Rect> brezels;

		// Detect brezels
		brezelDetector.detectMultiScale(frame, brezels, 1.1, 30,
			0 | CV_HAAR_SCALE_IMAGE, Size(200, 320));

		for (int i = 0; i < (int)brezels.size(); i++) {
			Point pt1(brezels[i].x, brezels[i].y);
			Point pt2(brezels[i].x + brezels[i].width,
				brezels[i].y + brezels[i].width);

			// Draw a rectangle around the detected brezel
			rectangle(frame, pt1, pt2, Scalar(0, 0, 255), 2);
			putText(frame, "Brezel", pt1, FONT_HERSHEY_PLAIN, 1.0,
				Scalar(255, 0, 0), 2.0);

		}

		// Show the transformed frame
		imshow("Brezel detecting camera", frame);

		// Read keystrokes, exit after ESC pressed
		key = cvWaitKey(10);
		if (char(key) == 27) {
			break;
		}
	}

	return 0;
}