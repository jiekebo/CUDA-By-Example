NVCCFLAGS := -g --use_fast_math
LIBS	:= -Xlinker -framework,GLUT -Xlinker -framework,OpenGL

all:		3-parameter 3-query 3-simplekernel 4-vecsum 4-mandel 5-gpuripple \
			5-dotproduct 5-dotprodoptinc 5-bitmapns 5-bitmap

3-parameter:	3-parameter.cu
		nvcc 3-parameter.cu -o 3-parameter.o $(NVCCFLAGS)

3-query:	3-query.cu
		nvcc 3-query.cu -o 3-query.o $(NVCCFLAGS)

3-simplekernel: 3-simplekernel.cu
		nvcc 3-simplekernel.cu -o 3-simplekernel.o $(NVCCFLAGS)

4-vecsum:	4-vecsum.cu
		nvcc 4-vecsum.cu -o 4-vecsum.o $(NVCCFLAGS)

4-mandel:	4-mandel.cu
		nvcc 4-mandel.cu -o 4-mandel.o $(NVCCFLAGS) $(LIBS)
		
5-gpuripple: 5-gpuripple.cu
		nvcc 5-gpuripple.cu -o 5-gpuripple.o $(NVCCFLAGS) $(LIBS)
		
5-dotproduct: 5-dotproduct.cu
		nvcc 5-dotproduct.cu -o 5-dotproduct.o $(NVCCFLAGS) $(LIBS)
		
5-dotprodoptinc: 5-dotprodoptinc.cu
		nvcc 5-dotprodoptinc.cu -o 5-dotprodoptinc.o $(NVCCFLAGS) $(LIBS)
		
5-bitmapns: 5-bitmapns.cu
		nvcc 5-bitmapns.cu -o 5-bitmapns.o $(NVCCFLAGS) $(LIBS)

5-bitmap: 5-bitmap.cu
		nvcc 5-bitmap.cu -o 5-bitmap.o $(NVCCFLAGS) $(LIBS)

clean:
		rm 3-parameter.o 3-query.o 3-simplekernel.o 4-vecsum.o 4-mandel.o 5-gpuripple.o \
		5-dotproduct.o 5-dotprodoptinc.o 5-bitmapns.o 5-bitmap.o

