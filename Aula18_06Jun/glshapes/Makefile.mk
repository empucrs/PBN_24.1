# Makefile para Windows

PROG = glshapes.exe
FONTES = main.c shapes.c
OBJETOS = $(FONTES:.c=.o)
CFLAGS = -O3 -g -Iinclude # -Wall -g  # Todas as warnings, infos de debug
LDFLAGS = -Llib\GL -lfreeglut -lopengl32 -lglu32 -lm
CC = gcc

$(PROG): $(OBJETOS)
	gcc $(CFLAGS) $(OBJETOS) -o $@ $(LDFLAGS)

clean:
	-@ del $(OBJETOS) $(PROG)
