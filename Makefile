#compiler
CC = g++

##########################################################
# srcs
# get the all source file
##########################################################
SRCS_CPP = $(wildcard *.cpp)
SRCS_CC  = $(wildcard *.cc)
SRCS_C   = $(wildcard *.c)
##########################################################
# objs
#change all the source  file to .o target file
##########################################################
OBJS_CPP = $(patsubst %.cpp, %.o, $(SRCS_CPP))
OBJS_CC  = $(patsubst %.cc, %.o, $(SRCS_CC))
OBJS_C   = $(patsubst %.c, %.o, $(SRCS_C))

#include library
LIBS = -lgtest -lpthread
#target file
EXEC = exec
#compiler flag
CFLAGS = -c

.PHONY:clean all

all: $(OBJS_CPP) $(OBJS_CC) $(OBJS_C)
	@echo $(SRCS_CPP)
	@echo $(SRCS_CC)
	@echo $(SRCS_C)
	@echo $(OBJS_CPP)
	@echo $(OBJS_CCC)
	@echo $(OBJS_C)
	$(CC) -o $(EXEC) $(OBJS_CPP) $(OBJS_CC) $(OBJS_C) $(LIBS)

$(OBJS_CPP):%.o : %.cpp  
	$(CC) $(CFLAGS)  $< -o $@ 
  
$(OBJS_CC):%.o : %.cc
	$(CC) $(CFLAGS) $< -o $@

$(OBJS_C):%.o : %.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf  $(OBJS_CPP) $(OBJS_CC) $(OBJS_C) $(EXEC)
