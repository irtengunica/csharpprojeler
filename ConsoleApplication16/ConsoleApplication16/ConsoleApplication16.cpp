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


using namespace cv;
using namespace  std;

std::wstring s2ws(const std::string& s)
{
	int len;
	int slength = (int)s.length() + 1;
	len = MultiByteToWideChar(CP_WINNEUTRAL, 0, s.c_str(), slength, 0, 0);
	wchar_t* buf = new wchar_t[len];
	MultiByteToWideChar(CP_WINNEUTRAL, 0, s.c_str(), slength, buf, len);
	std::wstring r(buf);
	delete[] buf;

	return r;
}
typedef long long long64;

/**Don�t forget to use delete[]*/
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

/*class kelime{
private:
	char str[80];
public:
	kelime(){ strcpy(str, ""); }
	kelime(char s[]){ strcpy(str, s); }
	void goster()  { cout << str; }
	kelime operator+ (kelime ss) const{   // a��r� y�kleme 
		kelime temp;
		if (strlen(str) + strlen(ss.str) < 80){
			strcpy(temp.str, str);
			strcat(temp.str, ss.str);
		}
		else{
			cout << "\n kelime b�y�k"; exit(1);
		}
		return temp;
	}
};*/
template <typename T>
string NumberToString(T Number)
{
	stringstream ss;
	ss << Number;
	string str = ss.str();
	return str;
}
/*template <typename T>
string NumberToString(T Number)
{
char *intStr = itoa(Number);
string str = string(intStr);
}*/
/*template <typename T>
long atoi1(const std::basic_string<T> &str){
std::basic_stringstream<T> stream(str);
long res;
return !(stream >> res) ? 0 : res;
}
template <typename T>
std::basic_string<T> itoa1(long n, unsigned w = 0){
std::basic_stringstream<T> stream;
if (w){
stream.fill('0');
stream.width(w);
}
stream << n;
return stream.str();
}*/
/*char * birlestir(char *str1, char *str2){
	char *buffer;
	buffer = strcat(str1, str2);
	return buffer;
}*/
int char2int(char *szBroj){
	int counter = 0;
	int results = 0;
	while (1){
		if (szBroj[counter] == '\0'){
			break;
		}
		else{
			results *= 10;
			results += (int)szBroj[counter] - 48;
			counter++;
		}
	}
	return results;

}
/*char *dizidiziekle(char *tplam, char *ekle){
	
	int tpdizideg=0;
	int ekdizideg = 0;
	while (tplam[tpdizideg] != '\0')
		tpdizideg++;
	while (ekle[ekdizideg] != '\0')
		ekdizideg++;
	
	int diziboyutu = tpdizideg + ekdizideg;
	if (diziboyutu <= 1){ diziboyutu = 3; }
	char sonucdizi[10];
	for (int i = 0; i < tpdizideg ; i++){
		sonucdizi[i] =tplam[i];
	}
	
	sonucdizi[diziboyutu] = '/0';
	return sonucdizi;
}*/
/*char * MyStrCat(char *s, char *Add)
{
	char *Ret = s;
	while (*s)  s++; // string sonuna git
	while (*s++ = *Add++); // ekle
	return Ret;
}*/

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
int xsifirla(int konumxx){
	if (konumxx >= 1600 ){
		konumxx = 1600;	}
	if (konumxx <= 1400){
		konumxx = 1400;
	}
	return konumxx;
}
int ysifirla(int konumyy){
	if (konumyy >= 1600){
		konumyy = 1600;
	}
	if (konumyy <= 1400){
		konumyy = 1400;
	}
	
	return konumyy;
}
int xbelirle(int konumxx){
	if (konumxx >= 350)
		konumxx -= 350;
	if (konumxx < 350)
		konumxx = 350-konumxx;
	
	return konumxx;
}
int ybelirle(int konumyy){
	if (konumyy >= 200)
		konumyy -= 200;
	if (konumyy < 200)
		konumyy = 200 - konumyy;

	return konumyy;

}
int hedefxdizi[10], hedefydizi[10];
void diziyeat(int konumxx,int konumyy,int sayy){
	hedefxdizi[sayy] = konumxx;
	hedefydizi[sayy] = konumyy;


}
#define PI 3.14159265


int main() {
	int hedefx=0, hedefy=0;
	
	
	char *lr3, *ud3, *toplamstr3, *lr = " LR", *ud = " UD", *lz = " LZ=0";
	wstring stemp;
	//	LPCWSTR aaaa;
	//string s;

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
	bool ldur = false,durum=false,buldum=false;
	int say = 0;
	
	//motor s�f�rla
	int konumx = 1500;
	int  konumy = 1500;
	int k = -1,sayyy=0, artis=50;
	ShellExecute(NULL, _T("open"), _T("ekranitara.exe"), NULL, NULL, SW_SHOWNORMAL);
//	double param1, derece;
	while (true) {
		// Get a frame from the camera
		Mat frame = cvQueryFrame(capture);
		std::vector<Rect> brezels;
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
			konumx = xbelirle(hedefx);
			konumy = ybelirle(hedefy);
			//param1 = konumx / konumy;
			//derece = atan(param1) * 180 / PI;
		}
		if (sayyy <= 9) {
			diziyeat(konumx, konumy, sayyy);
			sayyy++;
			if (sayyy == 10){
				break;
			}
			printf("haf�za! x=%d y=%d  \n\r", hedefxdizi[sayyy], hedefydizi[sayyy]);

		}

		lr3 = int2char(konumx);

		ud3 = int2char(konumy);

		toplamstr3 = birlestirt(lr, lr3);
		toplamstr3 = birlestirt(toplamstr3, ud);
		toplamstr3 = birlestirt(toplamstr3, ud3);
		toplamstr3 = birlestirt(toplamstr3, lz);
		printf("toplamstr3=%s\n\r", toplamstr3);


		//ShellExecute(NULL, _T("open"), _T("ConsoleApplication11.exe"), convStringToLPCWSTR(toplamstr3), NULL, SW_SHOWNORMAL);
		
		// Show the transformed frame
		imshow("Brezel detecting camera", frame);

		// Read keystrokes, exit after ESC pressed
		key = cvWaitKey(100);
		if (char(key) == 27) {
			break;
			
		}
		key = cvWaitKey(100);
		if (char(key) == 83 || char(key) == 115)
		{
			ShellExecute(NULL, _T("open"), _T("ekranitara.exe"), NULL, NULL, SW_SHOWNORMAL);
		}
		if (char(key) == 13) {
			if (ldur){
			lz = " LZ1";
			ldur = false;
		}else
			{
				lz = " LZ0";
				ldur = true;
			}
	}
	}

	return 0;
}