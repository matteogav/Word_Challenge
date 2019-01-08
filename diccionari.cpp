#include "diccionari.hpp"
#define MAX 50

/* si m és NULL, el resultat és NULL; sinó,
   el resultat apunta al primer node d'un arbre ternari
   de nodes que són còpia de l'arbre apuntat per m */
typename diccionari::node* diccionari::copia_nodes(node* m) throw(error){
    // Pre: node existeix
    // Post: retorna node igual a m
    //0(n) n nodes

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
    // Pre: node m existeix
    // Post: esborra l'arbre per complet
    //0(n) n nodes

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
    // Pre: cert
    // Post: emplena arrel amb lo basic.
    //0()

    _arrel->_c='@';                // codi ascii 00
    _arrel->_esq = _arrel->_cen = _arrel->_dret = NULL;
    _sz=1;
}

/* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
diccionari::diccionari(const diccionari& D) throw(error){
    // Pre: existeix D
    // Post: copia D
    //0(n) n nodes de D

    _arrel = copia_nodes(D._arrel);
}
diccionari& diccionari::operator=(const diccionari& D) throw(error){
    // Pre: existeix D
    // Post: retona node _arrel copait de D
    //0(n) n nodes de D

    if (this != &D) {
        node* aux;
        aux = copia_nodes(D._arrel);
        esborra_nodes(_arrel);
        _arrel = aux;
    }
    return (*this);
}
diccionari::~diccionari() throw(){
    // Pre: cert
    // Post: esborra arbre
    //0(n) n nodes

    esborra_nodes(_arrel->_dret);
}

/* Afegeix la paraula p al diccionari; si la paraula p ja formava
    part del diccionari, l'operació no té cap efecte. */
void diccionari::insereix(const string& p) throw(error){
    // Pre: existeix p
    // Post: posa la paraula en el diccionari
    //0(n) n de p.size()

    string p2 = p + '@';
    _arrel = rinsereix(_arrel, 0, p2);
    _sz++;
}

/* Retorna el prefix més llarg de p que és una paraula que pertany
    al diccionari, o dit d'una forma més precisa, retorna la
    paraula més llarga del diccionari que és prefix de p. */
string diccionari::prefix(const string& p) const throw(error){
    // Pre: existeix p
    // Post: retorna l'string mes llarga que coincideix amb una paraula del diccionari
    //0(n)

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
    // Pre: existeix L i q
    // Post: emplena L amb les paraules que compleixen els diferents patrons de q
    //0(n)

    /*list<string> LL;
    llista_paraules(1,LL);
    list<string>::iterator it=LL.begin();
    cout<<"[[";
    while (it != LL.end()){
        string au=*it;
        cout<<" "<<au;
        it++;
    }
    cout<<" ]]]"<<endl;
*/
    string s;
    list<string> aux;
    if (q.size() >= 1){
        L = rconsulta(_arrel->_dret, q, 0, s, aux);
    }
    if (L.empty()) {
        string paraula_buida = "\0";
        L.push_back(paraula_buida);                 // si la llista resultant es buida afegir '\0' a L perque sempre ha
    }                                                 // ha de tornar una paraula buida minim
}

/* Retorna una llista amb totes les paraules del diccionari
    de longitud major o igual a k en ordre alfabètic ascendent. */
void diccionari::llista_paraules(nat k, list<string>& L) const throw(error){
    // Pre: k > 0
    // Post: emplena la llista L amb les paraules que son mes grans o iguals que k del diccionari
    //0(n)

    if (_arrel->_dret != NULL){
        string aux;
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
    // Pre: cert
    // Post: retorna el nombre de paraules del diccionari
    //0()
    return _sz;
}

typename diccionari::node* diccionari::rprefix (node* n, nat i, const string &k) throw(){
    // Pre: existeix n, i, i k
    // Post: retorna node de la cerca del prefix
    //0(n)

    node* res  = NULL;
    if (n != NULL){
        if (i == k.length() and n->_c == '@') res = n;
        else if (n->_c > k[i]) res = rprefix(n->_esq, i, k);
        else if (n->_c < k[i]) res = rprefix(n->_dret, i, k);
        else if (n->_c == k[i]) res = rprefix(n->_cen, i+1, k);
    }
    return res;
}

void diccionari::rsatisfan (string &aux_q, vector<string> q, list<string> aux_L, list<string> &L) throw(){
    // Pre: existeix aux_q, q, aux_L i L
    // Post: emplena L amb les paraules que son iguals als possibles patrons de q
    //0(n)

    string primera = q[0];
    nat mida_q = q.size();
    vector<nat> vect_i;                 // mida vector = mida string q amb tots iniciats a 0
    vect_i.assign(mida_q, 0);
    int i = vect_i.size()-1;
    list<string>::iterator it_aux_L = aux_L.begin();

    while (it_aux_L != aux_L.end()){
        string it_s = *it_aux_L;
        if (it_s == aux_q) {
            L.push_back(it_s);
            it_aux_L++;
        }
        else if(vect_i[i]+1 >= q[i].size()){             // si i +1 es >= q.size() de ACAS passa a ACEL
            while (vect_i[i]+1 >= q[i].size() and i >= 0){          //bucle si fos ACUS passa a ECUS
                vect_i[i] = 0;
                string aux_s = q[i];
                aux_q[i] = aux_s[0];
                i--;
            }
            if (i < 0){
                it_aux_L++;
            }
            else {
                vect_i[i] = vect_i[i] + 1;
                string aux_s = q[i];
                aux_q[i] = aux_s[vect_i[i]];
            }
        }
        else if (vect_i[i]+1 < q[i].size()){
            vect_i[i] = vect_i[i] + 1;
            string aux_s = q[i];
            aux_q[i] = aux_s[vect_i[i]];
        }
        i = vect_i.size()-1;
    }
}

typename diccionari::node* diccionari::rinsereix (node* n, nat i, const string &k) throw(error){
    // Pre: existeix n, i, i k
    // Post: retorna el node on acaba la insercio
    //0(n) n nodes

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

void diccionari::rllista_paraules(node* n, string &aux, nat i, list<string>& aux_L) throw(){
    // Pre: existeix n, aux, i i aux_L
    // Post: emplena aux_L amb les paraules que hi ha al diccionari
    //0(n) n nodes

    if (n != NULL){
        rllista_paraules(n->_esq, aux, i, aux_L);
        if (n->_c != '@') {
            aux += n->_c;
            rllista_paraules(n->_cen, aux, i+1, aux_L);
            nat mida_aux = aux.length();
            aux.erase(mida_aux-1);
            rllista_paraules(n->_dret, aux, i, aux_L);
        }
        else if (n->_c == '@'){
            aux_L.push_back(aux);
            if (n->_dret != NULL) rllista_paraules(n->_dret, aux, i, aux_L);
            //aux="";
        }
    }
}

list<string> diccionari::rconsulta (node* n, vector<string> v, nat i, string& s, list<string>& aux) throw(){
  if (n != NULL){
    if (n->_c == '@') {
      if (s.size() == v.size()) {
          aux.push_back(s);
      }
    }
    aux = rconsulta(n->_esq, v, i, s, aux);

    bool trobat = false;

    // si i < busca paraula en v[i]

    if (i < v.size()){
      string aux_s=v[i];
      nat j = 0;

      while (j < aux_s.size() and !trobat){
        if (aux_s[j] == n->_c) trobat = true;
        j++;
      }
    }

    // si troba la lletra suma a s i tira pel mig
    if(trobat){
      s+= n->_c;
//      cout<<"s: "<<s<<endl;
      aux = rconsulta(n->_cen, v, i+1, s, aux);
    }

    // borra ultima lletra
    if (s.size() > 0){
      if (s[s.size()-1] == n->_c){
        nat mida_aux = s.length();
        s.erase(mida_aux-1);
      }
    }

    aux = rconsulta(n->_dret, v, i, s, aux);
  }
  return aux;
}