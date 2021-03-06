OBJS = main.o Net.o TrainingData.o
CC = g++
DEBUG = -g
CFLAGS = -Wall -c $(DEBUG)
LFLAGS = -Wall $(DEBUG)

backprop : $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o backprop

main.o : main.cpp Net.h TrainingData.h
	$(CC) $(CFLAGS) main.cpp

Net.o : Net.h Net.cpp
	$(CC) $(CFLAGS) Net.cpp

TrainingData.o : Trainingdata.h Trainingdata.cpp
	$(CC) $(CFLAGS) Trainingdata.cpp

clean:
	rm -f *.o backprop

