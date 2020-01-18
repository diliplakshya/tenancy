login: Login.o main.o
	g++ -o login Login.o main.o
Login.o: Login.h Login.cpp
	g++ -c Login.h Login.cpp
main.o: main.cpp
	g++ -c main.cpp
clean:
	rm *.o *.gch
