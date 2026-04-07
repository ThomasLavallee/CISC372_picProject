
image: image.c image.h
	gcc -g image.c -o image -lm

pthreads: pthreads.c image_pthreads.h
	gcc -g pthreads.c -o pthreads -lm -lpthread

openmp: openmp.c image.h
	gcc -g openmp.c -o openmp -lm -fopenmp

clean:
	rm -f image output.png pthreads openmp
