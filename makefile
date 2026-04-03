
image: image.c image.h
	gcc -g image.c -o image -lm

pthreads: image_pthreads.c image.h
	gcc -g image_pthreads.c -o pthreads -lm -lpthread

openmp: image_openmp.c image.h
	gcc -g image_openmp.c -o openmp -lm

clean:
	rm -f image output.png pthreads openmp
