#include <iostream>
#define MAX_ITER 100000
int main(){
    int count = MAX_ITER;
    int pcount = 0;
    while(count){
        float x =  (double)rand()/RAND_MAX;
        float y = (double)rand()/RAND_MAX;
        if((x*x + y*y) < 1){
            pcount++;
        }
        // std::cout<<x<<" "<<y<<std::endl;
        count--;
    }
    std::cout<<"pie value using randomization:"<<std::endl;
    std::cout<<(4*((double)pcount/MAX_ITER))<<std::endl;
    

}