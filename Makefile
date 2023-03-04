
all: tutorial

tutorial: tutorial.o
	g++ $^ -o $@

tutorial.so: tutorial.o
	gcc $^ -shared -o $@

.cpp.o:
	g++ -c -g $<

clean:
	rm -f tutorial tutorial.so tutorial.o

