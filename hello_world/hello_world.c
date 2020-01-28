#include <omp.h>
#include <stdio.h>

int main(){
	int id, np;
	#pragma omp parallel private(id, np) 
	{
		np = omp_get_num_threads();
		id = omp_get_thread_num();
		printf("Hello world ! From thread %d, out of %d threads\n",id,np);
	}
}
