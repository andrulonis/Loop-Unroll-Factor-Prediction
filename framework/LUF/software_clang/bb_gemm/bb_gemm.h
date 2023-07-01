#include <stdio.h>
#include <stdlib.h>

#define TYPE int
#define ROWSIZE 1024//32
#define N ROWSIZE*ROWSIZE
#define BLOCKSIZE 256//8
#define NUMOFBLOCKS N/BLOCKSIZE/BLOCKSIZE
