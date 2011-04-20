NVCCFLAGS := -g --use_fast_math
LIBS	:= -Xlinker -framework,GLUT -Xlinker -framework,OpenGL

all:		3-parameter 3-query 3-simplekernel 4-vecsum 4-mandel 5-gpuripple \
			5-dotproduct 5-dotprodoptinc 5-bitmapns 5-bitmap

3-parameter:	3-parameter.cu
		nvcc 3-parameter.cu -o ./bin/3-parameter $(NVCCFLAGS)

3-query:	3-query.cu
		nvcc 3-query.cu -o ./bin/3-query $(NVCCFLAGS)

3-simplekernel: 3-simplekernel.cu
		nvcc 3-simplekernel.cu -o ./bin/3-simplekernel $(NVCCFLAGS)

4-vecsum:	4-vecsum.cu
		nvcc 4-vecsum.cu -o ./bin/4-vecsum $(NVCCFLAGS)

4-mandel:	4-mandel.cu
		nvcc 4-mandel.cu -o ./bin/4-mandel $(NVCCFLAGS) $(LIBS)
		
5-gpuripple: 5-gpuripple.cu
		nvcc 5-gpuripple.cu -o ./bin/5-gpuripple $(NVCCFLAGS) $(LIBS)
		
5-dotproduct: 5-dotproduct.cu
		nvcc 5-dotproduct.cu -o ./bin/5-dotproduct $(NVCCFLAGS) $(LIBS)
		
5-dotprodoptinc: 5-dotprodoptinc.cu
		nvcc 5-dotprodoptinc.cu -o ./bin/5-dotprodoptinc $(NVCCFLAGS) $(LIBS)
		
5-bitmapns: 5-bitmapns.cu
		nvcc 5-bitmapns.cu -o ./bin/5-bitmapns $(NVCCFLAGS) $(LIBS)

5-bitmap: 5-bitmap.cu
		nvcc 5-bitmap.cu -o ./bin/5-bitmap $(NVCCFLAGS) $(LIBS)

clean:
		rm ./bin/*
