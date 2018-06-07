TARGET = test
CC = gcc

test:
	$(CC) -c cJSON.c
	ar cr libcJSON.a cJSON.o
	$(CC) test.c -o $(TARGET) -lcJSON -L. -lm
clean:
	rm *.o *.a *.c~ test
