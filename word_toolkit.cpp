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
    char res;
    list<string> aux_L=L;                   //copia manajable de L
    if (abc==excl) res='\0';
    //sino
    else {
        list<pair<char,int> > list_pair;                //llista de pairs
        list<string>::iterator it_L=aux_L.begin();      //iterador que apunta a la primera paraula
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
                //Si list_pair esta buida
                if (!list_pair.empty()){
                    //crear pair
                    pair<char,int> nou_pair(paraula[0],0);
                    list_pair.push_back(nou_pair);
                }
                char lletra;
                int cont;
                //bucle de cada lletra de la paraula
                for (unsigned j=0;j<paraula.size();j++){
                    if (j==0){
                        lletra=paraula[j];
                        cont=1;
                    }
                    else{
                        if (lletra==paraula[j]){
                            cont++;
                        }
                        else{
                            bool trobat=false;
                            list<pair<char,int> >::iterator it_pair=list_pair.begin();
                            while (it_pair!=list_pair.end() and !trobat){
                                if (lletra==(*it_pair).first){
                                    (*it_pair).second++;
                                    trobat=true;
                                }
                            }
                            if (!trobat){
                                pair<char,int> nou_pair(lletra,cont);
                                list_pair.push_back(nou_pair);
                                lletra=paraula[j];
                                cont=1;
                            }
                        }
                    }
                }
            }
            //avançar lletra
            it_L++;
        }
        //buscar pair mes gran
        list<pair<char,int> >::iterator it=list_pair.begin();
        int max=0;
        char lletra_max;
        bool empat=false;
        while (it!=list_pair.end()){
            if ((*it).second>max){
                max=(*it).second;
                lletra_max=(*it).first;
                empat=false;
            }
            else if ((*it).second=max) empat=true;
            it++;
        }
        pair<char,int> aux=*it;
        if (list_pair.size()>2){
            it++;
            pair<char,int> aux2=*it;
            //si pair[0].second == pair[1].second res='<';
            if(aux.second == aux2.second) res='<';
            //sino res=pair[0].first;
            else res=aux.first;
        }
        else res=aux.first;
    }
    //return res
    return res;
}