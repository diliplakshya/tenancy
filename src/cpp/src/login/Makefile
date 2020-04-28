TENANCY_HOME = $(shell pwd)/../../../..

include $(TENANCY_HOME)/makefile/MakeVars.in

SRC_INCLUDE_DIR = $(TENANCY_HOME)/src/cpp/lib/CppToPython/src
SRC_LIB_DIR = $(SRC_INCLUDE_DIR)/bin/release/x86_64

CPPFLAGS = -I$(SRC_INCLUDE_DIR) -I/usr/include/python3.7
LDFLAGS = -L$(SRC_LIB_DIR) -lcpptopython -L/usr/lib/x86_64-linux-gnu -lpython3.7m

DEP = $(CPPFLAGS) $(LDFLAGS)

$(objdir)/login: $(objdir)/Login.o $(objdir)/main.o
	(mkdir -p $(objdir); cd $(objdir); g++ $(LDFLAGS) -o login Login.o main.o $(LDFLAGS); rm *.o)
$(objdir)/Login.o: Login.h Login.cpp
	(mkdir -p $(objdir); cd $(objdir); g++ -c $(DEP) ../../../Login.h ../../../Login.cpp)
$(objdir)/main.o: main.cpp
	(mkdir -p $(objdir); cd $(objdir); g++ -c $(DEP) ../../../main.cpp)
clean:
	(rm *.gch; mkdir -p $(objdir); cd $(objdir); rm *.o login)