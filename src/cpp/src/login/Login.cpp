#include "PythonInterpreter.h"
#include "CppToPythonInterface.h"
#include "Login.h"


using namespace AspectTraffic;
using namespace NLogin;


UserLogin::UserLogin()
{
	PythonObjectWrapper oPythonObjectWrapper;

	//PythonInterpreter::initializeInterpreter();

	//CppToPythonInterface oCppToPythonInterface;

	//PythonObjectWrapper oImportModule;

	//oCppToPythonInterface.importPythonModule("db_helper", oImportModule);
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
