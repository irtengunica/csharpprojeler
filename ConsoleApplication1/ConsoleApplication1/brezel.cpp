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

int main() {
	int hedefx, hedefy;
	String lr, ud, lz;

	cvNamedWindow("Brezel detecting camera", 1);
	// Capture images from any camera connected to the system
	CvCapture* capture = cvCaptureFromCAM(0);
	//const int current_width = static_cast<int>(capture->get(CV_CAP_PROP_FRAME_WIDTH));
	//const int current_height = static_cast<int>(capture->get(CV_CAP_PROP_FRAME_HEIGHT));
	//int width = int(capture.get(cv.CAP_PROP_FRAME_WIDTH));
	//int height = int(self.__capture.get(cv2.CAP_PROP_FRAME_HEIGHT));
	//double width = capture.get(CV_CAP_PROP_FRAME_WIDTH);
	//double height = capture.get(CV_CAP_PROP_FRAME_HEIGHT);
	//std::cout << capture.get(CV_CAP_PROP_FRAME_WIDTH) << std::endl;
	//std::cout << m_cam.get(CV_CAP_PROP_FRAME_HEIGHT) << std::endl;
	//cvSetCaptureProperty(camLeft, CV_CAP_PROP_FOURCC, CV_FOURCC('M', 'J', 'P', 'G'));
	//cvSetCaptureProperty(camLeft, CV_CAP_PROP_FRAME_WIDTH, CAM_IMAGE_WIDTH);
	//cvSetCaptureProperty(camLeft, CV_CAP_PROP_FRAME_HEIGHT, CAM_IMAGE_HEIGHT);
	//Size siii=cvGetSize(capture);
	//double w;
	//double h;
	//w = double(siii.width);
	//h = double(siii.height);
	//cvSize(w, h);
	//CvSize boyut;
	//boyut = cvGetSize(capture);
	//printf("%d \n\r", boyut.width);
	//cout << " dimensions " << cvSize(w, h) << endl;
	
	
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
		int konumx = 1500;
		int  konumy = 1500;
		// Detect brezels
		brezelDetector.detectMultiScale(frame, brezels, 1.1, 3,
			0 | CV_HAAR_SCALE_IMAGE, Size(250, 250));
		for (int i = 0; i < (int)brezels.size(); i++) {
			Point pt1(brezels[i].x, brezels[i].y);
			Point pt2(brezels[i].x + brezels[i].width,
				brezels[i].y + brezels[i].width);
			hedefx = (pt1.x + pt2.x) / 2;
			hedefy = (pt1.y + pt2.y) / 2;
			// Draw a rectangle around the detected brezel
			rectangle(frame, pt1, pt2, Scalar(0, 0, 255), 2);

			rectangle(frame, Point(hedefx, hedefy), Point((hedefx + 3), (hedefy + 3)), Scalar(0, 255, 0), 2);
			//putText(frame, "Hedef", pt1, FONT_HERSHEY_PLAIN, 1.0,Scalar(255, 0, 0), 2.0);
			
			printf("buldummm! x=%d y=%d  \n\r", hedefx, hedefy);
			if (hedefx >= 250)
			{
				printf("saðagit \n\r");
				konumx -= 8;
			};
			if (hedefx >= 250)
			{
				printf("solagit \n\r");
				konumx += 8;
			};
			if (hedefy <= 150){
				printf("aþaðýgit \n\r");
				konumy += 8;
			};
			if (hedefy >= 150){
				printf("yukarýgit \n\r");
				konumy -= 8;
			};
			if (konumx >= 2200) konumx = 1500;
			if (konumx <= 800) konumx = 1500;
			if (konumy >= 2200) konumy = 1500;
			if (konumy <= 800) konumy = 1500;
			printf("konum...! x=%d y=%d  \n\r", konumx, konumy);
			
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