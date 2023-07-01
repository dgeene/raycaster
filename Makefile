CC = gcc
CFLAGS = -g -Wall
OS = $(shell uname)

BIN=raycaster

ifeq ($(OS), Darwin)
	LIBS = -framework OpenGL -framework GLUT
else ifeq ($(OS), Linux)
	LIBS = -lglut -lGLU -lGL
else 
#windows
	#CC=x86_64-w64-mingw32-g++
	#LIBS = -lglut32 -lglu32 -lopengl32
	LIBS = -lglut -lOpengl32 -lglu32
endif

all: #$(BIN)
	$(CC) main.c $(CFLAGS) -o $(BIN) $(LIBS)

#%: %.c
#	$(CC) $(CFLAGS) $< -o $@ $(LIBS)

clean:
	$(RM) -rf $(BIN) *.dSYM
