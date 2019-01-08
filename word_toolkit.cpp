#include "word_toolkit.hpp"
#include <algorithm>

/* Retorna cert si i només si les lletres de l'string s estan en
    ordre lexicogràfic ascendent. */
bool word_toolkit::es_canonic(const string& s) throw(){
  // Pre: true
  // Post retorna cert si la paraula és canonica i false si no
  //Θ(n) n = tamany del string s

  bool canonic=true;
  if (s.size()!=0){
    unsigned i=0;
    while (i<s.size()-1 and canonic){
      if (s[i]>s[i+1]) canonic=false;
      else i++;
    }
  }
  return canonic;
}

/* Retorna l'anagrama canònic de l'string s.
    Veure la classe anagrames per saber la definició d'anagrama canònic. */
string word_toolkit::anagrama_canonic(const string& s) throw(){
  // Pre: true
  // Post: retorna l'string ordenda canonicament
  //Θ(n) n = tamany del string s

  string res=s;
  if (!es_canonic(s)) sort(res.begin(),res.end());
  return res;
}

/* Retorna el caràcter que no apareix a l'string excl i és el més
    freqüent en la llista de paraules L, sent L una llista no buida
    de paraules formades exclusivament amb lletres majúscules de
    la 'A' a la 'Z' (excloses la 'Ñ', 'Ç', majúscules accentuades, ...).
    En cas d'empat, es retornaria el caràcter alfabèticament menor.
    Si l'string excl inclou totes les lletres de la 'A' a la 'Z' es
    retorna el caràcter '\0', és a dir, el caràcter de codi ASCII 0. */
char word_toolkit::mes_frequent(const string& excl, const list<string>& L) throw(){
  // Pre: cert
  // Post: retorna la lletra que surt mes en la llista L i que no esta en excl
  //Θ(n*m) m paruales de n lletres

  //Si excl es tot l'abacedari res='\0'
  string abc="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  char res='\0';
  list<string> aux_L=L;                   //copia manajable de L
  if (abc==excl) res='\0';
  //sino
  else {
    int vect[26] = {0};
    list<string>::iterator it_L=aux_L.begin();      //Iterador que apunta a la primera paraula
    //Bucle de cada paraula
    while (it_L!=aux_L.end()){
      string paraula=*it_L;
      char lletra;
      //Bucle de cada lletra de la paraula
      for (unsigned j=0;j<paraula.size();j++){
        lletra=paraula[j];
        int aux=lletra-65;
        vect[aux]++;
      }
      //Seguent paraula
      it_L++;
    }
    //Bucle que treu (posa a 0) les lletres que estiguin a excl
    for (unsigned j=0;j<excl.size();j++){
      char aux=excl[j];
      int x=aux-65;
      if (0 >= x or x < 26){
        int aux_int=aux-65;
        vect[aux_int]=0;
      }
    }
    int max=0;
    char lletra_max='\0';
    //Bucle que busca la lletra mes gran
    for (unsigned i=0;i<26;i++){
      if (max<vect[i]){
        max=vect[i];
        lletra_max=i+65;
      }
    }
    res=lletra_max;
  }
  //Retorna 'res'
  return res;
}
