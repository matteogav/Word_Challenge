#include "iter_subset.hpp"

/* Construeix un iterador sobre els subconjunts de k elements
     de {1, ..., n}; si k > n no hi ha res a recórrer. */
iter_subset::iter_subset(nat n, nat k) throw(error){
  //Θ()

    _n = n;
    _k = k;
    if(_k == 0) _cent=0;
    else _cent = (n-k)+1; //Calculem el centinella, d'aquesta manera podrem saber si estem a l'ultim subconjunt.
    if(n>=k){
      for(unsigned int i=0; i<k; ++i){ //Inicialitzem el subset _info, amb 'k' elements.
        if(_n>=i) _info.push_back(i+1);
      }
    }
    if(n>=k) _final = false;
    else _final = true;
}

/* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
iter_subset::iter_subset(const iter_subset& its) throw(error){
  //Θ()

  _info = its._info;
  _n = its._n;
  _k = its._k;
  _final = its._final;
  _cent = its._cent;
}

iter_subset& iter_subset::operator=(const iter_subset& its) throw(error){
  //Θ()

  _info = its._info;
  _n = its._n;
  _k = its._k;
  _final = its._final;
  _cent = its._cent;
  return *this;
}

iter_subset::~iter_subset() throw(){
}

/* Retorna cert si l'iterador ja ha visitat tots els subconjunts
     de k elements presos d'entre n; o dit d'una altra forma, retorna
     cert quan l'iterador apunta a un subconjunt sentinella fictici
     que queda a continuació de l'últim subconjunt vàlid. */
bool iter_subset::end() const throw(){
  //Θ(1)
  return _final;
}

/* Operador de desreferència. Retorna el subconjunt apuntat per
     l'iterador; llança un error si l'iterador apunta al sentinella. */
subset iter_subset::operator*() const throw(error){
  //Θ(1)
  if(_final){
    throw error(IterSubsetIncorr);
  }
  return _info;
}

/* Operador de preincrement.
     Avança l'iterador al següent subconjunt en la seqüència i el retorna;
     no es produeix l'avançament si l'iterador ja apuntava al sentinella. */
iter_subset& iter_subset::operator++() throw(){
  //Θ()

  nat j=1;
  if(_n>_k and _k>0){
    if(_info[0]!=_cent){
      if(_info[_k-1]<_n) _info[_k-1]+=1;
      else{
        while((_info[_k-1-j]+j)>=_n) ++j;
        _info[_k-1-j]+=1;
        nat m=j;
        for(nat i=(_k-m); i<_k; ++i){
          if(_info[i-1]+1<_n) _info[i]=(_info[i-1]+1);
          --m;
        }
      }
    }
    else _final = true;
  }
  else _final = true;
  return *this;
}

/* Operador de postincrement.
     Avança l'iterador al següent subconjunt en la seqüència i retorna el seu valor
     previ; no es produeix l'avançament si l'iterador ja apuntava al sentinella. */
iter_subset iter_subset::operator++(int) throw(){
  //Θ()

  iter_subset cp(*this);
  ++(*this);
  return cp;
}

/* Operadors relacionals. */
bool iter_subset::operator==(const iter_subset& c) const throw(){
  //Θ()

  bool b = true;
  if(c._final!=_final or c._k!=_k or c._cent!=_cent) b = false;
  //else b = true;
  for(unsigned int i=0; i<_k; ++i){
    if(c._info[i]!=_info[i]) b = false;
  }
  return b;
}

bool iter_subset::operator!=(const iter_subset& c) const throw(){
  //Θ()

  return not (*this == c);
}
