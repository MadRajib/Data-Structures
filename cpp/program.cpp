#include<iostream>
#include<fstream>
#include "lib.h"
int main(){

    std::string line;
    std::ifstream f;
    f.open("tokens.txt");
  
    //if file is already open return -1 error 
    if (!f.is_open()){
        std::cout<<"Error: File already Open"<<std::endl;
        return -1;      
    }

    // read line my line 
    std::cout<<"Reading tokens..."<<std::endl;
    std::cout<<"Generating ascii values..."<<std::endl;
    while(getline(f,line)){
        std::string token = process(rtrim(line));
        long key = sumASCII(line);
        std::cout<<key<<": "<<token<<std::endl;
        std::cout<<hash(key,10)<<std::endl;
    }
    
    // if could not read from file return -2
    if(f.bad()){
        std::cout<<"Error: Could not read from file!"<<std::endl;
    }
    // close the file
    f.close();
  
}