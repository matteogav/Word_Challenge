#include "anagrames.hpp"
#include "word_toolkit.hpp"

/* Construeix un anagrama buit. */
anagrames::anagrames() throw(error){
  //Θ()
}

/* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
anagrames::anagrames(const anagrames& A) throw(error){
  //Θ()

  //anagremes anagrama_copia = diccionari(A);
  //return anagrama_copia;
}
anagrames& anagrames::operator=(const anagrames& A) throw(error){
  //Θ()

  /*anagrames a = diccionari::operator=(A);
  return a;*/
    return *this;
}
anagrames::~anagrames() throw(){
}

/* Afegeix la paraula p a l'anagrama; si la paraula p ja formava
    part de l'anagrama, l'operació no té cap efecte. */
void anagrames::insereix(const string& p) throw(error){
    //Θ()

}

/* Retorna la llista ordenada de paraules p tals que anagrama_canonic(p)=a.
    Llança un error si les lletres de a no estan en ordre ascendent. */
void anagrames::mateix_anagrama_canonic(const string& a, list<string>& L) const throw(error){
  //Θ()

  if(word_toolkit::es_canonic(a)){

  }
  else{
    throw error(NoEsCanonic);
  }
}
