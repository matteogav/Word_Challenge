#include "diccionari.hpp"
#define MAX 50

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
            n->_par = m->_par;
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
    _arrel->_par = "";
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
    esborra_nodes(_arrel->_dret);
}

/* Afegeix la paraula p al diccionari; si la paraula p ja formava
    part del diccionari, l'operació no té cap efecte. */
void diccionari::insereix(const string& p) throw(error){
    string p2 = p + '@';
    node* pare = _arrel;
    _arrel = rinsereix(_arrel, 0, p2, pare);
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
    L.clear();
    if(q.front() != "\0"){
        if (_sz == 1){                              // diccionari amb paraula buida
            string paraula_buida = "\0";
            L.push_back(paraula_buida);
        }
        else {                                      // diccionari amb una o mes de una paraula
            bool totes = true;
            nat x=0;
            while (x < q.size() and totes){         // mirem si q te totes les lletres del abecedari en cada string si es aixi
                                                     // treu totes les paraules crdidant llista_paraules(1,L)
                string aux_q = q[x];
                if (aux_q.size() != 26) totes = false;
                x++;
            }

            if (totes) {
                list<string> LL;
                nat j = q.size();
                llista_paraules(j, LL);
                list<string>::iterator it = LL.begin();
                while (it != LL.end()){
                    string it_s = *it;
                    if (it_s.size() == q.size()) L.push_back(it_s);
                    it++;
                }
            }
            else{
                string aux_q = "", res="";
                // paraula amb les primeres lletres de cada paraula del string q
                unsigned x = 0;
                while (x < q.size()){
                    string aux_string = q[x];
                    aux_q += aux_string[0];
                    x++;
                }
                rconsulta(_arrel->_dret,0,aux_q,res,q);
                if (res.size() == q.size()){
                    node* n = rprefix(_arrel->_dret, 0, res);
                    if (n != NULL) {
                        L.push_back(res);
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
        char aux[MAX];
        list<string> aux_L;
        rllista_paraules(_arrel->_dret, aux, 0, aux_L);

        list<string>::iterator it=aux_L.begin();
        while (it != aux_L.end()){
            string aux_it=*it;
            if (aux_it.size() >= k) {
                L.push_back(aux_it);
            }
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
        if (i == k.length() and n->_c == '@') res = n;
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

typename diccionari::node* diccionari::rinsereix (node* n, nat i, const string &k, node* pare) throw(error){
    if (n == NULL){
        n = new node;
        n->_esq = n->_dret = n->_cen = NULL;
        n->_c = k[i];
        try{
            if (i < k.size()){
            string aux_s = pare->_par;
            n->_par = aux_s + k[i];
            pare = n;
                n->_cen = rinsereix(n->_cen, i+1, k, pare);
            }
        }
        catch (error){
            delete n;
            throw;
        }
    }
    else{
        if (n->_c > k[i]) {
            n->_esq = rinsereix(n->_esq, i, k, pare);
        }
        else if (n->_c < k[i]) {
            n->_dret = rinsereix(n->_dret, i ,k, pare);
        }
        else {
            pare = n;
            n->_cen = rinsereix(n->_cen, i+1, k, pare);  //n->_c == k[i]
        }
    }
    return n;
}

void diccionari::rllista_paraules(node* n, char* aux, nat i, list<string>& aux_L) throw(){
    if (n != NULL){
        rllista_paraules(n->_esq, aux, i, aux_L);
        if (n->_c != '@') aux[i] = n->_c;
        else if (n->_c == '@'){
            aux[i+1] = '\0';
            string aux_s = aux;
            if (aux_s.size() <= 4){
                nat mida_aux = aux_s.length();
                aux_s.erase(mida_aux-1);
            }
            aux_L.push_back(aux_s);
        }
        rllista_paraules(n->_cen, aux, i+1, aux_L);
        rllista_paraules(n->_dret, aux, i, aux_L);
    }
}

void diccionari::rconsulta (node* n, nat i, string &k, string& res, const vector<string>& q) throw(){
    if (n != NULL){
        if (k[i] < n->_c) {     // si lletra de k es mes petita mira node esquerra
            rconsulta(n->_esq,i,k,res,q);
        }
        else if (k[i] > n->_c) {        // sino mirar node dret
            rconsulta(n->_dret,i,k,res,q);
        }
        node* pare = n;         // creo un anterior i el numero de i en aquest moment
        nat x = i;
        if (k[i] == n->_c) {        // si es igual afegir lletra a k
            res += k[i];
            rconsulta(n->_cen,i+1,k,res,q);
        }
        else if (n->_c != '@' and i < q.size()){  //k[i] != n->_c     sino canviar lletra de posicio per una mes de q
            string aux_q = q[i];
            nat j = aux_q.find(k[i]);
            j++;
            if(j < aux_q.size()) {      // si es pot canviar canvia i mirar per aquesta
                k[i] = aux_q[j];
                rconsulta(n,i,k,res,q);
            }
            else {
                nat mida_res = res.length();      // sino es pot canviar torna enrere i borra lletra de res
                if (mida_res > 0) res.erase(mida_res-1);
                rconsulta(pare,x,k,res,q);
            }
        }
    }
}