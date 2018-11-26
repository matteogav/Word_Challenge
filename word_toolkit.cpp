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
    //si excl es tot l'abacedari res='\0'
    string abc="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    char res='\0';
    list<string> aux_L=L;                   //copia manajable de L
    if (abc==excl) res='\0';
    //sino
    else {
        list<pair<char,int> > list_pair;                //llista de pairs
        list<string>::iterator it_L=aux_L.begin();      //iterador que apunta a la primera paraula
        int cont=1;
        //bucle de cada paraula
        while (it_L!=aux_L.end()){
            string paraula=*it_L;
            //bucle de treure lletres que estiguin a excl
            for (unsigned j=0;j<excl.size();j++){
                int k=0;
                while (k<paraula.size()){
                    if (paraula[k]==excl[j]) paraula.erase(paraula.begin()+k);
                    else k++;
                }
            }
            //si paraula no es buida
            if (!paraula.empty()){
                //ordena canonicament
                paraula=anagrama_canonic(paraula);
                char lletra=paraula[0];
		        char lletra_ant=paraula[0];
                //bucle de cada lletra de la paraula
                for (unsigned j=0;j<paraula.size();j++){
		            lletra=paraula[j];
                    if (lletra!=lletra_ant){
                        lletra_ant=lletra;
                    }
		            bool trobat=false;
                    list<pair<char,int> >::iterator it_pair=list_pair.begin();
		            //buscar si existeix pair de la lletra si es aixi actualitzem el second amb el numero vegades
		            while (it_pair!=list_pair.end() and !trobat){
                        if (lletra==(*it_pair).first){
                            (*it_pair).second++;
                            trobat=true;
                        }
			            else it_pair++;
                    }
		            //sino es trobat crear nou pair amb el cont que ha surtit i canviar de paraula i sumar 1 al cont
                    if (!trobat){
                        pair<char,int> nou_pair(lletra,cont);
                        list_pair.push_back(nou_pair);
                        lletra_ant=lletra;
                    }
                }
            }
            //avançar lletra
            it_L++;
        }
        //buscar pair mes gran
        list<pair<char,int> >::iterator it=list_pair.begin();
        int max=0;
	    list<char> list_aux;
        //Bucle si es mes gran que max borrar llista i posar nou pair si es igual afegir element
	    while (it!=list_pair.end()){
            if ((*it).second>max){
                max=(*it).second;
	    	    char nou_char=(*it).first;
	    	    list_aux.erase(list_aux.begin(),list_aux.end());
	    	    list_aux.push_back(nou_char);
            }
            else if ((*it).second==max) {
		        char nou_char=(*it).first;
		        list_aux.push_back(nou_char);
	        }
            it++;
        }
        //si llista es mes gran que 1 empat, sino treure primer element de la llista
	    list<char>::iterator it_char_aux=list_aux.begin();
	    if (list_aux.size()>1) res='<';
	    else res=*it_char_aux;
    }
    //return res
    return res;
}