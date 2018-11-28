#include "iter_subset.hpp"

/* Construeix un iterador sobre els subconjunts de k elements
     de {1, ..., n}; si k > n no hi ha res a recórrer. */
iter_subset::iter_subset(nat n, nat k) throw(error){
  for(int i=0; i<k; ++i){
    if(i+1<n) _info[i]=i+1;
  }
}

/* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
iter_subset::iter_subset(const iter_subset& its) throw(error){

}
iter_subset& iter_subset::operator=(const iter_subset& its) throw(error){

}
iter_subset::~iter_subset() throw(){
}

/* Retorna cert si l'iterador ja ha visitat tots els subconjunts
     de k elements presos d'entre n; o dit d'una altra forma, retorna
     cert quan l'iterador apunta a un subconjunt sentinella fictici
     que queda a continuació de l'últim subconjunt vàlid. */
bool iter_subset::end() const throw(){
}

/* Operador de desreferència. Retorna el subconjunt apuntat per
     l'iterador; llança un error si l'iterador apunta al sentinella. */
subset iter_subset::operator*() const throw(error){
  if(_final){
    throw IterSubsetIncorr;
  }
  return _info;
}

/* Operador de preincrement.
     Avança l'iterador al següent subconjunt en la seqüència i el retorna;
     no es produeix l'avançament si l'iterador ja apuntava al sentinella. */
iter_subset::iter_subset& iter_subset::operator++() throw(){
}

/* Operador de postincrement.
     Avança l'iterador al següent subconjunt en la seqüència i retorna el seu valor
     previ; no es produeix l'avançament si l'iterador ja apuntava al sentinella. */
iter_subset::iter_subset iter_subset::operator++(int) throw(){
  iter_subset cp(*this);
  ++(*this);
  return cp;
}

/* Operadors relacionals. */
bool iter_subset::operator==(const iter_subset& c) const throw(){
}
bool iter_subset::operator!=(const iter_subset& c) const throw(){
  return not (*this == c)
}
