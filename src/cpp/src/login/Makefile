TENANCY_HOME = $(shell pwd)/../../../..

include $(TENANCY_HOME)/makefile/MakeVars.in

INCL = -I/home/local/Documents/tenancy/src/cpp/lib/CppToPython/src -I/usr/include/python3.5
LIB = -L/home/local/Documents/tenancy/src/cpp/lib/CppToPython/src/bin/release/x86_64 -lcpptopython -L/usr/lib/x86_64-linux-gnu -lpython3.5m


$(objdir)/login: $(objdir)/Login.o $(objdir)/main.o
	(mkdir -p $(objdir); cd $(objdir); g++ $(INCL) $(LIB) -o login Login.o main.o; rm *.o)
$(objdir)/Login.o: Login.h Login.cpp
	(mkdir -p $(objdir); cd $(objdir); g++ -c $(INCL) $(LIB) ../../../Login.h ../../../Login.cpp)
$(objdir)/main.o: main.cpp
	(mkdir -p $(objdir); cd $(objdir); g++ -c $(INCL) $(LIB) ../../../main.cpp)
clean:
	(rm *.gch; mkdir -p $(objdir); cd $(objdir); rm *.o login)

