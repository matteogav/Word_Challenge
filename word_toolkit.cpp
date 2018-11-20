#include "word_toolkit.hpp"

/* Retorna cert si i només si les lletres de l'string s estan en
    ordre lexicogràfic ascendent. */
bool es_canonic(const string& s) throw(){
    //Pre: true
    //Post retorna cert si la paraula és canonica i false si no-
    bool canonic=true;
    if (s.size()!=0){
        int i=0;
        while (i<s.size()-1 and canonic){
            if (s.[i]>s.[i+1]) canonic=false;
            else i++;
        }
    }
    return canonic;
}

/* Retorna l'anagrama canònic de l'string s.
    Veure la classe anagrames per saber la definició d'anagrama canònic. */
string anagrama_canonic(const string& s) throw(){
    //Pre: true
    //Post: retorna l'string ordenda canonicament
    string res;
    string aux_string=s;                //copia de s que anem redueint
    if (s.es_canonic()) res=s;
    else  {
	    char aux;
	    int i,cont;
	    while(!aux_string.empty()){	
		    i=0;                        //recorre l'string
		    cont=0;                     //guarda posicio per borrar lletra del string
		    aux=aux_string[0];
		    while (i<aux_string.size()){
			    if (x[i]<aux){
				    aux=aux_string[i];
				    cont=i;
			    }
			    i++;
		    }	
		    aux_string.erase(aux_string.begin()+cont);
		    res.push_back(aux);
		}
	}
    return res;
}

/* Retorna el caràcter que no apareix a l'string excl i és el més
    freqüent en la llista de paraules L, sent L una llista no buida
    de paraules formades exclusivament amb lletres majúscules de
    la 'A' a la 'Z' (excloses la 'Ñ', 'Ç', majúscules accentuades, ...).
    En cas d'empat, es retornaria el caràcter alfabèticament menor.
    Si l'string excl inclou totes les lletres de la 'A' a la 'Z' es
    retorna el caràcter '\0', és a dir, el caràcter de codi ASCII 0. */
char mes_frequent(const string& excl, const list<string>& L) throw(){

}