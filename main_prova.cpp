#include <iostream>
#include <string>
#include "word_toolkit.hpp"
using namespace word_toolkit;
using namespace std;

int main(){
  string s;
  cout<<"Entra un string: "<<endl;
  cin>>s;
  if(es_canonic(s)) cout<<"TRUE"<<endl;
  else cout<<"FALSE"<<endl;
}
