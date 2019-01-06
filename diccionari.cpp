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
            n->_cen = copia_nodes(m->_cen);
            n->_dret = copia_nodes(m->_dret);
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
        esborra_nodes(m->_cen);
        esborra_nodes(m->_dret);
    }
    delete m;
}

/* Construeix un diccionari que conté únicament una paraula:
    la paraula buida. */
diccionari::diccionari() throw(error){
    _arrel->_c='\0';                // codi ascii 00
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
    string res = "";

    if (_arrel->_dret != NULL){
        string p_aux = p;
        bool trobat = false;

        while (!p_aux.empty() and !trobat){
            node* n = rprefix(_arrel->_dret, 0, p_aux);
            if (n != NULL) {
                res = p_aux;
                trobat = true;
            }
            //treure la ultima lletra de la paraula
            nat mida = p_aux.length();
            p_aux.erase(mida-1);
        }
    }
    else {
        string paraula_buida = "\0";
        res = paraula_buida;
    }
    return res;
}

/* Retorna la llista de paraules del diccionari que satisfan el
    patró especificat en el vector d'strings q, en ordre alfabètic
    ascendent. */
void diccionari::satisfan_patro(const vector<string>& q, list<string>& L) const throw(error){
    bool totes = true;
    nat x=0;
    while (x < q.size() and totes){         // mirem si q te totes les lletres del abecedari en cada string si es aixi
                                            // treu totes les paraules crdidant llista_paraules(1,L)
        string aux_q = q[x];
        if (aux_q.size() != 26) totes = false;
        x++;
    }
    if (totes) llista_paraules(1, L);
    else {
        string aux_q = "", primera = q[0], aux = "", res = "";
        nat z = 0, mida_q = q.size();
        int i=0, j=0;
        vector<nat> vect_i;                 // mida vector = mida string q amb tots iniciats a 0
        vect_i.assign(mida_q, 0);

        // paraula amb les primeres lletres de cada paraula del string q
        unsigned x = 0;
        while (x < q.size()){
            string aux_string = q[x];
            aux_q += aux_string[0];
            x++;
        }

        while (vect_i[0] < primera.size()){
            bool finalitzat = false;
            while (z < vect_i.size() and !finalitzat){

                i=z;
                nat mida_res = res.length();
                string aux_s = q[i];
                aux += aux_q[i];
                rsatisfan (_arrel, 0, aux, res);
                if (mida_res == res.length()) {             // si no modifica res
                    nat nat_vect_i = vect_i[i];
                    // augmentar lletra que toca si es pot i borrar l'afegida a aux en aux += aux_q[i]
                    bool trobat = false;
                    while (i > -1 and !trobat){
                        aux_s = q[i];
                        if (nat_vect_i+1 < aux_s.size()){
                            nat_vect_i++;
                            vect_i[i] = nat_vect_i;
                            aux[i] = aux_s[nat_vect_i];
                            nat mida_aux = aux.length();
                            aux.erase(mida_aux-1);
                            trobat = true;
                        }
                        else{
                            vect_i[i] = 0;
                            aux[i] = aux_s[0];
                            if (i-1 == -1) {
                                vect_i[0] = primera.size() + 1;
                                trobat = true;
                                finalitzat = true;
                            }
                            else {
                                i--;
                                nat_vect_i = vect_i[i];
                            }
                        }
                        nat mida_aux = aux.length();
                        aux.erase(mida_aux-1);
                    }
                }
                else {                                      // si modifica res
                    j = i;
                    // avança i
                    i++;
                }
                if (i == -1) i=0;
                z=i;
            }

            if (res.size() == q.size()){
                node* n = rprefix(_arrel->_dret, 0, res);
                if (n != NULL) {
                    L.push_back(res);
                }
                else {
                    // augmentar lletra que toca si es pot i borrar l'afegida a aux en aux += aux_q[i]
                    bool trobat = false;
                    while (j > -1 and !trobat){
                        nat nat_vect_i = vect_i[j];
                        string aux_s = q[j];
                        if (nat_vect_i+1 < aux_s.size()){
                            nat_vect_i++;
                            vect_i[j] = nat_vect_i;
                            aux[j] = aux_s[nat_vect_i];
                            nat mida_aux = aux.length();
                            aux.erase(mida_aux-1);
                            trobat = true;
                        }
                        else{
                            vect_i[j] = 0;
                            aux[j] = aux_s[0];
                            if (j-1 == -1) {
                                vect_i[0] = primera.size() + 1;
                                trobat = true;
                                finalitzat = true;
                            }
                            else {
                                j--;
                                nat_vect_i = vect_i[j];
                            }
                        }
                        nat mida_aux = aux.length();
                        aux.erase(mida_aux-1);
                    }
                }
            }
        }
    }
    if (L.empty()) {
        string paraula_buida = "\0";
        L.push_back(paraula_buida);                 // si la llista resultant es buida afegir '\0' a L perque sempre ha
    }                                                 // ha de tornar una paraula buida minim
}

/* Retorna una llista amb totes les paraules del diccionari
    de longitud major o igual a k en ordre alfabètic ascendent. */
void diccionari::llista_paraules(nat k, list<string>& L) const throw(error){
    if (_arrel->_dret != NULL){
        string aux;
        list<string> aux_L;
        rllista_paraules(_arrel->_dret, aux, 0, aux_L);

        list<string>::iterator it=aux_L.begin();
        while (it != aux_L.end()){
            string aux_it=*it;
            if (aux_it.size() >= k) L.push_back(aux_it);
            it++;
        }
    }
    else {
        string paraula_buida = "\0";
        L.push_back(paraula_buida);
    }
}

/* Retorna el nombre de paraules en el diccionari. */
nat diccionari::num_pal() const throw(){
    return _sz;
}

typename diccionari::node* diccionari::rprefix (node* n, nat i, const string &k) throw(){
    node* res  = NULL;
    if (n != NULL){
        if (i == k.length() and n->_c == '#') res = n;
        else if (n->_c > k[i]) res = rprefix(n->_esq, i, k);
        else if (n->_c < k[i]) res = rprefix(n->_dret, i, k);
        else if (n->_c == k[i]) res = rprefix(n->_cen, i+1, k);
    }
    return res;
}

void diccionari::rsatisfan (node* n, nat i, const string &k, string& res) throw(){

    if (n != NULL and i < k.size()){
        if (n->_c > k[i]) rsatisfan(n->_esq, i, k, res);
        else if (n->_c < k[i]) rsatisfan(n->_dret, i, k, res);
        else if (n->_c == k[i]) {
            res = res + k[i];
            rsatisfan(n->_cen, i+1, k, res);
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
