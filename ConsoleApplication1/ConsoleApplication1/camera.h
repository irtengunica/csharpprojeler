/*
* camera.h
*
*  Created on: Oct 1, 2011
*  Author: Tuna AYAN tunayan@gmail.com
*/

#ifndef CAMERA_H_
#define CAMERA_H_

CvPoint point;
int add_point = 0;
CvCapture *capture;
IplImage* frame, tmp_frame;
CvPoint2D32f *points_32f[2] = { 0, 0 };
CvPoint2D32f *temp_points;
int counter = 0;

/*****Features*****/
IplImage *image = 0,
*grey = 0,
*prev_grey = 0,
*pyramid = 0,
*prev_pyramid = 0,
*swap_temp;
/*****END*********/

/****Features Control****/
char* status = 0;
int flags;
/******END***************/

void camera_on_mouse(int event, int x, int y, int flags, void* param){

	if (event == CV_EVENT_LBUTTONDOWN)
	{
		//printf("it is in camera on mouse function\n");
		point = cvPoint(x, y);
		add_point = 1;
	}

}

void create_circle()
{
	//printf("it is in create_circle function\n");
	int i = 0, k = 0;
	for (; i< counter; i++){
		if (!status[i])
			continue;
		points_32f[1][k++] = points_32f[1][i];
		cvCircle(image, cvPointFrom32f(points_32f[1][i]), 3, CV_RGB(255, 0, 0), -1, 8, 0);
	}
}
void show_camera(){
	//printf("it is in show_camera function\n");
	cvShowImage("Test", image);
	char c = cvWaitKey(33);
	if (c == 27)exit(0);
	

}
void init_features(){
	//printf("it is in init_features function\n");
	image = cvCreateImage(cvGetSize(frame), 8, 3);
	image->origin = frame->origin;
	grey = cvCreateImage(cvGetSize(frame), 8, 1);
	prev_grey = cvCreateImage(cvGetSize(frame), 8, 1);
	pyramid = cvCreateImage(cvGetSize(frame), 8, 1);
	prev_pyramid = cvCreateImage(cvGetSize(frame), 8, 1);
	flags = 0; //flag for track accomplished
	status = (char*)cvAlloc(500);
	points_32f[0] = (CvPoint2D32f*)cvAlloc(500 * sizeof(points_32f[0][0]));
	points_32f[1] = (CvPoint2D32f*)cvAlloc(500 * sizeof(points_32f[0][0]));
}

void get_features(){
	//printf("it is in get features function\n");
	points_32f[1][counter - 1] = cvPointTo32f(point);
	cvFindCornerSubPix(
		grey,
		points_32f[1] + counter - 1,
		1,
		cvSize(15, 15),
		cvSize(-1, -1),
		cvTermCriteria(CV_TERMCRIT_ITER | CV_TERMCRIT_EPS, 20, 0.03)
		);

}
void start_track(){
	//printf("it is in start_track function\n");
	cvCalcOpticalFlowPyrLK(
		prev_grey,
		grey,
		prev_pyramid,
		pyramid,
		points_32f[0],//prev one
		points_32f[1],//current one
		counter,
		cvSize(15, 15),
		3,
		status,
		0,
		cvTermCriteria(CV_TERMCRIT_ITER | CV_TERMCRIT_EPS, 20, 0.03),
		flags
		);
	//flags |= CV_LKFLOW_PYR_A_READY;

}
void save_old_frames(){
	CV_SWAP(prev_grey, grey, swap_temp);
	CV_SWAP(prev_pyramid, pyramid, swap_temp);
	CV_SWAP(points_32f[0], points_32f[1], temp_points);
}

#endif /* CAMERA_H_ */