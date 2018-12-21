CC = g++ -c
CO= g++ -o
opcions= -std=c++98 -g -O0 -ansi -Wall

TARGETS  = anagrames diccionari driver_joc_par iter_subset obte_paraules word_toolkit monta
all: $(TARGETS)

anagrames:
	$(CC) $(opcions) anagrames.cpp

diccionari:
	$(CC) $(opcions) diccionari.cpp

driver_joc_par:
	$(CC) $(opcions) driver_joc_par.cpp

iter_subset:
	$(CC) $(opcions) iter_subset.cpp

obte_paraules:
	$(CC) $(opcions) obte_paraules.cpp

word_toolkit:
	$(CC) $(opcions) word_toolkit.cpp

monta:
	$(CO) driver driver_joc_par.o anagrames.o diccionari.o iter_subset.o obte_paraules.o word_toolkit.o -lesin

clean:
	rm anagrames.o diccionari.o driver_joc_par.o iter_subset.o obte_paraules.o word_toolkit.o