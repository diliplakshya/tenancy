#include "PythonInterpreter.h"
#include "CppToPythonInterface.h"
#include "CppPythonUtils.h"
#include "Login.h"


using namespace NCppPython;
using namespace NLogin;


UserLogin::UserLogin()
{
	PythonObjectWrapper oPythonObjectWrapper;

	PythonInterpreter::initializeInterpreter();

	CppToPythonInterface oCppToPythonInterface;

	PythonObjectWrapper oImportModule;

	oCppToPythonInterface.importPythonModule("db_helper", oImportModule);

	CppPythonUtils utils;

	PythonObjectWrapper username;
	PythonObjectWrapper password;

	utils.constructPythonString("dilip", username);
	utils.constructPythonString("secret", password);

	PythonObjectWrapper outputTuple;
	int code;
	char* message;
	
	oCppToPythonInterface.callMethod("db_function", oImportModule, outputTuple, code, message);
}

UserLogin::~UserLogin()
{
}

void UserLogin::login()
{
}

void UserLogin::setUserName(const std::string& strName)
{
	m_strUsername = strName;
}

void UserLogin::setPassword(const std::string& strPassword)
{
	m_strPassword = strPassword;
}

bool UserLogin::isLoginSuccessful()
{
	return true;
}
