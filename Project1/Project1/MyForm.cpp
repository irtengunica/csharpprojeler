#include "MyForm.h"
using namespace System;
using namespace System::Windows::Forms;
[STAThread]

void main(array<String^>^ args)
{
	String^ argument = args[1];
	Application::EnableVisualStyles();
	Application::SetCompatibleTextRenderingDefault(false);
	Project1::MyForm form(argument);
	Application::Run(%form);
	//Application::Run(gcnew MyForm(argument))
	

}