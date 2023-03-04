
GLFW_HOME=/usr/local/glfw

all: tutorial

tutorial: tutorial.o
	g++ $^ -o $@ -L$(GLFW_HOME)/lib -lglfw

tutorial.so: tutorial.o
	gcc $^ -shared -o $@

.cpp.o:
	g++ -c -g -I$(GLFW_HOME)/include $<

clean:
	rm -f tutorial tutorial.so tutorial.o

