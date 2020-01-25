TENANCY_HOME = $(shell pwd)/../../../..

include $(TENANCY_HOME)/makefile/MakeVars.in

$(objdir)/login: $(objdir)/Login.o $(objdir)/main.o
	(mkdir -p $(objdir); cd $(objdir); g++ -o login Login.o main.o; rm *.o)
$(objdir)/Login.o: Login.h Login.cpp
	(mkdir -p $(objdir); cd $(objdir); g++ -c ../../../Login.h ../../../Login.cpp)
$(objdir)/main.o: main.cpp
	(mkdir -p $(objdir); cd $(objdir); g++ -c ../../../main.cpp)
clean:
	(rm *.gch; mkdir -p $(objdir); cd $(objdir); rm *.o login)

