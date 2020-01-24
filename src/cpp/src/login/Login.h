# ifndef __LOGIN_H_
# define __LOGIN_H_

# include <iostream>


namespace NLogin
{
	class Login
	{
		public:
			enum Type
			{
				USER = 1,
				AGENT = 2,
				ADMIN = 3
			};

			virtual void login() = 0;
			virtual void setUserName(const std::string& strName) = 0;
			virtual void setPassword(const std::string& strPassword) = 0;
			virtual bool isLoginSuccessful() = 0;
		private:
			std::string m_strUsername;
			std::string m_strPassword;
	};

	class UserLogin : public Login
	{
		public:
			UserLogin();
			~UserLogin();

			virtual void login() = 0;
			virtual void setUserName(const std::string& strName);
			virtual void setPassword(const std::string& strPassword);
			virtual bool isLoginSuccessful();
		private:
			std::string m_strUsername;
			std::string m_strPassword;
	};
};
# endif
