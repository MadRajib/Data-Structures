#include <iostream>
#include <fstream>
#include <string>

long sumASCII(const std::string& word){
  long sum = 0;
  for (std::string::const_iterator it=word.begin(); it!=word.end(); ++it)
    sum +=(int)(*it);
  return sum;
}

std::string process(const std::string& word){
  std::string line = word.substr(0);
  int len = line.length();
  if (len < 10) {
    line.append(10 - len,'*');
  }else if(len > 10){
    line.erase(10);
  }

  return line;  
}


std::string rtrim(std::string& line){
  std::string whitespaces (" \t\f\v\n\r");
  std::size_t lfound = line.find_last_not_of(whitespaces);

  if (lfound!=std::string::npos)
    line.erase(lfound+1);
  else
    line.clear();
  
  return line;  
}
