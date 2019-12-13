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
typedef long long long64;
LPCWSTR convStringToLPCWSTR(string String)
{
	char *cString = &String[0u];
	long64 size = strlen(cString);
	wchar_t* wString = new wchar_t[size];
	for (long64 i = 0; i < size; i++)
	{
		wString[i] = cString[i];
	}
	wString[size] = 0;
	return wString;
}
char* birlestirt(char *s1, char* s2){
	int i1 = 0, i2 = 0, j;
	while (s1[i1] != '\0') i1++;
	while (s2[i2] != '\0') i2++;
	char *toplam = (char*)malloc(sizeof(char)*(i1 + i2 + 1));
	for (j = 0; j < i1; j++)
		*(toplam + j) = s1[j];
	for (; j < i1 + i2; j++)
		*(toplam + j) = s2[j - i1];
	toplam[j] = '\0';
	return toplam;

}
char * int2char(int iNumber){
	int iNumbersCount = 0;
	int iTmpNum = iNumber;
	while (iTmpNum){
		iTmpNum /= 10;
		iNumbersCount++;
	}
	char *buffer = new char[iNumbersCount + 1];
	for (int i = iNumbersCount - 1; i >= 0; i--){
		buffer[i] = (char)((iNumber % 10) | 48);
		iNumber /= 10;
	}
	buffer[iNumbersCount] = '\0';
	return buffer;

}


int xbelirle(int konumxx){
	if (konumxx >= 350){
		konumxx -= 350;
		//xyon = true;
	}
		
	if (konumxx < 350){
		konumxx = 350 - konumxx;
		//xyon = false;
	}
		
	//konumxx = konumxx/3;
	return konumxx;
}
int ybelirle(int konumyy){
	if (konumyy >= 200){
		konumyy -= 200;
		//yyon = true;
	}
		
	if (konumyy < 200){
		konumyy = 200 - konumyy;
		//yyon = false;
	}
		
	//konumyy =konumyy/ 3;
	return konumyy;

}
void sonucgonder(int konumxx, int konumyy,int lzxx)
{
	bool xyon = true, yyon = true;
	char *lr3, *ud3,*lz3, *toplamstr3, *lr = " LR", *ud = " UD", *lz = " LZ";
	if ((konumxx >= 362) && (konumyy >= 220)) { 
		xyon = false;
		yyon = true;
		konumxx = xbelirle(konumxx);
		konumxx /= 3;
		konumyy = ybelirle(konumyy);
		konumyy /= 3;
		konumxx = 1500-konumxx;
		konumyy += 1500;
	} else{
	
	if ((konumxx >= 362) && (konumyy <= 220)) 
	{
		xyon = false;
		yyon = false;
		konumxx = xbelirle(konumxx);
		konumxx /= 3;
		konumyy = ybelirle(konumyy);
		konumyy /= 3;
		konumxx = 1500-konumxx;
		konumyy = 1500-konumyy;
	}else{
	if ((konumxx <= 362) && (konumyy >= 220)) 
	{
		xyon = true;
		yyon = true;
		konumxx = xbelirle(konumxx);
		konumxx /= 3;
		konumyy = ybelirle(konumyy);
		konumyy /= 3;
		konumxx += 1500;
		konumyy += 1500;
	} else{
	if ((konumxx <= 350) && (konumyy <= 200)) 
	{
		xyon = true;
		yyon = false; 
		konumxx = xbelirle(konumxx);
		konumxx /= 3;
		konumyy = ybelirle(konumyy);
		konumyy /= 3;
		konumxx += 1500;
		konumyy = 1500-konumyy;
	}
	}
	}
	}
	//if  yyon = false; else yyon = true;
	/*konumxx = xbelirle(konumxx);
	konumxx /= 4;
	konumyy = ybelirle(konumyy);
	konumyy /= 3;

	if (xyon) konumxx += 1500; else konumxx = 1500 - konumxx;

	if (yyon) konumyy += 1500; else konumyy = 1500 - konumyy;*/

	lr3 = int2char(konumxx);
	ud3 = int2char(konumyy);
	lz3 = int2char(lzxx);
	toplamstr3 = birlestirt(lr, lr3);
	toplamstr3 = birlestirt(toplamstr3, ud);
	toplamstr3 = birlestirt(toplamstr3, ud3);
	toplamstr3 = birlestirt(toplamstr3, lz);
	toplamstr3 = birlestirt(toplamstr3, lz3);
	printf("hedefx=%d, hedefy=%d, toplamstr3=%s, xyon=%d,yyon=%d\n\r", konumxx, konumyy, toplamstr3, xyon, yyon);
	ShellExecute(NULL, _T("open"), _T("ConsoleApplication11.exe"), convStringToLPCWSTR(toplamstr3), NULL, SW_SHOWNORMAL);
}
void camera_on_mouse2(int event, int x, int y, int flags, void* param){

	if (event == CV_EVENT_LBUTTONDOWN)
	{
		//printf("it is in camera on mouse function\n");
		point = cvPoint(x, y);
		add_point = 1;
		sonucgonder(x, y, 2);
	}
	

}
int main(int argc, char **argv) {
	
	capture = cvCaptureFromCAM(0);					  // Take captures from Cam
	cvNamedWindow("Test", CV_WINDOW_AUTOSIZE);	  // Creating Test Window
	cvSetMouseCallback("Test", camera_on_mouse, 0); // Mouse interrupt on Test window. interrupt function is camera_on_mouse
	cvSetMouseCallback("Test", camera_on_mouse2, 0);
	run_cam();

	return 0;
}
void run_cam(){
	int hedefx = 0, hedefy = 0, hedefxyed = 0, hedefyyed=0;
	char key;
	bool ldur = false,ldon=false, durum = false, buldum = false;
	//char *lr3, *ud3, *toplamstr3, *lr = " LR", *ud = " UD";
	char *lz = " LZ";
	int konumx = 1500;
	int  konumy = 1500;
	int k = -1, sayyy = 0, artis = 50;

	CascadeClassifier brezelDetector;
	brezelDetector.load("brezel.xml");

	if (brezelDetector.empty()) {
		printf("Empty model.");
		
	}
	//ShellExecute(NULL, _T("open"), _T("ekranitara.exe"), NULL, NULL, SW_SHOWNORMAL);
	while (1){

		//printf("it is in run_cam function\n");
		frame = cvQueryFrame(capture);
		Mat frame1 = cvQueryFrame(capture);
		std::vector<Rect> brezels;
		// Detect brezels
		brezelDetector.detectMultiScale(frame1, brezels, 2, 20,
			0 | CV_HAAR_SCALE_IMAGE, Size(75, 75));
		//brezelDetector.detectMultiScale()
		for (int i = 0; i < (int)brezels.size(); i++) {
			konumx = 1500;
			konumy = 1500;
			Point pt1(brezels[i].x, brezels[i].y);
			Point pt2(brezels[i].x + brezels[i].width,
				brezels[i].y + brezels[i].width);
			hedefx = (pt1.x + pt2.x) / 2;
			hedefy = (pt1.y + pt2.y) / 2;
			
			// Draw a rectangle around the detected brezel
			rectangle(frame1, pt1, pt2, Scalar(0, 0, 255), 2);
			rectangle(frame1, Point(hedefx, hedefy), Point((hedefx + 3), (hedefy + 3)), Scalar(0, 255, 0), 2);
			//putText(frame, "Hedef", pt1, FONT_HERSHEY_PLAIN, 1.0,Scalar(255, 0, 0), 2.0);
			printf("buldummm! x=%d y=%d  \n\r", hedefx, hedefy);
		}
		/*********************if ((hedefxyed >= hedefx + 50) || (hedefxyed <= hedefx - 50))
			if (xyon) konumx = konumx+ xbelirle(hedefx); else konumx = konumx - xbelirle(hedefx);
			if ((hedefyyed >= hedefy + 50) || (hedefyyed <= hedefy - 50))
			if (yyon) konumy = konumy + ybelirle(hedefy); else konumy = konumy - ybelirle(hedefy);
			hedefxyed = hedefx;
				hedefyyed = hedefy;
		}
		lr3 = int2char(konumx);

		ud3 = int2char(konumy);

		toplamstr3 = birlestirt(lr, lr3);
		toplamstr3 = birlestirt(toplamstr3, ud);
		toplamstr3 = birlestirt(toplamstr3, ud3);
		toplamstr3 = birlestirt(toplamstr3, lz);
		printf("toplamstr3=%s, xyon=%d,yyon=%d\n\r", toplamstr3,xyon,yyon);      ***********************/
		//ShellExecute(NULL, _T("open"), _T("ConsoleApplication11.exe"), convStringToLPCWSTR(toplamstr3), NULL, SW_SHOWNORMAL);
		if (!image)
			init_features();
		cvCopy(frame, image, 0);
		cvCvtColor(image, grey, CV_BGR2GRAY);
		//cvCanny(image, grey, 0, 100);

		//cvShowImage("Test", grey);
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
		key = cvWaitKey(100);
		if (char(key) == 83 || char(key) == 115) //s ekraný tara
		{
			ShellExecute(NULL, _T("open"), _T("ekranitara.exe"), NULL, NULL, SW_SHOWNORMAL);
		}
		if (char(key) == 75 || char(key) == 107) //k harfi sýfýrla
		{
			ShellExecute(NULL, _T("open"), _T("ConsoleApplication11.exe"), _T(" LR1500 UD1500 LZ0"), NULL, SW_SHOWNORMAL);
		}
		if (char(key) == 97 || char(key) == 65)//a harfi hedefbul
		{
			sonucgonder(hedefx, hedefy, 1);
		}
		if (char(key) == 80 || char(key) == 112)//p harfi ateþ
		{
			sonucgonder(hedefx, hedefy, 500);
		}
		if (char(key) == 13) {
			if (ldur){
				lz = " LZ100";
				ldur = false;
			}
			else
			{
				lz = " LZ0";
				ldur = true;
			}
		}

	}
}
