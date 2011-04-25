NVCCFLAGS := -g --use_fast_math
LIBS	:= -Xlinker -framework,GLUT -Xlinker -framework,OpenGL

SRCS = $(wildcard *.cu)
OBJS = $(patsubst %.cu,%.o,$(SRCS))

all: $(OBJS)
		
%.o: %.cu
	nvcc $(NVCCFLAGS) $(LIBS)  $< -o ./bin/$@

clean:
	rm ./bin/*
