#include "obte_paraules.hpp"

/* Retorna la llista de paraules que es poden formar usant k lletres de la paraula s. Llança error si k és major que
    la longitud de l'string s o k < 3. */
void obte_paraules::obte_paraules(nat k, const string& s, const anagrames& A, list<string>& paraules) throw(error){
  //Θ()

  if(s.size() > k and k > 3){                       //Llença error si k és menor que la longitud de s o k < 3.
    list<string> aux_paraules;
    A.mateix_anagrama_canonic(s, aux_paraules);     //Cridem funcio de classe anagrames per treure tots els anagrames
                                                    //de la paraula s
    bool trobat = false;
    string aux_p = aux_paraules.back();
    list<string>::iterator it=aux_paraules.begin();
    if (aux_p.size() >= k){                             //mirem ultim element si es de mida mes gran que k sino no fa res
      while (it != aux_paraules.end() and !trobat){      //while d'afegir nomes les paraules de aux_paraules de mida k i sortir
                                                        //del while si ja es mes gran de mida que k
        string aux = *it;
        if (aux.size() == k) paraules.push_back(aux);
        else if (aux.size() > k) trobat = true;
        it++;
      }
    }
  }
  else{
    throw error(LongitudInvalida);
  }
}

/* Retorna la llista de paraules que es poden formar usant 3 o més lletres de la paraula s. La llista estarà ordenada
    de menys a més longitud; a igual longitud les paraules estan en ordre alfabètic creixent.
    Llança un error si l'string s té menys de tres lletres. */
void obte_paraules::obte_paraules(const string& s, const anagrames& A, list<string>& paraules) throw(error){
  //Θ()

  if(s.size() > 3){                               //Llençar error si paraula es mes petit que 3
    list<string> aux_paraules;
    A.mateix_anagrama_canonic(s, aux_paraules);     //Cridem funcio de classe anagrames per treure tots els anagrames
                                                    //de la paraula s
    string aux_p = aux_paraules.back();
    list<string>::iterator it=aux_paraules.begin();
    if (aux_p.size() >= 3){                       //mirem ultim element si es de mida mes gran que 3 sino no fa res
      while (it != aux_paraules.end()){            //while d'afegir les paraules de aux_paraules de mida mes gran que 3
        string aux = *it;
        if (aux.size() >= 3) paraules.push_back(aux);
        it++;
      }
    }
  }
  else{
    throw error(LongitudInvalida);
  }
}
