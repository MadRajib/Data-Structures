#include <iostream>
#include <math.h>
# define GD_RATIO 0.61803398875

/*
*  multiplication method
*  h(x) = floor(m*Fraction(k*x))
*  k is golden ratio.
*  x is the key. 
*
*/
unsigned int hash(int key,int tableSize){

  float n = GD_RATIO*key;
  float fraction  = n -  floor(n);
  unsigned int hashVal = floor(tableSize*fraction);
  
  return hashVal % tableSize;
}