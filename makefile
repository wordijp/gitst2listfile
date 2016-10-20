TARGET = gitst2listfile.exe

CXX = g++
CXXFLAGS = -Wall -O2 -g -std=c++11

SRCS = main.cpp \
	   
OBJS = $(patsubst %, obj/%, $(SRCS:.cpp=.o))

# -----------------------------------------------

all: obj $(TARGET)
	
obj: 
	mkdir obj
	
obj/%.o: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $<
	
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET)

clean:
	rm $(TARGET)
	rm -Rf obj
	
# -----------------------------------------------

.PHONY: clean
