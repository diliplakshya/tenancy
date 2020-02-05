# include "Login.h"
# include "PythonObjectWrapper.h"


using namespace NLogin;
using namespace AspectTraffic;


UserLogin::UserLogin()
{
	PythonObjectWrapper oPythonObjectWrapper;
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
