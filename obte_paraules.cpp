#include "obte_paraules.hpp"

void obte_paraules::obte_paraules(nat k, const string& s, const anagrames& A, list<string>& paraules) throw(error){
  if(s.size() > k and k > 3){

  }
  else{
    throw LongitudInvalida;
  }
}

void obte_paraules::obte_paraules(const string& s, const anagrames& A, list<string>& paraules) throw(error){
  if(s.size() > 3){

  }
  else{
    throw LongitudInvalida;
  }
}
