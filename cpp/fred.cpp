#include <iostream>
#include <fstream>
#include <string>

void process(const std::string& line);

void fred (int arg){

  std::cout << "fred: we got "<<arg<< std::endl;
 
}

int readfile(char* filename){
  /*
    1. return negative number if no file exit
    2. return filter datas in the file
      1. read 10 char string
      2. if less than than include * to make it 10 chars
      3. if greater than truncate it to 10 chars
    3. write the new datas to filter_data.txt 
  */
  std::string line;

  // intialise file
  std::ifstream f;

  // open the file
  f.open(filename);
  // if file is already open return -1 error 
  if (!f.is_open()){
    return -1;
  }

  // read line my line 
  while(getline(f,line)){
    // std::cout <<line<<std::endl;
    process(line);
  }
  // if could not read from file return -2
  if(f.bad()){
    return -2;
  }
  // close the file
  f.close();
  //if everything is allright return 0
  return 0;

}

void process(const std::string& line){
  std::cout<<line<<" len"<<strlengt<<std::endl;
}
