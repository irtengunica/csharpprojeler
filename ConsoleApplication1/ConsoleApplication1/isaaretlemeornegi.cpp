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



#include <cmath>
#include <iostream>
#include <fcntl.h>
#include <sstream>
#include <Windows.h>
#include <thread>
#include "camera.h"


using namespace cv;
using namespace  std;
void run_cam();
int main(int argc, char **argv) {

	capture = cvCaptureFromCAM(1);					  // Take captures from Cam
	cvNamedWindow("Test", CV_WINDOW_AUTOSIZE);	  // Creating Test Window
	cvSetMouseCallback("Test", camera_on_mouse, 0); // Mouse interrupt on Test window. interrupt function is camera_on_mouse
	run_cam();
	return 0;
}
void run_cam(){
	while (1){
		//printf("it is in run_cam function\n");
		frame = cvQueryFrame(capture);
		if (!image)
			init_features();
		cvCopy(frame, image, 0);
		cvCvtColor(image, grey, CV_BGR2GRAY);
		
		if (counter){
			start_track();
			create_circle();
		}
		if (add_point){
			counter++;
			get_features();
			add_point = 0;
		}
		save_old_frames();
		show_camera();
	}
}
