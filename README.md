# Raycaster
https://www.youtube.com/watch?v=gYRrGTC7GtA

Messing around with OpenGL on Linux

## Building
### Linux
To build on Linux
```bash
gcc main.c -lglut -lGL -lGLU
```

### Windows
Need to figure this one out. Cygwin may not work here. Theres no x window and we get an error 'failed to open display ""'
```bash
gcc .\main.c -lglut -lOpengl32 -lglu32
```