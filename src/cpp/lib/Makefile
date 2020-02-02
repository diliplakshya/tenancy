INCL=-I/usr/include/python3.5
LIB=-L/home/local/Documents/tenancy/src/cpp/lib -lpython3.5m

CppPythonInterface: db_connection.o
	g++ $(LIB) -o CppPythonInterface db_connection.o

db_connection.o: db_connection.cpp
	g++ -c $(INCL) $(LIB) db_connection.cpp