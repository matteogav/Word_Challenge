#include "iter_subset.hpp"

/* Construeix un iterador sobre els subconjunts de k elements
     de {1, ..., n}; si k > n no hi ha res a recórrer. */
iter_subset::iter_subset(nat n, nat k) throw(error){
  //Pre: cert
  //Post: Inicialitzem l'iterador amb la n i k donades, el _cent, el subset amb {1,2,...,n} i _final
  //Θ(k) si n>=k
  //Θ(1) si k>n

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
  //Pre: cert
  //Post: this es una copia de its
  //Θ(1)

  _info = its._info;
  _n = its._n;
  _k = its._k;
  _final = its._final;
  _cent = its._cent;
}

iter_subset& iter_subset::operator=(const iter_subset& its) throw(error){
  //Pre: cert
  //Post: this es una copia de its
  //Θ(1)

  _info = its._info;
  _n = its._n;
  _k = its._k;
  _final = its._final;
  _cent = its._cent;
  return *this;
}

iter_subset::~iter_subset() throw(){
}


bool iter_subset::end() const throw(){
  //cert
  //Retorna cert si l'iterador apunta al subconjunt sentinella, si no, retorna false
  //Θ(1)

  return _final;
}

/* Operador de desreferència. */
subset iter_subset::operator*() const throw(error){
  //Pre: cert
  //Post: Retorna el subconjunt apuntat per l'iterador; llança un error si l'iterador
  //apunta al sentinella.
  //Θ(1)

  if(_final){
    throw error(IterSubsetIncorr);
  }
  return _info;
}

/* Operador de preincrement. */
iter_subset& iter_subset::operator++() throw(){
  //Pre: cert
  //Post: Avança l'iterador al següent subconjunt en la seqüència i el retorna;
  //no es produeix l'avançament si l'iterador ja apuntava al sentinella.
  //Θ(_k)

  nat j=1; int ka = _k-1;
  if(_n>_k and _k>0){
    if(_info[0]!=_cent){
      if(_info[ka]<_n) _info[ka]+=1;
      else{
        while((_info[ka-j]+j)>=_n) ++j;
        _info[ka-j]+=1;
        for(nat i=(ka-j); i<_k; ++i){
          if(_info[i-1]+1<_n) _info[i]=(_info[i-1]+1);
          --j;
        }
      }
    }
    else _final = true;
  }
  else _final = true;
  return *this;
}

/* Operador de postincrement. */
iter_subset iter_subset::operator++(int) throw(){
  //Pre: cert
  //Post: Avança l'iterador al següent subconjunt en la seqüència i retorna el seu valor
  //previ; no es produeix l'avançament si l'iterador ja apuntava al sentinella.
  //Θ(_k)

  iter_subset cp(*this);
  ++(*this);
  return cp;
}

/* Operadors relacionals. */
bool iter_subset::operator==(const iter_subset& c) const throw(){
  //Pre: cert
  //Post: Retorna cert si *this i c son iguals, fals en cas contrari.
  //Θ(1)

  bool b = true;
  if(c._final!=_final or c._k!=_k or c._cent!=_cent) b = false;
  //else b = true;
  for(unsigned int i=0; i<_k; ++i){
    if(c._info[i]!=_info[i]) b = false;
  }
  return b;
}

bool iter_subset::operator!=(const iter_subset& c) const throw(){
  //Pre: cert
  //Post: Retorna cert si el p.i i c son diferents, fals en cas contrari.
  //Θ(1)

  return not (*this == c);
}
