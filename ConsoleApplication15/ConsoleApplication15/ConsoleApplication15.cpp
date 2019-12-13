// ConsoleApplication15.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <Windows.h>
#include <shellapi.h>


int _tmain(int argc, _TCHAR* argv[])
{
	HINSTANCE hReturnCode = ShellExecute(NULL, _T("open"), _T("ConsoleApplication11.exe"), _T(" LR1000 UD800 LZ0 "), NULL, SW_SHOWNORMAL);
	DWORD LastError = GetLastError();
	//ShellExecute(NULL, NULL, "file.txt", NULL, NULL, SW_RESTORE);
	return 0;
}

