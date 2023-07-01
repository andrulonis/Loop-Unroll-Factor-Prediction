#include <stdio.h>
#include <stdlib.h>

#define TYPE int
#define ROWSIZE 32//1024
#define N ROWSIZE*ROWSIZE
#define BLOCKSIZE 8//256
#define NUMOFBLOCKS N/BLOCKSIZE/BLOCKSIZE
