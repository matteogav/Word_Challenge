#include "diccionari.hpp"

/* Construeix un diccionari que conté únicament una paraula:
    la paraula buida. */
diccionari::diccionari() throw(error){

}

/* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
diccionari::diccionari(const diccionari& D) throw(error){

}
diccionari& diccionari::operator=(const diccionari& D) throw(error){

}
diccionari::~diccionari() throw(){

}

/* Afegeix la paraula p al diccionari; si la paraula p ja formava
    part del diccionari, l'operació no té cap efecte. */
void diccionari::insereix(const string& p) throw(error){
    string k2 = p /*+ especial<string>()*/;
    _arrel = rinsereix(_arrel, 0, k2);
}

/* Retorna el prefix més llarg de p que és una paraula que pertany
    al diccionari, o dit d'una forma més precisa, retorna la
    paraula més llarga del diccionari que és prefix de p. */
string diccionari::prefix(const string& p) const throw(error){

}

/* Retorna la llista de paraules del diccionari que satisfan el
    patró especificat en el vector d'strings q, en ordre alfabètic
    ascendent. */
void diccionari::satisfan_patro(const vector<string>& q, list<string>& L) const throw(error){

}

/* Retorna una llista amb totes les paraules del diccionari
    de longitud major o igual a k en ordre alfabètic ascendent. */
void diccionari::llista_paraules(nat k, list<string>& L) const throw(error){

}

/* Retorna el nombre de paraules en el diccionari. */
nat diccionari::num_pal() const throw(){
    return _sz;
}

typename diccionari::node* diccionari::rconsulta (node* n, nat i, const string &k) throw(){

}

typename diccionari::node* diccionari::rinsereix (node* n, nat i, const string &k) throw(error){
    if (n == NULL){
        n = new node;
        n->_esq = n->_dret = n->_cen = NULL;
        n->_c = k[i];
        try{
            if (i < k.size()-1){
                n->_cen = rinsereix(n->_cen, i+1, k);
            }
        }
        catch (error){
            delete n;
            throw;
        }
    }
    else{
        if (n->_c > k[i]) n->_esq = rinsereix(n->_esq, i, k);
        else if (n->_c < k[i]) n->_dret = rinsereix(n->_dret, i ,k);
        else n->_cen = rinsereix(n->_cen, i+1, k);
    }
    return n;
}

//typename char operator[](int i) throw(error);

