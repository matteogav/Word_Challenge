#include "word_toolkit.hpp"
#include <algorithm>

/* Retorna cert si i només si les lletres de l'string s estan en
    ordre lexicogràfic ascendent. */
bool es_canonic(const string& s) throw(){
    //Pre: true
    //Post retorna cert si la paraula és canonica i false si no-
    bool canonic=true;
    if (s.size()!=0){
        int i=0;
        while (i<s.size()-1 and canonic){
            if (s[i]>s[i+1]) canonic=false;
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
    string res=s;
    if (!es_canonic(s)) {
	    sort(res.begin(),res.end());
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
    string abc="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    char res;
    if (abc==excl) res='\0';
    else {
        string aux_string;
        list<pair<char,int> > aux_pair;
        int i=0;                    //i contador llista
        while (i<L.size()){
            aux_string=L[i];
            char aux_char;
            while (!aux_string.empty()){
                aux_char=aux_string[0];                     //mirar sempre el primer char
                bool trobat=false;
                int j=0;
                while(j<aux_pair.size() and !trobat){
                    if (aux_char==aux_pair[j].first()) trobat=true;
                    else j++;
                }                
                if (!trobat) pair<char,int> nou_pair=(aux_char,1);
                else aux_pair[j].second+=1;
                aux_string.erase(aux_string.begin()+0);     //borrar primer char de l'string
            }
            i++;
        }
    }

}

/*
si excl es igual a [A..Z] res='\0';
sino
    bucle agafant una paraula de la llista
        bucle mirant totes les lletres de la paraula agafada
            si pertany a la llista pair<char,int> (.fisrt) sumar-li 1 a (.second)
            sino afegir a la llista pair<char,int>
            seguent lletra
        seguent paraula
    mirar qui te el numero mes gran amb xivato bool si hi ha algu igual
    si bool = true res='>';
    sino res=pair.first;
*/