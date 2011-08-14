vystup: taylor.o main.o
	g++ -o vystup taylor.o main.o

taylor.o: taylor.cpp
	g++ -c taylor.cpp

main.o: main.cpp taylor.h
	g++ -c main.cpp
