CC=gcc
CFLAGS=-I.ref/SDL_2.0.9/include/SDL
LIBS=./ref/SDL_2.0.9/lib/libSDL2.a -L/usr/local/lib -Wl,-rpath,/usr/local/lib -Wl,--enable-new-dtags -lts -lunwind-generic -lunwind -lglib-2.0 -lgobject-2.0 -lgio-2.0 -libus-1.0 -ldbus-1 -ldl -lm -Wl,--no-undefined -pthread -lSDL2

mario: ./src/main.o
	${CC} -o mario ./src/main.o $(LIBS)
