CC = clang
CFLAGS = -Wall -Wextra
SDL2 = -I/usr/include/SDL2 -D_REENTRANT -lSDL2

release: main.o window.o
	$(CC) $(CFLAGS) $(SDL2) -O3 -lm main.o window.o -o main

dev: main.o window.o
	$(CC) $(CFLAGS) $(SDL2) -lm main.o window.o -o main

clean: main.o window.o main
	rm main.o window.o main 

main.o: src/main.c
	$(CC) $(CFLAGS) src/main.c -c -o main.o

window.o: src/window.c
	$(CC) $(CFLAGS)  src/window.c -c -o window.o

