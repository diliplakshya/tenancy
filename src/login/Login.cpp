# include "Login.h"

using namespace NLogin;


UserLogin::UserLogin()
{
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
