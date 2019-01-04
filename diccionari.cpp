#include "diccionari.hpp"

/* si m és NULL, el resultat és NULL; sinó,
   el resultat apunta al primer node d'un arbre ternari
   de nodes que són còpia de l'arbre apuntat per m */
typename diccionari::node* diccionari::copia_nodes(node* m) throw(error){
  node* n;
    if (m == NULL) n = NULL;
    else {
        n = new node;
        try {
            n->_c = m->_c;
            n->_esq = copia_nodes(m->_esq);
            n->_dret = copia_nodes(m->_dret);
            n->_cen = copia_nodes(m->_cen);
        }
        catch(error) {
            delete n;
            throw;
        }
    }
    return n;
}

void diccionari::esborra_nodes(node* m) throw(){
    if (m != NULL) {
        esborra_nodes(m->_esq);
        esborra_nodes(m->_dret);
        esborra_nodes(m->_cen);
        delete m;
    }
}

/* Construeix un diccionari que conté únicament una paraula:
    la paraula buida. */
diccionari::diccionari() throw(error){
    _arrel->_c='\0';
    _arrel->_esq = _arrel->_cen = _arrel->_dret = NULL;
    _sz=1;
}

/* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
diccionari::diccionari(const diccionari& D) throw(error){
    _arrel = copia_nodes(D._arrel);
}
diccionari& diccionari::operator=(const diccionari& D) throw(error){
    if (this != &D) {
        node* aux;
        aux = copia_nodes(D._arrel);
        esborra_nodes(_arrel);
        _arrel = aux;
    }
    return (*this);
}
diccionari::~diccionari() throw(){
    esborra_nodes(_arrel);
}

/* Afegeix la paraula p al diccionari; si la paraula p ja formava
    part del diccionari, l'operació no té cap efecte. */
void diccionari::insereix(const string& p) throw(error){
    string p2 = p + '#';
    _arrel = rinsereix(_arrel, 0, p2);
    _sz++;
}

/* Retorna el prefix més llarg de p que és una paraula que pertany
    al diccionari, o dit d'una forma més precisa, retorna la
    paraula més llarga del diccionari que és prefix de p. */
string diccionari::prefix(const string& p) const throw(error){
    string p2 = p;
    string res = "";
    rprefix(_arrel,0,p2,res);
    return res;
}

/* Retorna la llista de paraules del diccionari que satisfan el
    patró especificat en el vector d'strings q, en ordre alfabètic
    ascendent. */
void diccionari::satisfan_patro(const vector<string>& q, list<string>& L) const throw(error){

}

/* Retorna una llista amb totes les paraules del diccionari
    de longitud major o igual a k en ordre alfabètic ascendent. */
void diccionari::llista_paraules(nat k, list<string>& L) const throw(error){
    string aux;
    list<string> aux_L;
    rllista_paraules(_arrel, aux, 0, aux_L);

    list<string>::iterator it=aux_L.begin();
    while (it != aux_L.end()){
        string aux_it=*it;
        if (aux_it.size() >= k) L.push_back(aux_it);
        it++;
    }
}

/* Retorna el nombre de paraules en el diccionari. */
nat diccionari::num_pal() const throw(){
    return _sz;
}

void diccionari::rprefix (node* n, nat i, const string &k, string &res) throw(){
    if (n != NULL and i < k.size()){
        if (n->_c > k[i]) rprefix(n->_esq, i, k, res);
        else if (n->_c < k[i]) rprefix(n->_dret, i, k, res);
        else if (n->_c == k[i]) {
            res = res + k[i];
            rprefix(n->_cen, i+1, k, res);
        }
    }
}

typename diccionari::node* diccionari::rinsereix (node* n, nat i, const string &k) throw(error){
    if (n == NULL){
        n = new node;
        n->_esq = n->_dret = n->_cen = NULL;
        n->_c = k[i];
        try{
            if (i < k.size()){
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
        else n->_cen = rinsereix(n->_cen, i+1, k);  //n->_c == k[i]
    }
    return n;
}

void diccionari::rllista_paraules(node* n, string k, nat i, list<string>& aux_L) throw(){
    if (n){
        rllista_paraules(n->_esq, k, i, aux_L);
        if (n->_c!='#') k[i] = n->_c;
        else {
            aux_L.push_back(k);
            k = "";
        }
        rllista_paraules(n->_cen, k, i+1, aux_L);
        rllista_paraules(n->_dret, k, i, aux_L);
    }
}
