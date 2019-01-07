###! Memoria general
#set_memory 100000 1000000000
###! ---------------------------------------------------
###!        CLASSE DICCIONARI
###! ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
###!              INDEX DEL JOC DE PROVES DE LA CLASSE DICCIONARI
###! +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
###!
###! 100 Diccionari buit
###! 101 Diccionari amb 1 paraula
###! 102 Diccionari amb 2 paraules
###!     102.1 Les paraules w1 i w2 no tenen prefix comú
###!     102.2 Les paraules w1 i w2 tenen prefix comú
###!     102.3 La paraule w1 es prefix de w2
###! 103 Diccionari amb 3 paraules
###!     103.1 Dues a dues no comparteixen prefix comú
###!     103.2 Dues de elles (w1 y w2) comparteixen un prefix comú
###!     103.3 Una d'elles es prefix d'una altre (w1 de w2)
###!           i no comparteixen prefix comú amb la tercera
###!     103.4 Les tres paraules comparteixen un prefix comú
###!           i cap parella comparteix un prefix comú més llarg
###!     103.5 Les tres paraules comparteixn un prefix comú
###!           i w1 i w2 comparteixen un prefix comú més llarg
###!     103.6 Una d'elles es prefix d'una altre (w1 de w2)
###!           y comparteix prefix comú amb la tercera, però no es prefix
###!           seu ni viceversa; per tant totes tres tenen un prefix comú
###!     103.7 Una d'elles es prefix de les altres dues (w1 de w2 y w1 de w3)
###!           però aquestes no tenen un prefix comu més llarg
###!     103.8 Una d'elles es prefix de les altres dues (w1 de w2 y w1 de w3)
###!           i aquestes dues (w2 y w3) tenen un prefix comu més llarg
###!     103.9 Una d'elles es prefix d'un altre (w1 de w2) i aquesta
###!           es prefix de la tercera (w2 de w3)
###! 104 Prova de insercions repetides en diccionaris petits
###! 105 Diccionari amb varies (1..9) paraules per cada lletra
###!     de l'abecedari. (mitjana = 4)
###!     105.1 Quasi ordenades en ordre alfabeticament creixent
###!     105.2 Ordenades en ordre alfabeticament decrexient
###!     105.3 Aleatoriament desordenades
###! 106 Diccionari amb 624 paraules que comencen per 'A'
###!     106.1 N'hi ha dues dobles insercions
###!           Ordenades en ordre alfabetic creixent
###!     106.2 Ordenades en ordre alfabetic decreixent
###!     106.3 Aleatoriament desordenades
###! 107 Diccionari amb UNA única paraula d'un sol
###!     caràcter per cada lletra de l'abecedari.
###!     107.1 Las paraules s'insereixen quasi en ordre ascendent.
###!     107.2 Las paraules s'insereixen en ordre ascendent.
###!     107.3 Las paraules s'insereixen en ordre descendent.
###!     107.4 Las paraules s'insereixen completament desordenades.
###! 108 Diccionari amb 20 paraules de mes de 50 caracters
###! 109 Casos extres de satisfan_patro
###!     109.1 Patró amb 3 lletres
###!     109.2 Patró amb 6 lletres
###! 110 Constructor per Copia
###! 111 Metode Assignació
###!
###! ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
###!
###!
###!-------------------------------------------------------------------
###100 Diccionari buit
###!-------------------------------------------------------------------
###!
#init d100 dicc
###!
###! Prefixos
#pre ""

##
#pre Z

##
#pre ZZ

##
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per Z
#spats [Z]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per ZZ
#spats [Z,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [Z,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###!
#destroy
###!
###!
###!-------------------------------------------------------------------
###101 Diccionari amb 1 paraules
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###101.1 CAS NÚMERO 1
###!     la paraula w té longitud 1
###!     l = 1
###!          w = A
###!-------------------------------------------------------------------
###!
#init d101A dicc
###!
#ins A
###!
###! Prefixos per A
#pre A
A
##A
#pre Z

##
#pre ZY

##
#pre AZ
A
##A
#pre ZYY

##
#pre AZY
A
##A
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per A
#spats [A]
[A]
##[A]
#spats [*]
[A]
##[A]
###!
###! Matchings per AZ
#spats [A,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [A,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###!
#destroy
###!
###!
###!-------------------------------------------------------------------
###101.2 CAS NÚMERO 2
###!     la paraula w té longitud 2
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###101.2.1 Subcas 2A
###!          l = 2   w amb caràcters iguals
###!          w = AA
###!-------------------------------------------------------------------
###!
#init d2A dicc
###!
#ins AA
###!
###! Prefixos per AA
#pre A

##
#pre AA
AA
##AA
#pre ZA

##
#pre AZ

##
#pre ZAY

##
#pre AZY

##
#pre AAZ
AA
##AA
#pre ZAYY

##
#pre AZYY

##
#pre AAZY
AA
##AA
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per A
#spats [A]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per AA
#spats [A,A]
[AA]
##[AA]
#spats [*,A]
[AA]
##[AA]
#spats [A,*]
[AA]
##[AA]
#spats [*,*]
[AA]
##[AA]
###!
###! Matchings per AAZ
#spats [A,A,Z]
[]
##[]
#spats [*,A,Z]
[]
##[]
#spats [A,*,Z]
[]
##[]
#spats [A,A,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,A,*]
[]
##[]
#spats [A,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###101.2.2 Subcas 2B
###!          l = 2   w amb caràcters diferents
###!          w = AB
###!-------------------------------------------------------------------
###!
#init d2B dicc
###!
#ins AB
###!
###! Prefixos per AB
#pre A

##
#pre AB
AB
##AB
#pre ZB

##
#pre AZ

##
#pre ZBY

##
#pre AZY

##
#pre ABZ
AB
##AB
#pre ZBYY

##
#pre AZYY

##
#pre ABZY
AB
##AB
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per A
#spats [A]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per AB
#spats [A,B]
[AB]
##[AB]
#spats [*,B]
[AB]
##[AB]
#spats [A,*]
[AB]
##[AB]
#spats [*,*]
[AB]
##[AB]
###!
###! Matchings per ABZ
#spats [A,B,Z]
[]
##[]
#spats [*,B,Z]
[]
##[]
#spats [A,*,Z]
[]
##[]
#spats [A,B,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,B,*]
[]
##[]
#spats [A,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!
###!-------------------------------------------------------------------
###101.3 CAS NÚMERO 3
###!     la paraula w té longitud 3
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###101.3.1 Subcas 3A
###!          l = 3   w amb caràcters iguals
###!          w = AAA
###!-------------------------------------------------------------------
###!
#init d3A dicc
###!
#ins AAA
###!
###! Prefixos per AAA
#pre A

##
#pre AA

##
#pre AAA
AAA
##AAA
#pre ZAA

##
#pre AZA

##
#pre AAZ

##
#pre ZAAY

##
#pre AAZY

##
#pre AAAZ
AAA
##AAA
#pre ZAAYY

##
#pre AAZYY

##
#pre AAAZY
AAA
##AAA
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per AA
#spats [A,A]
[]
##[]
#spats [*,A]
[]
##[]
#spats [A,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per AAA
#spats [A,A,A]
[AAA]
##[AAA]
#spats [*,A,A]
[AAA]
##[AAA]
#spats [A,*,A]
[AAA]
##[AAA]
#spats [A,A,*]
[AAA]
##[AAA]
#spats [*,*,A]
[AAA]
##[AAA]
#spats [*,A,*]
[AAA]
##[AAA]
#spats [A,*,*]
[AAA]
##[AAA]
#spats [*,*,*]
[AAA]
##[AAA]
###!
###! Matchings per AAAZ
#spats [A,A,A,Z]
[]
##[]
#spats [*,A,A,Z]
[]
##[]
#spats [A,*,A,Z]
[]
##[]
#spats [A,A,*,Z]
[]
##[]
#spats [A,A,A,*]
[]
##[]
#spats [*,*,A,Z]
[]
##[]
#spats [*,A,*,Z]
[]
##[]
#spats [*,A,A,*]
[]
##[]
#spats [A,*,*,Z]
[]
##[]
#spats [A,*,A,*]
[]
##[]
#spats [A,A,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,A,*]
[]
##[]
#spats [*,A,*,*]
[]
##[]
#spats [A,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###101.3.2 Subcas 3B
###!          l = 3   w amb caràcters diferents
###!          w = ABC
###!-------------------------------------------------------------------
###!
#init d3B dicc
###!
#ins ABC
###!
###! Prefixos per ABC
#pre A

##
#pre AB

##
#pre ABC
ABC
##ABC
#pre ZBC

##
#pre AZC

##
#pre ABZ

##
#pre ZBCY

##
#pre ABZY

##
#pre ABCZ
ABC
##ABC
#pre ZBCYY

##
#pre ABZYY

##
#pre ABCZY
ABC
##ABC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per AB
#spats [A,B]
[]
##[]
#spats [*,B]
[]
##[]
#spats [A,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per ABC
#spats [A,B,C]
[ABC]
##[ABC]
#spats [*,B,C]
[ABC]
##[ABC]
#spats [A,*,C]
[ABC]
##[ABC]
#spats [A,B,*]
[ABC]
##[ABC]
#spats [*,*,C]
[ABC]
##[ABC]
#spats [*,B,*]
[ABC]
##[ABC]
#spats [A,*,*]
[ABC]
##[ABC]
#spats [*,*,*]
[ABC]
##[ABC]
###!
###! Matchings per ABCZ
#spats [A,B,C,Z]
[]
##[]
#spats [*,B,C,Z]
[]
##[]
#spats [A,*,C,Z]
[]
##[]
#spats [A,B,*,Z]
[]
##[]
#spats [A,B,C,*]
[]
##[]
#spats [*,*,C,Z]
[]
##[]
#spats [*,B,*,Z]
[]
##[]
#spats [*,B,C,*]
[]
##[]
#spats [A,*,*,Z]
[]
##[]
#spats [A,*,C,*]
[]
##[]
#spats [A,B,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
[]
##[]
#spats [*,B,*,*]
[]
##[]
#spats [A,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!
###!-------------------------------------------------------------------
###101.4 CAS NÚMERO 4
###!     la paraula w té longitud 6
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###101.4.1 Subcas 4A
###!          l > 3   w amb caràcters iguals
###!          w = AAAAAA
###!-------------------------------------------------------------------
###!
#init d4A dicc
###!
#ins AAAAAA
###!
###! Prefixos per AAAAAA
#pre A

##
#pre AAAAA

##
#pre AAAAAA
AAAAAA
##AAAAAA
#pre ZAAAAA

##
#pre AAAAZA

##
#pre AAAAAZ

##
#pre ZAAAAAY

##
#pre AAAAAZY

##
#pre AAAAAAZ
AAAAAA
##AAAAAA
#pre ZAAAAAYY

##
#pre AAAAAZYY

##
#pre AAAAAAZY
AAAAAA
##AAAAAA
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per AAAAA
#spats [A,A,A,A,A]
[]
##[]
#spats [*,A,A,A,A]
[]
##[]
#spats [A,*,A,A,A]
[]
##[]
#spats [A,A,*,A,A]
[]
##[]
#spats [A,A,A,*,A]
[]
##[]
#spats [A,A,A,A,*]
[]
##[]
#spats [*,*,A,A,A]
[]
##[]
#spats [*,A,*,A,A]
[]
##[]
#spats [*,A,A,*,A]
[]
##[]
#spats [*,A,A,A,*]
[]
##[]
#spats [A,*,*,A,A]
[]
##[]
#spats [A,*,A,*,A]
[]
##[]
#spats [A,*,A,A,*]
[]
##[]
#spats [A,A,*,*,A]
[]
##[]
#spats [A,A,*,A,*]
[]
##[]
#spats [A,A,A,*,*]
[]
##[]
#spats [*,*,*,A,A]
[]
##[]
#spats [*,*,A,*,A]
[]
##[]
#spats [*,*,A,A,*]
[]
##[]
#spats [*,A,*,*,A]
[]
##[]
#spats [*,A,*,A,*]
[]
##[]
#spats [*,A,A,*,*]
[]
##[]
#spats [A,*,*,*,A]
[]
##[]
#spats [A,*,*,A,*]
[]
##[]
#spats [A,*,A,*,*]
[]
##[]
#spats [A,A,*,*,*]
[]
##[]
#spats [*,*,*,*,A]
[]
##[]
#spats [*,*,*,A,*]
[]
##[]
#spats [*,*,A,*,*]
[]
##[]
#spats [*,A,*,*,*]
[]
##[]
#spats [A,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per AAAAAA
#spats [A,A,A,A,A,A]
[AAAAAA]
##[AAAAAA]
#spats [*,A,A,A,A,A]
[AAAAAA]
##[AAAAAA]
#spats [A,*,A,A,A,A]
[AAAAAA]
##[AAAAAA]
#spats [A,A,*,A,A,A]
[AAAAAA]
##[AAAAAA]
#spats [A,A,A,*,A,A]
[AAAAAA]
##[AAAAAA]
#spats [A,A,A,A,*,A]
[AAAAAA]
##[AAAAAA]
#spats [A,A,A,A,A,*]
[AAAAAA]
##[AAAAAA]
#spats [*,*,A,A,A,A]
[AAAAAA]
##[AAAAAA]
#spats [*,A,*,A,A,A]
[AAAAAA]
##[AAAAAA]
#spats [*,A,A,*,A,A]
[AAAAAA]
##[AAAAAA]
#spats [*,A,A,A,*,A]
[AAAAAA]
##[AAAAAA]
#spats [*,A,A,A,A,*]
[AAAAAA]
##[AAAAAA]
#spats [A,*,*,A,A,A]
[AAAAAA]
##[AAAAAA]
#spats [A,*,A,*,A,A]
[AAAAAA]
##[AAAAAA]
#spats [A,*,A,A,*,A]
[AAAAAA]
##[AAAAAA]
#spats [A,*,A,A,A,*]
[AAAAAA]
##[AAAAAA]
#spats [A,A,*,*,A,A]
[AAAAAA]
##[AAAAAA]
#spats [A,A,*,A,*,A]
[AAAAAA]
##[AAAAAA]
#spats [A,A,*,A,A,*]
[AAAAAA]
##[AAAAAA]
#spats [A,A,A,*,*,A]
[AAAAAA]
##[AAAAAA]
#spats [A,A,A,*,A,*]
[AAAAAA]
##[AAAAAA]
#spats [A,A,A,A,*,*]
[AAAAAA]
##[AAAAAA]
#spats [*,*,*,A,A,A]
[AAAAAA]
##[AAAAAA]
#spats [*,*,A,*,A,A]
[AAAAAA]
##[AAAAAA]
#spats [*,*,A,A,*,A]
[AAAAAA]
##[AAAAAA]
#spats [*,*,A,A,A,*]
[AAAAAA]
##[AAAAAA]
#spats [*,A,*,*,A,A]
[AAAAAA]
##[AAAAAA]
#spats [*,A,*,A,*,A]
[AAAAAA]
##[AAAAAA]
#spats [*,A,*,A,A,*]
[AAAAAA]
##[AAAAAA]
#spats [*,A,A,*,*,A]
[AAAAAA]
##[AAAAAA]
#spats [*,A,A,*,A,*]
[AAAAAA]
##[AAAAAA]
#spats [*,A,A,A,*,*]
[AAAAAA]
##[AAAAAA]
#spats [A,*,*,*,A,A]
[AAAAAA]
##[AAAAAA]
#spats [A,*,*,A,*,A]
[AAAAAA]
##[AAAAAA]
#spats [A,*,*,A,A,*]
[AAAAAA]
##[AAAAAA]
#spats [A,*,A,*,*,A]
[AAAAAA]
##[AAAAAA]
#spats [A,*,A,*,A,*]
[AAAAAA]
##[AAAAAA]
#spats [A,*,A,A,*,*]
[AAAAAA]
##[AAAAAA]
#spats [A,A,*,*,*,A]
[AAAAAA]
##[AAAAAA]
#spats [A,A,*,*,A,*]
[AAAAAA]
##[AAAAAA]
#spats [A,A,*,A,*,*]
[AAAAAA]
##[AAAAAA]
#spats [A,A,A,*,*,*]
[AAAAAA]
##[AAAAAA]
#spats [*,*,*,*,A,A]
[AAAAAA]
##[AAAAAA]
#spats [*,*,*,A,*,A]
[AAAAAA]
##[AAAAAA]
#spats [*,*,*,A,A,*]
[AAAAAA]
##[AAAAAA]
#spats [*,*,A,*,*,A]
[AAAAAA]
##[AAAAAA]
#spats [*,*,A,*,A,*]
[AAAAAA]
##[AAAAAA]
#spats [*,*,A,A,*,*]
[AAAAAA]
##[AAAAAA]
#spats [*,A,*,*,*,A]
[AAAAAA]
##[AAAAAA]
#spats [*,A,*,*,A,*]
[AAAAAA]
##[AAAAAA]
#spats [*,A,*,A,*,*]
[AAAAAA]
##[AAAAAA]
#spats [*,A,A,*,*,*]
[AAAAAA]
##[AAAAAA]
#spats [A,*,*,*,*,A]
[AAAAAA]
##[AAAAAA]
#spats [A,*,*,*,A,*]
[AAAAAA]
##[AAAAAA]
#spats [A,*,*,A,*,*]
[AAAAAA]
##[AAAAAA]
#spats [A,*,A,*,*,*]
[AAAAAA]
##[AAAAAA]
#spats [A,A,*,*,*,*]
[AAAAAA]
##[AAAAAA]
#spats [*,*,*,*,*,A]
[AAAAAA]
##[AAAAAA]
#spats [*,*,*,*,A,*]
[AAAAAA]
##[AAAAAA]
#spats [*,*,*,A,*,*]
[AAAAAA]
##[AAAAAA]
#spats [*,*,A,*,*,*]
[AAAAAA]
##[AAAAAA]
#spats [*,A,*,*,*,*]
[AAAAAA]
##[AAAAAA]
#spats [A,*,*,*,*,*]
[AAAAAA]
##[AAAAAA]
#spats [*,*,*,*,*,*]
[AAAAAA]
##[AAAAAA]
###!
###! Matchings per AAAAAAZ
#spats [A,A,A,A,A,A,Z]
[]
##[]
#spats [*,A,A,A,A,A,Z]
[]
##[]
#spats [A,*,A,A,A,A,Z]
[]
##[]
#spats [A,A,*,A,A,A,Z]
[]
##[]
#spats [A,A,A,*,A,A,Z]
[]
##[]
#spats [A,A,A,A,*,A,Z]
[]
##[]
#spats [A,A,A,A,A,*,Z]
[]
##[]
#spats [A,A,A,A,A,A,*]
[]
##[]
#spats [*,*,A,A,A,A,Z]
[]
##[]
#spats [*,A,*,A,A,A,Z]
[]
##[]
#spats [*,A,A,*,A,A,Z]
[]
##[]
#spats [*,A,A,A,*,A,Z]
[]
##[]
#spats [*,A,A,A,A,*,Z]
[]
##[]
#spats [*,A,A,A,A,A,*]
[]
##[]
#spats [A,*,*,A,A,A,Z]
[]
##[]
#spats [A,*,A,*,A,A,Z]
[]
##[]
#spats [A,*,A,A,*,A,Z]
[]
##[]
#spats [A,*,A,A,A,*,Z]
[]
##[]
#spats [A,*,A,A,A,A,*]
[]
##[]
#spats [A,A,*,*,A,A,Z]
[]
##[]
#spats [A,A,*,A,*,A,Z]
[]
##[]
#spats [A,A,*,A,A,*,Z]
[]
##[]
#spats [A,A,*,A,A,A,*]
[]
##[]
#spats [A,A,A,*,*,A,Z]
[]
##[]
#spats [A,A,A,*,A,*,Z]
[]
##[]
#spats [A,A,A,*,A,A,*]
[]
##[]
#spats [A,A,A,A,*,*,Z]
[]
##[]
#spats [A,A,A,A,*,A,*]
[]
##[]
#spats [A,A,A,A,A,*,*]
[]
##[]
#spats [*,*,*,A,A,A,Z]
[]
##[]
#spats [*,*,A,*,A,A,Z]
[]
##[]
#spats [*,*,A,A,*,A,Z]
[]
##[]
#spats [*,*,A,A,A,*,Z]
[]
##[]
#spats [*,*,A,A,A,A,*]
[]
##[]
#spats [*,A,*,*,A,A,Z]
[]
##[]
#spats [*,A,*,A,*,A,Z]
[]
##[]
#spats [*,A,*,A,A,*,Z]
[]
##[]
#spats [*,A,*,A,A,A,*]
[]
##[]
#spats [*,A,A,*,*,A,Z]
[]
##[]
#spats [*,A,A,*,A,*,Z]
[]
##[]
#spats [*,A,A,*,A,A,*]
[]
##[]
#spats [*,A,A,A,*,*,Z]
[]
##[]
#spats [*,A,A,A,*,A,*]
[]
##[]
#spats [*,A,A,A,A,*,*]
[]
##[]
#spats [A,*,*,*,A,A,Z]
[]
##[]
#spats [A,*,*,A,*,A,Z]
[]
##[]
#spats [A,*,*,A,A,*,Z]
[]
##[]
#spats [A,*,*,A,A,A,*]
[]
##[]
#spats [A,*,A,*,*,A,Z]
[]
##[]
#spats [A,*,A,*,A,*,Z]
[]
##[]
#spats [A,*,A,*,A,A,*]
[]
##[]
#spats [A,*,A,A,*,*,Z]
[]
##[]
#spats [A,*,A,A,*,A,*]
[]
##[]
#spats [A,*,A,A,A,*,*]
[]
##[]
#spats [A,A,*,*,*,A,Z]
[]
##[]
#spats [A,A,*,*,A,*,Z]
[]
##[]
#spats [A,A,*,*,A,A,*]
[]
##[]
#spats [A,A,*,A,*,*,Z]
[]
##[]
#spats [A,A,*,A,*,A,*]
[]
##[]
#spats [A,A,*,A,A,*,*]
[]
##[]
#spats [A,A,A,*,*,*,Z]
[]
##[]
#spats [A,A,A,*,*,A,*]
[]
##[]
#spats [A,A,A,*,A,*,*]
[]
##[]
#spats [A,A,A,A,*,*,*]
[]
##[]
#spats [*,*,*,*,A,A,Z]
[]
##[]
#spats [*,*,*,A,*,A,Z]
[]
##[]
#spats [*,*,*,A,A,*,Z]
[]
##[]
#spats [*,*,*,A,A,A,*]
[]
##[]
#spats [*,*,A,*,*,A,Z]
[]
##[]
#spats [*,*,A,*,A,*,Z]
[]
##[]
#spats [*,*,A,*,A,A,*]
[]
##[]
#spats [*,*,A,A,*,*,Z]
[]
##[]
#spats [*,*,A,A,*,A,*]
[]
##[]
#spats [*,*,A,A,A,*,*]
[]
##[]
#spats [*,A,*,*,*,A,Z]
[]
##[]
#spats [*,A,*,*,A,*,Z]
[]
##[]
#spats [*,A,*,*,A,A,*]
[]
##[]
#spats [*,A,*,A,*,*,Z]
[]
##[]
#spats [*,A,*,A,*,A,*]
[]
##[]
#spats [*,A,*,A,A,*,*]
[]
##[]
#spats [*,A,A,*,*,*,Z]
[]
##[]
#spats [*,A,A,*,*,A,*]
[]
##[]
#spats [*,A,A,*,A,*,*]
[]
##[]
#spats [*,A,A,A,*,*,*]
[]
##[]
#spats [A,*,*,*,*,A,Z]
[]
##[]
#spats [A,*,*,*,A,*,Z]
[]
##[]
#spats [A,*,*,*,A,A,*]
[]
##[]
#spats [A,*,*,A,*,*,Z]
[]
##[]
#spats [A,*,*,A,*,A,*]
[]
##[]
#spats [A,*,*,A,A,*,*]
[]
##[]
#spats [A,*,A,*,*,*,Z]
[]
##[]
#spats [A,*,A,*,*,A,*]
[]
##[]
#spats [A,*,A,*,A,*,*]
[]
##[]
#spats [A,*,A,A,*,*,*]
[]
##[]
#spats [A,A,*,*,*,*,Z]
[]
##[]
#spats [A,A,*,*,*,A,*]
[]
##[]
#spats [A,A,*,*,A,*,*]
[]
##[]
#spats [A,A,*,A,*,*,*]
[]
##[]
#spats [A,A,A,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,A,Z]
[]
##[]
#spats [*,*,*,*,A,*,Z]
[]
##[]
#spats [*,*,*,*,A,A,*]
[]
##[]
#spats [*,*,*,A,*,*,Z]
[]
##[]
#spats [*,*,*,A,*,A,*]
[]
##[]
#spats [*,*,*,A,A,*,*]
[]
##[]
#spats [*,*,A,*,*,*,Z]
[]
##[]
#spats [*,*,A,*,*,A,*]
[]
##[]
#spats [*,*,A,*,A,*,*]
[]
##[]
#spats [*,*,A,A,*,*,*]
[]
##[]
#spats [*,A,*,*,*,*,Z]
[]
##[]
#spats [*,A,*,*,*,A,*]
[]
##[]
#spats [*,A,*,*,A,*,*]
[]
##[]
#spats [*,A,*,A,*,*,*]
[]
##[]
#spats [*,A,A,*,*,*,*]
[]
##[]
#spats [A,*,*,*,*,*,Z]
[]
##[]
#spats [A,*,*,*,*,A,*]
[]
##[]
#spats [A,*,*,*,A,*,*]
[]
##[]
#spats [A,*,*,A,*,*,*]
[]
##[]
#spats [A,*,A,*,*,*,*]
[]
##[]
#spats [A,A,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,*,A,*]
[]
##[]
#spats [*,*,*,*,A,*,*]
[]
##[]
#spats [*,*,*,A,*,*,*]
[]
##[]
#spats [*,*,A,*,*,*,*]
[]
##[]
#spats [*,A,*,*,*,*,*]
[]
##[]
#spats [A,*,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!----------------------------------------------------------------------
###101.4.2 Subcas 4B
###!          l > 3   w amb caràcters diferents
###!          w = ABCDEF
###!----------------------------------------------------------------------
###!
#init d4B dicc
###!
#ins ABCDEF
###!
###! Prefixos per ABCDEF
#pre A

##
#pre ABCDE

##
#pre ABCDEF
ABCDEF
##ABCDEF
#pre ZBCDEF

##
#pre ABCDZF

##
#pre ABCDEZ

##
#pre ZBCDEFY

##
#pre ABCDEZY

##
#pre ABCDEFZ
ABCDEF
##ABCDEF
#pre ZBCDEFYY

##
#pre ABCDEZYY

##
#pre ABCDEFZY
ABCDEF
##ABCDEF
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per ABCDE
#spats [A,B,C,D,E]
[]
##[]
#spats [*,B,C,D,E]
[]
##[]
#spats [A,*,C,D,E]
[]
##[]
#spats [A,B,*,D,E]
[]
##[]
#spats [A,B,C,*,E]
[]
##[]
#spats [A,B,C,D,*]
[]
##[]
#spats [*,*,C,D,E]
[]
##[]
#spats [*,B,*,D,E]
[]
##[]
#spats [*,B,C,*,E]
[]
##[]
#spats [*,B,C,D,*]
[]
##[]
#spats [A,*,*,D,E]
[]
##[]
#spats [A,*,C,*,E]
[]
##[]
#spats [A,*,C,D,*]
[]
##[]
#spats [A,B,*,*,E]
[]
##[]
#spats [A,B,*,D,*]
[]
##[]
#spats [A,B,C,*,*]
[]
##[]
#spats [*,*,*,D,E]
[]
##[]
#spats [*,*,C,*,E]
[]
##[]
#spats [*,*,C,D,*]
[]
##[]
#spats [*,B,*,*,E]
[]
##[]
#spats [*,B,*,D,*]
[]
##[]
#spats [*,B,C,*,*]
[]
##[]
#spats [A,*,*,*,E]
[]
##[]
#spats [A,*,*,D,*]
[]
##[]
#spats [A,*,C,*,*]
[]
##[]
#spats [A,B,*,*,*]
[]
##[]
#spats [*,*,*,*,E]
[]
##[]
#spats [*,*,*,D,*]
[]
##[]
#spats [*,*,C,*,*]
[]
##[]
#spats [*,B,*,*,*]
[]
##[]
#spats [A,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per ABCDEF
#spats [A,B,C,D,E,F]
[ABCDEF]
##[ABCDEF]
#spats [*,B,C,D,E,F]
[ABCDEF]
##[ABCDEF]
#spats [A,*,C,D,E,F]
[ABCDEF]
##[ABCDEF]
#spats [A,B,*,D,E,F]
[ABCDEF]
##[ABCDEF]
#spats [A,B,C,*,E,F]
[ABCDEF]
##[ABCDEF]
#spats [A,B,C,D,*,F]
[ABCDEF]
##[ABCDEF]
#spats [A,B,C,D,E,*]
[ABCDEF]
##[ABCDEF]
#spats [*,*,C,D,E,F]
[ABCDEF]
##[ABCDEF]
#spats [*,B,*,D,E,F]
[ABCDEF]
##[ABCDEF]
#spats [*,B,C,*,E,F]
[ABCDEF]
##[ABCDEF]
#spats [*,B,C,D,*,F]
[ABCDEF]
##[ABCDEF]
#spats [*,B,C,D,E,*]
[ABCDEF]
##[ABCDEF]
#spats [A,*,*,D,E,F]
[ABCDEF]
##[ABCDEF]
#spats [A,*,C,*,E,F]
[ABCDEF]
##[ABCDEF]
#spats [A,*,C,D,*,F]
[ABCDEF]
##[ABCDEF]
#spats [A,*,C,D,E,*]
[ABCDEF]
##[ABCDEF]
#spats [A,B,*,*,E,F]
[ABCDEF]
##[ABCDEF]
#spats [A,B,*,D,*,F]
[ABCDEF]
##[ABCDEF]
#spats [A,B,*,D,E,*]
[ABCDEF]
##[ABCDEF]
#spats [A,B,C,*,*,F]
[ABCDEF]
##[ABCDEF]
#spats [A,B,C,*,E,*]
[ABCDEF]
##[ABCDEF]
#spats [A,B,C,D,*,*]
[ABCDEF]
##[ABCDEF]
#spats [*,*,*,D,E,F]
[ABCDEF]
##[ABCDEF]
#spats [*,*,C,*,E,F]
[ABCDEF]
##[ABCDEF]
#spats [*,*,C,D,*,F]
[ABCDEF]
##[ABCDEF]
#spats [*,*,C,D,E,*]
[ABCDEF]
##[ABCDEF]
#spats [*,B,*,*,E,F]
[ABCDEF]
##[ABCDEF]
#spats [*,B,*,D,*,F]
[ABCDEF]
##[ABCDEF]
#spats [*,B,*,D,E,*]
[ABCDEF]
##[ABCDEF]
#spats [*,B,C,*,*,F]
[ABCDEF]
##[ABCDEF]
#spats [*,B,C,*,E,*]
[ABCDEF]
##[ABCDEF]
#spats [*,B,C,D,*,*]
[ABCDEF]
##[ABCDEF]
#spats [A,*,*,*,E,F]
[ABCDEF]
##[ABCDEF]
#spats [A,*,*,D,*,F]
[ABCDEF]
##[ABCDEF]
#spats [A,*,*,D,E,*]
[ABCDEF]
##[ABCDEF]
#spats [A,*,C,*,*,F]
[ABCDEF]
##[ABCDEF]
#spats [A,*,C,*,E,*]
[ABCDEF]
##[ABCDEF]
#spats [A,*,C,D,*,*]
[ABCDEF]
##[ABCDEF]
#spats [A,B,*,*,*,F]
[ABCDEF]
##[ABCDEF]
#spats [A,B,*,*,E,*]
[ABCDEF]
##[ABCDEF]
#spats [A,B,*,D,*,*]
[ABCDEF]
##[ABCDEF]
#spats [A,B,C,*,*,*]
[ABCDEF]
##[ABCDEF]
#spats [*,*,*,*,E,F]
[ABCDEF]
##[ABCDEF]
#spats [*,*,*,D,*,F]
[ABCDEF]
##[ABCDEF]
#spats [*,*,*,D,E,*]
[ABCDEF]
##[ABCDEF]
#spats [*,*,C,*,*,F]
[ABCDEF]
##[ABCDEF]
#spats [*,*,C,*,E,*]
[ABCDEF]
##[ABCDEF]
#spats [*,*,C,D,*,*]
[ABCDEF]
##[ABCDEF]
#spats [*,B,*,*,*,F]
[ABCDEF]
##[ABCDEF]
#spats [*,B,*,*,E,*]
[ABCDEF]
##[ABCDEF]
#spats [*,B,*,D,*,*]
[ABCDEF]
##[ABCDEF]
#spats [*,B,C,*,*,*]
[ABCDEF]
##[ABCDEF]
#spats [A,*,*,*,*,F]
[ABCDEF]
##[ABCDEF]
#spats [A,*,*,*,E,*]
[ABCDEF]
##[ABCDEF]
#spats [A,*,*,D,*,*]
[ABCDEF]
##[ABCDEF]
#spats [A,*,C,*,*,*]
[ABCDEF]
##[ABCDEF]
#spats [A,B,*,*,*,*]
[ABCDEF]
##[ABCDEF]
#spats [*,*,*,*,*,F]
[ABCDEF]
##[ABCDEF]
#spats [*,*,*,*,E,*]
[ABCDEF]
##[ABCDEF]
#spats [*,*,*,D,*,*]
[ABCDEF]
##[ABCDEF]
#spats [*,*,C,*,*,*]
[ABCDEF]
##[ABCDEF]
#spats [*,B,*,*,*,*]
[ABCDEF]
##[ABCDEF]
#spats [A,*,*,*,*,*]
[ABCDEF]
##[ABCDEF]
#spats [*,*,*,*,*,*]
[ABCDEF]
##[ABCDEF]
###!
###! Matchings per ABCDEFZ
#spats [A,B,C,D,E,F,Z]
[]
##[]
#spats [*,B,C,D,E,F,Z]
[]
##[]
#spats [A,*,C,D,E,F,Z]
[]
##[]
#spats [A,B,*,D,E,F,Z]
[]
##[]
#spats [A,B,C,*,E,F,Z]
[]
##[]
#spats [A,B,C,D,*,F,Z]
[]
##[]
#spats [A,B,C,D,E,*,Z]
[]
##[]
#spats [A,B,C,D,E,F,*]
[]
##[]
#spats [*,*,C,D,E,F,Z]
[]
##[]
#spats [*,B,*,D,E,F,Z]
[]
##[]
#spats [*,B,C,*,E,F,Z]
[]
##[]
#spats [*,B,C,D,*,F,Z]
[]
##[]
#spats [*,B,C,D,E,*,Z]
[]
##[]
#spats [*,B,C,D,E,F,*]
[]
##[]
#spats [A,*,*,D,E,F,Z]
[]
##[]
#spats [A,*,C,*,E,F,Z]
[]
##[]
#spats [A,*,C,D,*,F,Z]
[]
##[]
#spats [A,*,C,D,E,*,Z]
[]
##[]
#spats [A,*,C,D,E,F,*]
[]
##[]
#spats [A,B,*,*,E,F,Z]
[]
##[]
#spats [A,B,*,D,*,F,Z]
[]
##[]
#spats [A,B,*,D,E,*,Z]
[]
##[]
#spats [A,B,*,D,E,F,*]
[]
##[]
#spats [A,B,C,*,*,F,Z]
[]
##[]
#spats [A,B,C,*,E,*,Z]
[]
##[]
#spats [A,B,C,*,E,F,*]
[]
##[]
#spats [A,B,C,D,*,*,Z]
[]
##[]
#spats [A,B,C,D,*,F,*]
[]
##[]
#spats [A,B,C,D,E,*,*]
[]
##[]
#spats [*,*,*,D,E,F,Z]
[]
##[]
#spats [*,*,C,*,E,F,Z]
[]
##[]
#spats [*,*,C,D,*,F,Z]
[]
##[]
#spats [*,*,C,D,E,*,Z]
[]
##[]
#spats [*,*,C,D,E,F,*]
[]
##[]
#spats [*,B,*,*,E,F,Z]
[]
##[]
#spats [*,B,*,D,*,F,Z]
[]
##[]
#spats [*,B,*,D,E,*,Z]
[]
##[]
#spats [*,B,*,D,E,F,*]
[]
##[]
#spats [*,B,C,*,*,F,Z]
[]
##[]
#spats [*,B,C,*,E,*,Z]
[]
##[]
#spats [*,B,C,*,E,F,*]
[]
##[]
#spats [*,B,C,D,*,*,Z]
[]
##[]
#spats [*,B,C,D,*,F,*]
[]
##[]
#spats [*,B,C,D,E,*,*]
[]
##[]
#spats [A,*,*,*,E,F,Z]
[]
##[]
#spats [A,*,*,D,*,F,Z]
[]
##[]
#spats [A,*,*,D,E,*,Z]
[]
##[]
#spats [A,*,*,D,E,F,*]
[]
##[]
#spats [A,*,C,*,*,F,Z]
[]
##[]
#spats [A,*,C,*,E,*,Z]
[]
##[]
#spats [A,*,C,*,E,F,*]
[]
##[]
#spats [A,*,C,D,*,*,Z]
[]
##[]
#spats [A,*,C,D,*,F,*]
[]
##[]
#spats [A,*,C,D,E,*,*]
[]
##[]
#spats [A,B,*,*,*,F,Z]
[]
##[]
#spats [A,B,*,*,E,*,Z]
[]
##[]
#spats [A,B,*,*,E,F,*]
[]
##[]
#spats [A,B,*,D,*,*,Z]
[]
##[]
#spats [A,B,*,D,*,F,*]
[]
##[]
#spats [A,B,*,D,E,*,*]
[]
##[]
#spats [A,B,C,*,*,*,Z]
[]
##[]
#spats [A,B,C,*,*,F,*]
[]
##[]
#spats [A,B,C,*,E,*,*]
[]
##[]
#spats [A,B,C,D,*,*,*]
[]
##[]
#spats [*,*,*,*,E,F,Z]
[]
##[]
#spats [*,*,*,D,*,F,Z]
[]
##[]
#spats [*,*,*,D,E,*,Z]
[]
##[]
#spats [*,*,*,D,E,F,*]
[]
##[]
#spats [*,*,C,*,*,F,Z]
[]
##[]
#spats [*,*,C,*,E,*,Z]
[]
##[]
#spats [*,*,C,*,E,F,*]
[]
##[]
#spats [*,*,C,D,*,*,Z]
[]
##[]
#spats [*,*,C,D,*,F,*]
[]
##[]
#spats [*,*,C,D,E,*,*]
[]
##[]
#spats [*,B,*,*,*,F,Z]
[]
##[]
#spats [*,B,*,*,E,*,Z]
[]
##[]
#spats [*,B,*,*,E,F,*]
[]
##[]
#spats [*,B,*,D,*,*,Z]
[]
##[]
#spats [*,B,*,D,*,F,*]
[]
##[]
#spats [*,B,*,D,E,*,*]
[]
##[]
#spats [*,B,C,*,*,*,Z]
[]
##[]
#spats [*,B,C,*,*,F,*]
[]
##[]
#spats [*,B,C,*,E,*,*]
[]
##[]
#spats [*,B,C,D,*,*,*]
[]
##[]
#spats [A,*,*,*,*,F,Z]
[]
##[]
#spats [A,*,*,*,E,*,Z]
[]
##[]
#spats [A,*,*,*,E,F,*]
[]
##[]
#spats [A,*,*,D,*,*,Z]
[]
##[]
#spats [A,*,*,D,*,F,*]
[]
##[]
#spats [A,*,*,D,E,*,*]
[]
##[]
#spats [A,*,C,*,*,*,Z]
[]
##[]
#spats [A,*,C,*,*,F,*]
[]
##[]
#spats [A,*,C,*,E,*,*]
[]
##[]
#spats [A,*,C,D,*,*,*]
[]
##[]
#spats [A,B,*,*,*,*,Z]
[]
##[]
#spats [A,B,*,*,*,F,*]
[]
##[]
#spats [A,B,*,*,E,*,*]
[]
##[]
#spats [A,B,*,D,*,*,*]
[]
##[]
#spats [A,B,C,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,F,Z]
[]
##[]
#spats [*,*,*,*,E,*,Z]
[]
##[]
#spats [*,*,*,*,E,F,*]
[]
##[]
#spats [*,*,*,D,*,*,Z]
[]
##[]
#spats [*,*,*,D,*,F,*]
[]
##[]
#spats [*,*,*,D,E,*,*]
[]
##[]
#spats [*,*,C,*,*,*,Z]
[]
##[]
#spats [*,*,C,*,*,F,*]
[]
##[]
#spats [*,*,C,*,E,*,*]
[]
##[]
#spats [*,*,C,D,*,*,*]
[]
##[]
#spats [*,B,*,*,*,*,Z]
[]
##[]
#spats [*,B,*,*,*,F,*]
[]
##[]
#spats [*,B,*,*,E,*,*]
[]
##[]
#spats [*,B,*,D,*,*,*]
[]
##[]
#spats [*,B,C,*,*,*,*]
[]
##[]
#spats [A,*,*,*,*,*,Z]
[]
##[]
#spats [A,*,*,*,*,F,*]
[]
##[]
#spats [A,*,*,*,E,*,*]
[]
##[]
#spats [A,*,*,D,*,*,*]
[]
##[]
#spats [A,*,C,*,*,*,*]
[]
##[]
#spats [A,B,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,*,F,*]
[]
##[]
#spats [*,*,*,*,E,*,*]
[]
##[]
#spats [*,*,*,D,*,*,*]
[]
##[]
#spats [*,*,C,*,*,*,*]
[]
##[]
#spats [*,B,*,*,*,*,*]
[]
##[]
#spats [A,*,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!
###!
###!-------------------------------------------------------------------
###102 Diccionari amb 2 paraules
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###102.1 CAS NÚMERO 1
###!     les paraules w1 i w2 no tenen prefixe comú:
###!     p12 = ·    w1 = A+    w2 = B+
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###102.1.1 Subcas 1A
###!           l1 = 1  l2 = 1
###!           w1 = A  w2 = B
###!-------------------------------------------------------------------
###!
#init d1A dicc
###!
#ins A
#ins B
###!
###! Prefixos per A
#pre A
A
##A
#pre Z

##
#pre ZY

##
#pre AZ
A
##A
#pre ZYY

##
#pre AZY
A
##A
###!
###! Prefixos per B
#pre B
B
##B
#pre Z

##
#pre ZY

##
#pre BZ
B
##B
#pre ZYY

##
#pre BZY
B
##B
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per A
#spats [A]
[A]
##[A]
#spats [*]
[A, B]
##[A, B]
###!
###! Matchings per AZ
#spats [A,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [A,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per B
#spats [B]
[B]
##[B]
#spats [*]
[A, B]
##[A, B]
###!
###! Matchings per BZ
#spats [B,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [B,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###102.1.2 Subcas 1B
###!           l1 = 1  l2 > 1
###!           w1 = A  w2 = BB
###!-------------------------------------------------------------------
###!
#init d1B dicc
###!
#ins A
#ins BB
###!
###! Prefixos per A
#pre A
A
##A
#pre Z

##
#pre ZY

##
#pre AZ
A
##A
#pre ZYY

##
#pre AZY
A
##A
###!
###! Prefixos per BB
#pre B

##
#pre BB
BB
##BB
#pre ZB

##
#pre BZ

##
#pre ZBY

##
#pre BZY

##
#pre BBZ
BB
##BB
#pre ZBYY

##
#pre BZYY

##
#pre BBZY
BB
##BB
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per A
#spats [A]
[A]
##[A]
#spats [*]
[A]
##[A]
###!
###! Matchings per AZ
#spats [A,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [A,*]
[]
##[]
#spats [*,*]
[BB]
##[BB]
###!
###! Matchings per B
#spats [B]
[]
##[]
#spats [*]
[A]
##[A]
###!
###! Matchings per BB
#spats [B,B]
[BB]
##[BB]
#spats [*,B]
[BB]
##[BB]
#spats [B,*]
[BB]
##[BB]
#spats [*,*]
[BB]
##[BB]
###!
###! Matchings per BBZ
#spats [B,B,Z]
[]
##[]
#spats [*,B,Z]
[]
##[]
#spats [B,*,Z]
[]
##[]
#spats [B,B,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,B,*]
[]
##[]
#spats [B,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###102.1.3 Subcas 1C
###!           l1 > 1  l2 = 1
###!           w1 = AA  w2 = B
###!-------------------------------------------------------------------
###!
#init d1C dicc
###!
#ins AA
#ins B
###!
###! Prefixos per AA
#pre A

##
#pre AA
AA
##AA
#pre ZA

##
#pre AZ

##
#pre ZAY

##
#pre AZY

##
#pre AAZ
AA
##AA
#pre ZAYY

##
#pre AZYY

##
#pre AAZY
AA
##AA
###!
###! Prefixos per B
#pre B
B
##B
#pre Z

##
#pre ZY

##
#pre BZ
B
##B
#pre ZYY

##
#pre BZY
B
##B
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per A
#spats [A]
[]
##[]
#spats [*]
[B]
##[B]
###!
###! Matchings per AA
#spats [A,A]
[AA]
##[AA]
#spats [*,A]
[AA]
##[AA]
#spats [A,*]
[AA]
##[AA]
#spats [*,*]
[AA]
##[AA]
###!
###! Matchings per AAZ
#spats [A,A,Z]
[]
##[]
#spats [*,A,Z]
[]
##[]
#spats [A,*,Z]
[]
##[]
#spats [A,A,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,A,*]
[]
##[]
#spats [A,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per B
#spats [B]
[B]
##[B]
#spats [*]
[B]
##[B]
###!
###! Matchings per BZ
#spats [B,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [B,*]
[]
##[]
#spats [*,*]
[AA]
##[AA]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###102.1.4 Subcas 1D
###!           l1 > 1  l2 > 1
###!           w1 = AA  w2 = BB
###!-------------------------------------------------------------------
###!
#init d1D dicc
###!
#ins AA
#ins BB
###!
###! Prefixos per AA
#pre A

##
#pre AA
AA
##AA
#pre ZA

##
#pre AZ

##
#pre ZAY

##
#pre AZY

##
#pre AAZ
AA
##AA
#pre ZAYY

##
#pre AZYY

##
#pre AAZY
AA
##AA
###!
###! Prefixos per BB
#pre B

##
#pre BB
BB
##BB
#pre ZB

##
#pre BZ

##
#pre ZBY

##
#pre BZY

##
#pre BBZ
BB
##BB
#pre ZBYY

##
#pre BZYY

##
#pre BBZY
BB
##BB
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per A
#spats [A]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per AA
#spats [A,A]
[AA]
##[AA]
#spats [*,A]
[AA]
##[AA]
#spats [A,*]
[AA]
##[AA]
#spats [*,*]
[AA, BB]
##[AA, BB]
###!
###! Matchings per AAZ
#spats [A,A,Z]
[]
##[]
#spats [*,A,Z]
[]
##[]
#spats [A,*,Z]
[]
##[]
#spats [A,A,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,A,*]
[]
##[]
#spats [A,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per B
#spats [B]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per BB
#spats [B,B]
[BB]
##[BB]
#spats [*,B]
[BB]
##[BB]
#spats [B,*]
[BB]
##[BB]
#spats [*,*]
[AA, BB]
##[AA, BB]
###!
###! Matchings per BBZ
#spats [B,B,Z]
[]
##[]
#spats [*,B,Z]
[]
##[]
#spats [B,*,Z]
[]
##[]
#spats [B,B,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,B,*]
[]
##[]
#spats [B,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!
###!-------------------------------------------------------------------
###102.2 CAS NÚMERO 2
###!     les paraules w1 i w2 comparteixen un prefixe comú p:
###!     p = P+    w1 = P+A+    w2 = P+B+
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###102.2.1 Subcas 2A
###!           lp = 1  l1 = lp + 1  l2 = lp + 1
###!           w1 = PA  w2 = PB
###!-------------------------------------------------------------------
###!
#init d2A dicc
###!
#ins PA
#ins PB
###!
###! Prefixos per PA
#pre P

##
#pre PA
PA
##PA
#pre ZA

##
#pre PZ

##
#pre ZAY

##
#pre PZY

##
#pre PAZ
PA
##PA
#pre ZAYY

##
#pre PZYY

##
#pre PAZY
PA
##PA
###!
###! Prefixos per PB
#pre P

##
#pre PB
PB
##PB
#pre ZB

##
#pre PZ

##
#pre ZBY

##
#pre PZY

##
#pre PBZ
PB
##PB
#pre ZBYY

##
#pre PZYY

##
#pre PBZY
PB
##PB
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PA
#spats [P,A]
[PA]
##[PA]
#spats [*,A]
[PA]
##[PA]
#spats [P,*]
[PA, PB]
##[PA, PB]
#spats [*,*]
[PA, PB]
##[PA, PB]
###!
###! Matchings per PAZ
#spats [P,A,Z]
[]
##[]
#spats [*,A,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,A,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,A,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PB
#spats [P,B]
[PB]
##[PB]
#spats [*,B]
[PB]
##[PB]
#spats [P,*]
[PA, PB]
##[PA, PB]
#spats [*,*]
[PA, PB]
##[PA, PB]
###!
###! Matchings per PBZ
#spats [P,B,Z]
[]
##[]
#spats [*,B,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,B,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,B,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###102.2.2 Subcas 2B
###!           lp = 1  l1 > lp + 1  l2 > lp + 1
###!           w1 = PAA  w2 = PBB
###!-------------------------------------------------------------------
###!
#init d2B dicc
###!
#ins PAA
#ins PBB
###!
###! Prefixos per PAA
#pre P

##
#pre PA

##
#pre PAA
PAA
##PAA
#pre ZAA

##
#pre PZA

##
#pre PAZ

##
#pre ZAAY

##
#pre PAZY

##
#pre PAAZ
PAA
##PAA
#pre ZAAYY

##
#pre PAZYY

##
#pre PAAZY
PAA
##PAA
###!
###! Prefixos per PBB
#pre P

##
#pre PB

##
#pre PBB
PBB
##PBB
#pre ZBB

##
#pre PZB

##
#pre PBZ

##
#pre ZBBY

##
#pre PBZY

##
#pre PBBZ
PBB
##PBB
#pre ZBBYY

##
#pre PBZYY

##
#pre PBBZY
PBB
##PBB
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PA
#spats [P,A]
[]
##[]
#spats [*,A]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PAA
#spats [P,A,A]
[PAA]
##[PAA]
#spats [*,A,A]
[PAA]
##[PAA]
#spats [P,*,A]
[PAA]
##[PAA]
#spats [P,A,*]
[PAA]
##[PAA]
#spats [*,*,A]
[PAA]
##[PAA]
#spats [*,A,*]
[PAA]
##[PAA]
#spats [P,*,*]
[PAA, PBB]
##[PAA, PBB]
#spats [*,*,*]
[PAA, PBB]
##[PAA, PBB]
###!
###! Matchings per PAAZ
#spats [P,A,A,Z]
[]
##[]
#spats [*,A,A,Z]
[]
##[]
#spats [P,*,A,Z]
[]
##[]
#spats [P,A,*,Z]
[]
##[]
#spats [P,A,A,*]
[]
##[]
#spats [*,*,A,Z]
[]
##[]
#spats [*,A,*,Z]
[]
##[]
#spats [*,A,A,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,A,*]
[]
##[]
#spats [P,A,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,A,*]
[]
##[]
#spats [*,A,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PB
#spats [P,B]
[]
##[]
#spats [*,B]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PBB
#spats [P,B,B]
[PBB]
##[PBB]
#spats [*,B,B]
[PBB]
##[PBB]
#spats [P,*,B]
[PBB]
##[PBB]
#spats [P,B,*]
[PBB]
##[PBB]
#spats [*,*,B]
[PBB]
##[PBB]
#spats [*,B,*]
[PBB]
##[PBB]
#spats [P,*,*]
[PAA, PBB]
##[PAA, PBB]
#spats [*,*,*]
[PAA, PBB]
##[PAA, PBB]
###!
###! Matchings per PBBZ
#spats [P,B,B,Z]
[]
##[]
#spats [*,B,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,B,*,Z]
[]
##[]
#spats [P,B,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,B,*,Z]
[]
##[]
#spats [*,B,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,B,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,B,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###102.2.3 Subcas 2C
###!           lp > 1  l1 = lp + 1  l2 = lp + 1
###!           w1 = PPA  w2 = PPB
###!-------------------------------------------------------------------
###!
#init d2C dicc
###!
#ins PPA
#ins PPB
###!
###! Prefixos per PPA
#pre P

##
#pre PP

##
#pre PPA
PPA
##PPA
#pre ZPA

##
#pre PZA

##
#pre PPZ

##
#pre ZPAY

##
#pre PPZY

##
#pre PPAZ
PPA
##PPA
#pre ZPAYY

##
#pre PPZYY

##
#pre PPAZY
PPA
##PPA
###!
###! Prefixos per PPB
#pre P

##
#pre PP

##
#pre PPB
PPB
##PPB
#pre ZPB

##
#pre PZB

##
#pre PPZ

##
#pre ZPBY

##
#pre PPZY

##
#pre PPBZ
PPB
##PPB
#pre ZPBYY

##
#pre PPZYY

##
#pre PPBZY
PPB
##PPB
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[]
##[]
#spats [*,P]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PPA
#spats [P,P,A]
[PPA]
##[PPA]
#spats [*,P,A]
[PPA]
##[PPA]
#spats [P,*,A]
[PPA]
##[PPA]
#spats [P,P,*]
[PPA, PPB]
##[PPA, PPB]
#spats [*,*,A]
[PPA]
##[PPA]
#spats [*,P,*]
[PPA, PPB]
##[PPA, PPB]
#spats [P,*,*]
[PPA, PPB]
##[PPA, PPB]
#spats [*,*,*]
[PPA, PPB]
##[PPA, PPB]
###!
###! Matchings per PPAZ
#spats [P,P,A,Z]
[]
##[]
#spats [*,P,A,Z]
[]
##[]
#spats [P,*,A,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,A,*]
[]
##[]
#spats [*,*,A,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,A,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,A,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,A,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[]
##[]
#spats [*,P]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PPB
#spats [P,P,B]
[PPB]
##[PPB]
#spats [*,P,B]
[PPB]
##[PPB]
#spats [P,*,B]
[PPB]
##[PPB]
#spats [P,P,*]
[PPA, PPB]
##[PPA, PPB]
#spats [*,*,B]
[PPB]
##[PPB]
#spats [*,P,*]
[PPA, PPB]
##[PPA, PPB]
#spats [P,*,*]
[PPA, PPB]
##[PPA, PPB]
#spats [*,*,*]
[PPA, PPB]
##[PPA, PPB]
###!
###! Matchings per PPBZ
#spats [P,P,B,Z]
[]
##[]
#spats [*,P,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###102.2.4 Subcas 2D
###!           lp > 1  l1 > lp + 1  l2 > lp + 1
###!           w1 = PPAA  w2 = PPBB
###!-------------------------------------------------------------------
###!
#init d2D dicc
###!
#ins PPAA
#ins PPBB
###!
###! Prefixos per PPAA
#pre P

##
#pre PPA

##
#pre PPAA
PPAA
##PPAA
#pre ZPAA

##
#pre PPZA

##
#pre PPAZ

##
#pre ZPAAY

##
#pre PPAZY

##
#pre PPAAZ
PPAA
##PPAA
#pre ZPAAYY

##
#pre PPAZYY

##
#pre PPAAZY
PPAA
##PPAA
###!
###! Prefixos per PPBB
#pre P

##
#pre PPB

##
#pre PPBB
PPBB
##PPBB
#pre ZPBB

##
#pre PPZB

##
#pre PPBZ

##
#pre ZPBBY

##
#pre PPBZY

##
#pre PPBBZ
PPBB
##PPBB
#pre ZPBBYY

##
#pre PPBZYY

##
#pre PPBBZY
PPBB
##PPBB
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PPA
#spats [P,P,A]
[]
##[]
#spats [*,P,A]
[]
##[]
#spats [P,*,A]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,A]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPAA
#spats [P,P,A,A]
[PPAA]
##[PPAA]
#spats [*,P,A,A]
[PPAA]
##[PPAA]
#spats [P,*,A,A]
[PPAA]
##[PPAA]
#spats [P,P,*,A]
[PPAA]
##[PPAA]
#spats [P,P,A,*]
[PPAA]
##[PPAA]
#spats [*,*,A,A]
[PPAA]
##[PPAA]
#spats [*,P,*,A]
[PPAA]
##[PPAA]
#spats [*,P,A,*]
[PPAA]
##[PPAA]
#spats [P,*,*,A]
[PPAA]
##[PPAA]
#spats [P,*,A,*]
[PPAA]
##[PPAA]
#spats [P,P,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [*,*,*,A]
[PPAA]
##[PPAA]
#spats [*,*,A,*]
[PPAA]
##[PPAA]
#spats [*,P,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [P,*,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [*,*,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
###!
###! Matchings per PPAAZ
#spats [P,P,A,A,Z]
[]
##[]
#spats [*,P,A,A,Z]
[]
##[]
#spats [P,*,A,A,Z]
[]
##[]
#spats [P,P,*,A,Z]
[]
##[]
#spats [P,P,A,*,Z]
[]
##[]
#spats [P,P,A,A,*]
[]
##[]
#spats [*,*,A,A,Z]
[]
##[]
#spats [*,P,*,A,Z]
[]
##[]
#spats [*,P,A,*,Z]
[]
##[]
#spats [*,P,A,A,*]
[]
##[]
#spats [P,*,*,A,Z]
[]
##[]
#spats [P,*,A,*,Z]
[]
##[]
#spats [P,*,A,A,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,A,*]
[]
##[]
#spats [P,P,A,*,*]
[]
##[]
#spats [*,*,*,A,Z]
[]
##[]
#spats [*,*,A,*,Z]
[]
##[]
#spats [*,*,A,A,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,A,*]
[]
##[]
#spats [*,P,A,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,A,*]
[]
##[]
#spats [P,*,A,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,A,*]
[]
##[]
#spats [*,*,A,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPB
#spats [P,P,B]
[]
##[]
#spats [*,P,B]
[]
##[]
#spats [P,*,B]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,B]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPBB
#spats [P,P,B,B]
[PPBB]
##[PPBB]
#spats [*,P,B,B]
[PPBB]
##[PPBB]
#spats [P,*,B,B]
[PPBB]
##[PPBB]
#spats [P,P,*,B]
[PPBB]
##[PPBB]
#spats [P,P,B,*]
[PPBB]
##[PPBB]
#spats [*,*,B,B]
[PPBB]
##[PPBB]
#spats [*,P,*,B]
[PPBB]
##[PPBB]
#spats [*,P,B,*]
[PPBB]
##[PPBB]
#spats [P,*,*,B]
[PPBB]
##[PPBB]
#spats [P,*,B,*]
[PPBB]
##[PPBB]
#spats [P,P,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [*,*,*,B]
[PPBB]
##[PPBB]
#spats [*,*,B,*]
[PPBB]
##[PPBB]
#spats [*,P,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [P,*,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [*,*,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
###!
###! Matchings per PPBBZ
#spats [P,P,B,B,Z]
[]
##[]
#spats [*,P,B,B,Z]
[]
##[]
#spats [P,*,B,B,Z]
[]
##[]
#spats [P,P,*,B,Z]
[]
##[]
#spats [P,P,B,*,Z]
[]
##[]
#spats [P,P,B,B,*]
[]
##[]
#spats [*,*,B,B,Z]
[]
##[]
#spats [*,P,*,B,Z]
[]
##[]
#spats [*,P,B,*,Z]
[]
##[]
#spats [*,P,B,B,*]
[]
##[]
#spats [P,*,*,B,Z]
[]
##[]
#spats [P,*,B,*,Z]
[]
##[]
#spats [P,*,B,B,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,B,*]
[]
##[]
#spats [P,P,B,*,*]
[]
##[]
#spats [*,*,*,B,Z]
[]
##[]
#spats [*,*,B,*,Z]
[]
##[]
#spats [*,*,B,B,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,B,*]
[]
##[]
#spats [*,P,B,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,B,*]
[]
##[]
#spats [P,*,B,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,B,*]
[]
##[]
#spats [*,*,B,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!
###!-------------------------------------------------------------------
###102.3 CAS NÚMERO 3
###!     la paraule w1 es prefixe de w2, per tant p = w1:
###!     p = w1 = P+   w2 = P+B+
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###102.3.1 Subcas 3A
###!           lp = l1 = 1  l2 = lp + 1
###!           w1 = P  w2 = PB
###!-------------------------------------------------------------------
###!
#init d3A dicc
###!
#ins P
#ins PB
###!
###! Prefixos per P
#pre P
P
##P
#pre Z

##
#pre ZY

##
#pre PZ
P
##P
#pre ZYY

##
#pre PZY
P
##P
###!
###! Prefixos per PB
#pre P
P
##P
#pre PB
PB
##PB
#pre ZB

##
#pre PZ
P
##P
#pre ZBY

##
#pre PZY
P
##P
#pre PBZ
PB
##PB
#pre ZBYY

##
#pre PZYY
P
##P
#pre PBZY
PB
##PB
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[P]
##[P]
#spats [*]
[P]
##[P]
###!
###! Matchings per PZ
#spats [P,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [P,*]
[PB]
##[PB]
#spats [*,*]
[PB]
##[PB]
###!
###! Matchings per P
#spats [P]
[P]
##[P]
#spats [*]
[P]
##[P]
###!
###! Matchings per PB
#spats [P,B]
[PB]
##[PB]
#spats [*,B]
[PB]
##[PB]
#spats [P,*]
[PB]
##[PB]
#spats [*,*]
[PB]
##[PB]
###!
###! Matchings per PBZ
#spats [P,B,Z]
[]
##[]
#spats [*,B,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,B,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,B,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------
###102.3.2 Subcas 3B
###!           lp = l1 = 1  l2 > lp + 1
###!           w1 = P  w2 = PBB
###!-------------------------------------------------------------------
###!
#init d3B dicc
###!
#ins P
#ins PBB
###!
###! Prefixos per P
#pre P
P
##P
#pre Z

##
#pre ZY

##
#pre PZ
P
##P
#pre ZYY

##
#pre PZY
P
##P
###!
###! Prefixos per PBB
#pre P
P
##P
#pre PB
P
##P
#pre PBB
PBB
##PBB
#pre ZBB

##
#pre PZB
P
##P
#pre PBZ
P
##P
#pre ZBBY

##
#pre PBZY
P
##P
#pre PBBZ
PBB
##PBB
#pre ZBBYY

##
#pre PBZYY
P
##P
#pre PBBZY
PBB
##PBB
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[P]
##[P]
#spats [*]
[P]
##[P]
###!
###! Matchings per PZ
#spats [P,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PB
#spats [P,B]
[]
##[]
#spats [*,B]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PBB
#spats [P,B,B]
[PBB]
##[PBB]
#spats [*,B,B]
[PBB]
##[PBB]
#spats [P,*,B]
[PBB]
##[PBB]
#spats [P,B,*]
[PBB]
##[PBB]
#spats [*,*,B]
[PBB]
##[PBB]
#spats [*,B,*]
[PBB]
##[PBB]
#spats [P,*,*]
[PBB]
##[PBB]
#spats [*,*,*]
[PBB]
##[PBB]
###!
###! Matchings per PBBZ
#spats [P,B,B,Z]
[]
##[]
#spats [*,B,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,B,*,Z]
[]
##[]
#spats [P,B,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,B,*,Z]
[]
##[]
#spats [*,B,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,B,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,B,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###102.3.3 Subcas 3C
###!           lp = l1 > 1  l2 = lp + 1
###!           w1 = PP  w2 = PPB
###!-------------------------------------------------------------------
###!
#init d3C dicc
###!
#ins PP
#ins PPB
###!
###! Prefixos per PP
#pre P

##
#pre PP
PP
##PP
#pre ZP

##
#pre PZ

##
#pre ZPY

##
#pre PZY

##
#pre PPZ
PP
##PP
#pre ZPYY

##
#pre PZYY

##
#pre PPZY
PP
##PP
###!
###! Prefixos per PPB
#pre P

##
#pre PP
PP
##PP
#pre PPB
PPB
##PPB
#pre ZPB

##
#pre PZB

##
#pre PPZ
PP
##PP
#pre ZPBY

##
#pre PPZY
PP
##PP
#pre PPBZ
PPB
##PPB
#pre ZPBYY

##
#pre PPZYY
PP
##PP
#pre PPBZY
PPB
##PPB
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[PP]
##[PP]
#spats [*,P]
[PP]
##[PP]
#spats [P,*]
[PP]
##[PP]
#spats [*,*]
[PP]
##[PP]
###!
###! Matchings per PPZ
#spats [P,P,Z]
[]
##[]
#spats [*,P,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,P,*]
[PPB]
##[PPB]
#spats [*,*,Z]
[]
##[]
#spats [*,P,*]
[PPB]
##[PPB]
#spats [P,*,*]
[PPB]
##[PPB]
#spats [*,*,*]
[PPB]
##[PPB]
###!
###! Matchings per PP
#spats [P,P]
[PP]
##[PP]
#spats [*,P]
[PP]
##[PP]
#spats [P,*]
[PP]
##[PP]
#spats [*,*]
[PP]
##[PP]
###!
###! Matchings per PPB
#spats [P,P,B]
[PPB]
##[PPB]
#spats [*,P,B]
[PPB]
##[PPB]
#spats [P,*,B]
[PPB]
##[PPB]
#spats [P,P,*]
[PPB]
##[PPB]
#spats [*,*,B]
[PPB]
##[PPB]
#spats [*,P,*]
[PPB]
##[PPB]
#spats [P,*,*]
[PPB]
##[PPB]
#spats [*,*,*]
[PPB]
##[PPB]
###!
###! Matchings per PPBZ
#spats [P,P,B,Z]
[]
##[]
#spats [*,P,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###102.3.4 Subcas 3D
###!           lp = l1 > 1  l2 > lp + 1
###!           w1 = PP  w2 = PPBB
###!-------------------------------------------------------------------
###!
#init d3D dicc
###!
#ins PP
#ins PPBB
###!
###! Prefixos per PP
#pre P

##
#pre PP
PP
##PP
#pre ZP

##
#pre PZ

##
#pre ZPY

##
#pre PZY

##
#pre PPZ
PP
##PP
#pre ZPYY

##
#pre PZYY

##
#pre PPZY
PP
##PP
###!
###! Prefixos per PPBB
#pre P

##
#pre PPB
PP
##PP
#pre PPBB
PPBB
##PPBB
#pre ZPBB

##
#pre PPZB
PP
##PP
#pre PPBZ
PP
##PP
#pre ZPBBY

##
#pre PPBZY
PP
##PP
#pre PPBBZ
PPBB
##PPBB
#pre ZPBBYY

##
#pre PPBZYY
PP
##PP
#pre PPBBZY
PPBB
##PPBB
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[PP]
##[PP]
#spats [*,P]
[PP]
##[PP]
#spats [P,*]
[PP]
##[PP]
#spats [*,*]
[PP]
##[PP]
###!
###! Matchings per PPZ
#spats [P,P,Z]
[]
##[]
#spats [*,P,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPB
#spats [P,P,B]
[]
##[]
#spats [*,P,B]
[]
##[]
#spats [P,*,B]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,B]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPBB
#spats [P,P,B,B]
[PPBB]
##[PPBB]
#spats [*,P,B,B]
[PPBB]
##[PPBB]
#spats [P,*,B,B]
[PPBB]
##[PPBB]
#spats [P,P,*,B]
[PPBB]
##[PPBB]
#spats [P,P,B,*]
[PPBB]
##[PPBB]
#spats [*,*,B,B]
[PPBB]
##[PPBB]
#spats [*,P,*,B]
[PPBB]
##[PPBB]
#spats [*,P,B,*]
[PPBB]
##[PPBB]
#spats [P,*,*,B]
[PPBB]
##[PPBB]
#spats [P,*,B,*]
[PPBB]
##[PPBB]
#spats [P,P,*,*]
[PPBB]
##[PPBB]
#spats [*,*,*,B]
[PPBB]
##[PPBB]
#spats [*,*,B,*]
[PPBB]
##[PPBB]
#spats [*,P,*,*]
[PPBB]
##[PPBB]
#spats [P,*,*,*]
[PPBB]
##[PPBB]
#spats [*,*,*,*]
[PPBB]
##[PPBB]
###!
###! Matchings per PPBBZ
#spats [P,P,B,B,Z]
[]
##[]
#spats [*,P,B,B,Z]
[]
##[]
#spats [P,*,B,B,Z]
[]
##[]
#spats [P,P,*,B,Z]
[]
##[]
#spats [P,P,B,*,Z]
[]
##[]
#spats [P,P,B,B,*]
[]
##[]
#spats [*,*,B,B,Z]
[]
##[]
#spats [*,P,*,B,Z]
[]
##[]
#spats [*,P,B,*,Z]
[]
##[]
#spats [*,P,B,B,*]
[]
##[]
#spats [P,*,*,B,Z]
[]
##[]
#spats [P,*,B,*,Z]
[]
##[]
#spats [P,*,B,B,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,B,*]
[]
##[]
#spats [P,P,B,*,*]
[]
##[]
#spats [*,*,*,B,Z]
[]
##[]
#spats [*,*,B,*,Z]
[]
##[]
#spats [*,*,B,B,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,B,*]
[]
##[]
#spats [*,P,B,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,B,*]
[]
##[]
#spats [P,*,B,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,B,*]
[]
##[]
#spats [*,*,B,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!
###!
###!-------------------------------------------------------------------
###103 Diccionari amb 3 paraules
###!-------------------------------------------------------------------
###!
###!
###!-------------------------------------------------------------------
###103.1 CAS NÚMERO 1
###!     Dues a dues no comparteixen prefixe comú:
###!     p123 = p12 = p13 = p23 = ·    w1 = A+    w2 = B+    w3 = C+
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###103.1.1 Subcas 1A
###!           l1 = 1  l2 = 1  l3 = 1
###!           w1 = A  w2 = B  w3 = C
###!-------------------------------------------------------------------
###!
#init d1A dicc
###!
#ins A
#ins B
#ins C
###!
###! Prefixos per A
#pre A
A
##A
#pre Z

##
#pre ZY

##
#pre AZ
A
##A
#pre ZYY

##
#pre AZY
A
##A
###!
###! Prefixos per B
#pre B
B
##B
#pre Z

##
#pre ZY

##
#pre BZ
B
##B
#pre ZYY

##
#pre BZY
B
##B
###!
###! Prefixos per C
#pre C
C
##C
#pre Z

##
#pre ZY

##
#pre CZ
C
##C
#pre ZYY

##
#pre CZY
C
##C
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per A
#spats [A]
[A]
##[A]
#spats [*]
[A, B, C]
##[A, B, C]
###!
###! Matchings per AZ
#spats [A,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [A,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per B
#spats [B]
[B]
##[B]
#spats [*]
[A, B, C]
##[A, B, C]
###!
###! Matchings per BZ
#spats [B,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [B,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[C]
##[C]
#spats [*]
[A, B, C]
##[A, B, C]
###!
###! Matchings per CZ
#spats [C,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [C,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.1.2 Subcas 1B
###!           l1 > 1  l2 > 1  l3 > 1
###!           w1 = AA  w2 = BB  w3 = CC
###!-------------------------------------------------------------------
###!
#init d1B dicc
###!
#ins AA
#ins BB
#ins CC
###!
###! Prefixos per AA
#pre A

##
#pre AA
AA
##AA
#pre ZA

##
#pre AZ

##
#pre ZAY

##
#pre AZY

##
#pre AAZ
AA
##AA
#pre ZAYY

##
#pre AZYY

##
#pre AAZY
AA
##AA
###!
###! Prefixos per BB
#pre B

##
#pre BB
BB
##BB
#pre ZB

##
#pre BZ

##
#pre ZBY

##
#pre BZY

##
#pre BBZ
BB
##BB
#pre ZBYY

##
#pre BZYY

##
#pre BBZY
BB
##BB
###!
###! Prefixos per CC
#pre C

##
#pre CC
CC
##CC
#pre ZC

##
#pre CZ

##
#pre ZCY

##
#pre CZY

##
#pre CCZ
CC
##CC
#pre ZCYY

##
#pre CZYY

##
#pre CCZY
CC
##CC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per A
#spats [A]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per AA
#spats [A,A]
[AA]
##[AA]
#spats [*,A]
[AA]
##[AA]
#spats [A,*]
[AA]
##[AA]
#spats [*,*]
[AA, BB, CC]
##[AA, BB, CC]
###!
###! Matchings per AAZ
#spats [A,A,Z]
[]
##[]
#spats [*,A,Z]
[]
##[]
#spats [A,*,Z]
[]
##[]
#spats [A,A,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,A,*]
[]
##[]
#spats [A,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per B
#spats [B]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per BB
#spats [B,B]
[BB]
##[BB]
#spats [*,B]
[BB]
##[BB]
#spats [B,*]
[BB]
##[BB]
#spats [*,*]
[AA, BB, CC]
##[AA, BB, CC]
###!
###! Matchings per BBZ
#spats [B,B,Z]
[]
##[]
#spats [*,B,Z]
[]
##[]
#spats [B,*,Z]
[]
##[]
#spats [B,B,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,B,*]
[]
##[]
#spats [B,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per CC
#spats [C,C]
[CC]
##[CC]
#spats [*,C]
[CC]
##[CC]
#spats [C,*]
[CC]
##[CC]
#spats [*,*]
[AA, BB, CC]
##[AA, BB, CC]
###!
###! Matchings per CCZ
#spats [C,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [C,*,Z]
[]
##[]
#spats [C,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [C,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!
###!-------------------------------------------------------------------
###103.2 CAS NÚMERO 2
###!     Dues de elles (w1 y w2) comparteixen un prefixe comú p12 [=> l1 > lp12]:
###!     p123 = p13 = p23 = ·   p12 = P+   w1 = P+A+   w2 = P+B+   w3 = C+
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###103.2.1 Subcas 2A
###!           lp12 = 1  l1 = lp12 + 1  l2 = lp12 + 1  l3 = 1
###!           w1 = PA  w2 = PB  w3 = C
###!-------------------------------------------------------------------
###!
#init d2A dicc
###!
#ins PA
#ins PB
#ins C
###!
###! Prefixos per PA
#pre P

##
#pre PA
PA
##PA
#pre ZA

##
#pre PZ

##
#pre ZAY

##
#pre PZY

##
#pre PAZ
PA
##PA
#pre ZAYY

##
#pre PZYY

##
#pre PAZY
PA
##PA
###!
###! Prefixos per PB
#pre P

##
#pre PB
PB
##PB
#pre ZB

##
#pre PZ

##
#pre ZBY

##
#pre PZY

##
#pre PBZ
PB
##PB
#pre ZBYY

##
#pre PZYY

##
#pre PBZY
PB
##PB
###!
###! Prefixos per C
#pre C
C
##C
#pre Z

##
#pre ZY

##
#pre CZ
C
##C
#pre ZYY

##
#pre CZY
C
##C
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[C]
##[C]
###!
###! Matchings per PA
#spats [P,A]
[PA]
##[PA]
#spats [*,A]
[PA]
##[PA]
#spats [P,*]
[PA, PB]
##[PA, PB]
#spats [*,*]
[PA, PB]
##[PA, PB]
###!
###! Matchings per PAZ
#spats [P,A,Z]
[]
##[]
#spats [*,A,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,A,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,A,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[C]
##[C]
###!
###! Matchings per PB
#spats [P,B]
[PB]
##[PB]
#spats [*,B]
[PB]
##[PB]
#spats [P,*]
[PA, PB]
##[PA, PB]
#spats [*,*]
[PA, PB]
##[PA, PB]
###!
###! Matchings per PBZ
#spats [P,B,Z]
[]
##[]
#spats [*,B,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,B,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,B,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[C]
##[C]
#spats [*]
[C]
##[C]
###!
###! Matchings per CZ
#spats [C,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [C,*]
[]
##[]
#spats [*,*]
[PA, PB]
##[PA, PB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.2.2 Subcas 2B
###!           lp12 = 1  l1 = lp12 + 1  l2 = lp12 + 1  l3 > 1
###!           w1 = PA  w2 = PB  w3 = CC
###!-------------------------------------------------------------------
###!
#init d2B dicc
###!
#ins PA
#ins PB
#ins CC
###!
###! Prefixos per PA
#pre P

##
#pre PA
PA
##PA
#pre ZA

##
#pre PZ

##
#pre ZAY

##
#pre PZY

##
#pre PAZ
PA
##PA
#pre ZAYY

##
#pre PZYY

##
#pre PAZY
PA
##PA
###!
###! Prefixos per PB
#pre P

##
#pre PB
PB
##PB
#pre ZB

##
#pre PZ

##
#pre ZBY

##
#pre PZY

##
#pre PBZ
PB
##PB
#pre ZBYY

##
#pre PZYY

##
#pre PBZY
PB
##PB
###!
###! Prefixos per CC
#pre C

##
#pre CC
CC
##CC
#pre ZC

##
#pre CZ

##
#pre ZCY

##
#pre CZY

##
#pre CCZ
CC
##CC
#pre ZCYY

##
#pre CZYY

##
#pre CCZY
CC
##CC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PA
#spats [P,A]
[PA]
##[PA]
#spats [*,A]
[PA]
##[PA]
#spats [P,*]
[PA, PB]
##[PA, PB]
#spats [*,*]
[CC, PA, PB]
##[CC, PA, PB]
###!
###! Matchings per PAZ
#spats [P,A,Z]
[]
##[]
#spats [*,A,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,A,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,A,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PB
#spats [P,B]
[PB]
##[PB]
#spats [*,B]
[PB]
##[PB]
#spats [P,*]
[PA, PB]
##[PA, PB]
#spats [*,*]
[CC, PA, PB]
##[CC, PA, PB]
###!
###! Matchings per PBZ
#spats [P,B,Z]
[]
##[]
#spats [*,B,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,B,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,B,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per CC
#spats [C,C]
[CC]
##[CC]
#spats [*,C]
[CC]
##[CC]
#spats [C,*]
[CC]
##[CC]
#spats [*,*]
[CC, PA, PB]
##[CC, PA, PB]
###!
###! Matchings per CCZ
#spats [C,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [C,*,Z]
[]
##[]
#spats [C,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [C,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.2.3 Subcas 2C
###!           lp12 = 1  l1 > lp12 + 1  l2 > lp12 + 1  l3 = 1
###!           w1 = PAA  w2 = PBB  w3 = C
###!-------------------------------------------------------------------
###!
#init d2C dicc
###!
#ins PAA
#ins PBB
#ins C
###!
###! Prefixos per PAA
#pre P

##
#pre PA

##
#pre PAA
PAA
##PAA
#pre ZAA

##
#pre PZA

##
#pre PAZ

##
#pre ZAAY

##
#pre PAZY

##
#pre PAAZ
PAA
##PAA
#pre ZAAYY

##
#pre PAZYY

##
#pre PAAZY
PAA
##PAA
###!
###! Prefixos per PBB
#pre P

##
#pre PB

##
#pre PBB
PBB
##PBB
#pre ZBB

##
#pre PZB

##
#pre PBZ

##
#pre ZBBY

##
#pre PBZY

##
#pre PBBZ
PBB
##PBB
#pre ZBBYY

##
#pre PBZYY

##
#pre PBBZY
PBB
##PBB
###!
###! Prefixos per C
#pre C
C
##C
#pre Z

##
#pre ZY

##
#pre CZ
C
##C
#pre ZYY

##
#pre CZY
C
##C
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per PA
#spats [P,A]
[]
##[]
#spats [*,A]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PAA
#spats [P,A,A]
[PAA]
##[PAA]
#spats [*,A,A]
[PAA]
##[PAA]
#spats [P,*,A]
[PAA]
##[PAA]
#spats [P,A,*]
[PAA]
##[PAA]
#spats [*,*,A]
[PAA]
##[PAA]
#spats [*,A,*]
[PAA]
##[PAA]
#spats [P,*,*]
[PAA, PBB]
##[PAA, PBB]
#spats [*,*,*]
[PAA, PBB]
##[PAA, PBB]
###!
###! Matchings per PAAZ
#spats [P,A,A,Z]
[]
##[]
#spats [*,A,A,Z]
[]
##[]
#spats [P,*,A,Z]
[]
##[]
#spats [P,A,*,Z]
[]
##[]
#spats [P,A,A,*]
[]
##[]
#spats [*,*,A,Z]
[]
##[]
#spats [*,A,*,Z]
[]
##[]
#spats [*,A,A,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,A,*]
[]
##[]
#spats [P,A,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,A,*]
[]
##[]
#spats [*,A,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PB
#spats [P,B]
[]
##[]
#spats [*,B]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PBB
#spats [P,B,B]
[PBB]
##[PBB]
#spats [*,B,B]
[PBB]
##[PBB]
#spats [P,*,B]
[PBB]
##[PBB]
#spats [P,B,*]
[PBB]
##[PBB]
#spats [*,*,B]
[PBB]
##[PBB]
#spats [*,B,*]
[PBB]
##[PBB]
#spats [P,*,*]
[PAA, PBB]
##[PAA, PBB]
#spats [*,*,*]
[PAA, PBB]
##[PAA, PBB]
###!
###! Matchings per PBBZ
#spats [P,B,B,Z]
[]
##[]
#spats [*,B,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,B,*,Z]
[]
##[]
#spats [P,B,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,B,*,Z]
[]
##[]
#spats [*,B,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,B,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,B,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[C]
##[C]
#spats [*]
[C]
##[C]
###!
###! Matchings per CZ
#spats [C,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [C,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.2.4 Subcas 2D
###!           lp12 = 1  l1 > lp12 + 1  l2 > lp12 + 1  l3 > 1
###!           w1 = PAA  w2 = PBB  w3 = CC
###!-------------------------------------------------------------------
###!
#init d2D dicc
###!
#ins PAA
#ins PBB
#ins CC
###!
###! Prefixos per PAA
#pre P

##
#pre PA

##
#pre PAA
PAA
##PAA
#pre ZAA

##
#pre PZA

##
#pre PAZ

##
#pre ZAAY

##
#pre PAZY

##
#pre PAAZ
PAA
##PAA
#pre ZAAYY

##
#pre PAZYY

##
#pre PAAZY
PAA
##PAA
###!
###! Prefixos per PBB
#pre P

##
#pre PB

##
#pre PBB
PBB
##PBB
#pre ZBB

##
#pre PZB

##
#pre PBZ

##
#pre ZBBY

##
#pre PBZY

##
#pre PBBZ
PBB
##PBB
#pre ZBBYY

##
#pre PBZYY

##
#pre PBBZY
PBB
##PBB
###!
###! Prefixos per CC
#pre C

##
#pre CC
CC
##CC
#pre ZC

##
#pre CZ

##
#pre ZCY

##
#pre CZY

##
#pre CCZ
CC
##CC
#pre ZCYY

##
#pre CZYY

##
#pre CCZY
CC
##CC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per PA
#spats [P,A]
[]
##[]
#spats [*,A]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[CC]
##[CC]
###!
###! Matchings per PAA
#spats [P,A,A]
[PAA]
##[PAA]
#spats [*,A,A]
[PAA]
##[PAA]
#spats [P,*,A]
[PAA]
##[PAA]
#spats [P,A,*]
[PAA]
##[PAA]
#spats [*,*,A]
[PAA]
##[PAA]
#spats [*,A,*]
[PAA]
##[PAA]
#spats [P,*,*]
[PAA, PBB]
##[PAA, PBB]
#spats [*,*,*]
[PAA, PBB]
##[PAA, PBB]
###!
###! Matchings per PAAZ
#spats [P,A,A,Z]
[]
##[]
#spats [*,A,A,Z]
[]
##[]
#spats [P,*,A,Z]
[]
##[]
#spats [P,A,*,Z]
[]
##[]
#spats [P,A,A,*]
[]
##[]
#spats [*,*,A,Z]
[]
##[]
#spats [*,A,*,Z]
[]
##[]
#spats [*,A,A,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,A,*]
[]
##[]
#spats [P,A,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,A,*]
[]
##[]
#spats [*,A,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PB
#spats [P,B]
[]
##[]
#spats [*,B]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[CC]
##[CC]
###!
###! Matchings per PBB
#spats [P,B,B]
[PBB]
##[PBB]
#spats [*,B,B]
[PBB]
##[PBB]
#spats [P,*,B]
[PBB]
##[PBB]
#spats [P,B,*]
[PBB]
##[PBB]
#spats [*,*,B]
[PBB]
##[PBB]
#spats [*,B,*]
[PBB]
##[PBB]
#spats [P,*,*]
[PAA, PBB]
##[PAA, PBB]
#spats [*,*,*]
[PAA, PBB]
##[PAA, PBB]
###!
###! Matchings per PBBZ
#spats [P,B,B,Z]
[]
##[]
#spats [*,B,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,B,*,Z]
[]
##[]
#spats [P,B,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,B,*,Z]
[]
##[]
#spats [*,B,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,B,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,B,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per CC
#spats [C,C]
[CC]
##[CC]
#spats [*,C]
[CC]
##[CC]
#spats [C,*]
[CC]
##[CC]
#spats [*,*]
[CC]
##[CC]
###!
###! Matchings per CCZ
#spats [C,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [C,*,Z]
[]
##[]
#spats [C,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [C,*,*]
[]
##[]
#spats [*,*,*]
[PAA, PBB]
##[PAA, PBB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.2.5 Subcas 2E
###!           lp12 > 1  l1 = lp12 + 1  l2 = lp12 + 1  l3 = 1
###!           w1 = PPA  w2 = PPB  w3 = C
###!-------------------------------------------------------------------
###!
#init d2E dicc
###!
#ins PPA
#ins PPB
#ins C
###!
###! Prefixos per PPA
#pre P

##
#pre PP

##
#pre PPA
PPA
##PPA
#pre ZPA

##
#pre PZA

##
#pre PPZ

##
#pre ZPAY

##
#pre PPZY

##
#pre PPAZ
PPA
##PPA
#pre ZPAYY

##
#pre PPZYY

##
#pre PPAZY
PPA
##PPA
###!
###! Prefixos per PPB
#pre P

##
#pre PP

##
#pre PPB
PPB
##PPB
#pre ZPB

##
#pre PZB

##
#pre PPZ

##
#pre ZPBY

##
#pre PPZY

##
#pre PPBZ
PPB
##PPB
#pre ZPBYY

##
#pre PPZYY

##
#pre PPBZY
PPB
##PPB
###!
###! Prefixos per C
#pre C
C
##C
#pre Z

##
#pre ZY

##
#pre CZ
C
##C
#pre ZYY

##
#pre CZY
C
##C
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[]
##[]
#spats [*,P]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PPA
#spats [P,P,A]
[PPA]
##[PPA]
#spats [*,P,A]
[PPA]
##[PPA]
#spats [P,*,A]
[PPA]
##[PPA]
#spats [P,P,*]
[PPA, PPB]
##[PPA, PPB]
#spats [*,*,A]
[PPA]
##[PPA]
#spats [*,P,*]
[PPA, PPB]
##[PPA, PPB]
#spats [P,*,*]
[PPA, PPB]
##[PPA, PPB]
#spats [*,*,*]
[PPA, PPB]
##[PPA, PPB]
###!
###! Matchings per PPAZ
#spats [P,P,A,Z]
[]
##[]
#spats [*,P,A,Z]
[]
##[]
#spats [P,*,A,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,A,*]
[]
##[]
#spats [*,*,A,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,A,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,A,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,A,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[]
##[]
#spats [*,P]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PPB
#spats [P,P,B]
[PPB]
##[PPB]
#spats [*,P,B]
[PPB]
##[PPB]
#spats [P,*,B]
[PPB]
##[PPB]
#spats [P,P,*]
[PPA, PPB]
##[PPA, PPB]
#spats [*,*,B]
[PPB]
##[PPB]
#spats [*,P,*]
[PPA, PPB]
##[PPA, PPB]
#spats [P,*,*]
[PPA, PPB]
##[PPA, PPB]
#spats [*,*,*]
[PPA, PPB]
##[PPA, PPB]
###!
###! Matchings per PPBZ
#spats [P,P,B,Z]
[]
##[]
#spats [*,P,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[C]
##[C]
#spats [*]
[C]
##[C]
###!
###! Matchings per CZ
#spats [C,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [C,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.2.6 Subcas 2F
###!           lp12 > 1  l1 = lp12 + 1  l2 = lp12 + 1  l3 > 1
###!           w1 = PPA  w2 = PPB  w3 = CC
###!-------------------------------------------------------------------
###!
#init d2F dicc
###!
#ins PPA
#ins PPB
#ins CC
###!
###! Prefixos per PPA
#pre P

##
#pre PP

##
#pre PPA
PPA
##PPA
#pre ZPA

##
#pre PZA

##
#pre PPZ

##
#pre ZPAY

##
#pre PPZY

##
#pre PPAZ
PPA
##PPA
#pre ZPAYY

##
#pre PPZYY

##
#pre PPAZY
PPA
##PPA
###!
###! Prefixos per PPB
#pre P

##
#pre PP

##
#pre PPB
PPB
##PPB
#pre ZPB

##
#pre PZB

##
#pre PPZ

##
#pre ZPBY

##
#pre PPZY

##
#pre PPBZ
PPB
##PPB
#pre ZPBYY

##
#pre PPZYY

##
#pre PPBZY
PPB
##PPB
###!
###! Prefixos per CC
#pre C

##
#pre CC
CC
##CC
#pre ZC

##
#pre CZ

##
#pre ZCY

##
#pre CZY

##
#pre CCZ
CC
##CC
#pre ZCYY

##
#pre CZYY

##
#pre CCZY
CC
##CC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[]
##[]
#spats [*,P]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[CC]
##[CC]
###!
###! Matchings per PPA
#spats [P,P,A]
[PPA]
##[PPA]
#spats [*,P,A]
[PPA]
##[PPA]
#spats [P,*,A]
[PPA]
##[PPA]
#spats [P,P,*]
[PPA, PPB]
##[PPA, PPB]
#spats [*,*,A]
[PPA]
##[PPA]
#spats [*,P,*]
[PPA, PPB]
##[PPA, PPB]
#spats [P,*,*]
[PPA, PPB]
##[PPA, PPB]
#spats [*,*,*]
[PPA, PPB]
##[PPA, PPB]
###!
###! Matchings per PPAZ
#spats [P,P,A,Z]
[]
##[]
#spats [*,P,A,Z]
[]
##[]
#spats [P,*,A,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,A,*]
[]
##[]
#spats [*,*,A,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,A,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,A,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,A,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[]
##[]
#spats [*,P]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[CC]
##[CC]
###!
###! Matchings per PPB
#spats [P,P,B]
[PPB]
##[PPB]
#spats [*,P,B]
[PPB]
##[PPB]
#spats [P,*,B]
[PPB]
##[PPB]
#spats [P,P,*]
[PPA, PPB]
##[PPA, PPB]
#spats [*,*,B]
[PPB]
##[PPB]
#spats [*,P,*]
[PPA, PPB]
##[PPA, PPB]
#spats [P,*,*]
[PPA, PPB]
##[PPA, PPB]
#spats [*,*,*]
[PPA, PPB]
##[PPA, PPB]
###!
###! Matchings per PPBZ
#spats [P,P,B,Z]
[]
##[]
#spats [*,P,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per CC
#spats [C,C]
[CC]
##[CC]
#spats [*,C]
[CC]
##[CC]
#spats [C,*]
[CC]
##[CC]
#spats [*,*]
[CC]
##[CC]
###!
###! Matchings per CCZ
#spats [C,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [C,*,Z]
[]
##[]
#spats [C,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [C,*,*]
[]
##[]
#spats [*,*,*]
[PPA, PPB]
##[PPA, PPB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.2.7 Subcas 2G
###!           lp12 > 1  l1 > lp12 + 1  l2 > lp12 + 1  l3 = 1
###!           w1 = PPAA  w2 = PPBB  w3 = C
###!-------------------------------------------------------------------
###!
#init d2G dicc
###!
#ins PPAA
#ins PPBB
#ins C
###!
###! Prefixos per PPAA
#pre P

##
#pre PPA

##
#pre PPAA
PPAA
##PPAA
#pre ZPAA

##
#pre PPZA

##
#pre PPAZ

##
#pre ZPAAY

##
#pre PPAZY

##
#pre PPAAZ
PPAA
##PPAA
#pre ZPAAYY

##
#pre PPAZYY

##
#pre PPAAZY
PPAA
##PPAA
###!
###! Prefixos per PPBB
#pre P

##
#pre PPB

##
#pre PPBB
PPBB
##PPBB
#pre ZPBB

##
#pre PPZB

##
#pre PPBZ

##
#pre ZPBBY

##
#pre PPBZY

##
#pre PPBBZ
PPBB
##PPBB
#pre ZPBBYY

##
#pre PPBZYY

##
#pre PPBBZY
PPBB
##PPBB
###!
###! Prefixos per C
#pre C
C
##C
#pre Z

##
#pre ZY

##
#pre CZ
C
##C
#pre ZYY

##
#pre CZY
C
##C
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per PPA
#spats [P,P,A]
[]
##[]
#spats [*,P,A]
[]
##[]
#spats [P,*,A]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,A]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPAA
#spats [P,P,A,A]
[PPAA]
##[PPAA]
#spats [*,P,A,A]
[PPAA]
##[PPAA]
#spats [P,*,A,A]
[PPAA]
##[PPAA]
#spats [P,P,*,A]
[PPAA]
##[PPAA]
#spats [P,P,A,*]
[PPAA]
##[PPAA]
#spats [*,*,A,A]
[PPAA]
##[PPAA]
#spats [*,P,*,A]
[PPAA]
##[PPAA]
#spats [*,P,A,*]
[PPAA]
##[PPAA]
#spats [P,*,*,A]
[PPAA]
##[PPAA]
#spats [P,*,A,*]
[PPAA]
##[PPAA]
#spats [P,P,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [*,*,*,A]
[PPAA]
##[PPAA]
#spats [*,*,A,*]
[PPAA]
##[PPAA]
#spats [*,P,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [P,*,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [*,*,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
###!
###! Matchings per PPAAZ
#spats [P,P,A,A,Z]
[]
##[]
#spats [*,P,A,A,Z]
[]
##[]
#spats [P,*,A,A,Z]
[]
##[]
#spats [P,P,*,A,Z]
[]
##[]
#spats [P,P,A,*,Z]
[]
##[]
#spats [P,P,A,A,*]
[]
##[]
#spats [*,*,A,A,Z]
[]
##[]
#spats [*,P,*,A,Z]
[]
##[]
#spats [*,P,A,*,Z]
[]
##[]
#spats [*,P,A,A,*]
[]
##[]
#spats [P,*,*,A,Z]
[]
##[]
#spats [P,*,A,*,Z]
[]
##[]
#spats [P,*,A,A,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,A,*]
[]
##[]
#spats [P,P,A,*,*]
[]
##[]
#spats [*,*,*,A,Z]
[]
##[]
#spats [*,*,A,*,Z]
[]
##[]
#spats [*,*,A,A,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,A,*]
[]
##[]
#spats [*,P,A,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,A,*]
[]
##[]
#spats [P,*,A,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,A,*]
[]
##[]
#spats [*,*,A,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPB
#spats [P,P,B]
[]
##[]
#spats [*,P,B]
[]
##[]
#spats [P,*,B]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,B]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPBB
#spats [P,P,B,B]
[PPBB]
##[PPBB]
#spats [*,P,B,B]
[PPBB]
##[PPBB]
#spats [P,*,B,B]
[PPBB]
##[PPBB]
#spats [P,P,*,B]
[PPBB]
##[PPBB]
#spats [P,P,B,*]
[PPBB]
##[PPBB]
#spats [*,*,B,B]
[PPBB]
##[PPBB]
#spats [*,P,*,B]
[PPBB]
##[PPBB]
#spats [*,P,B,*]
[PPBB]
##[PPBB]
#spats [P,*,*,B]
[PPBB]
##[PPBB]
#spats [P,*,B,*]
[PPBB]
##[PPBB]
#spats [P,P,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [*,*,*,B]
[PPBB]
##[PPBB]
#spats [*,*,B,*]
[PPBB]
##[PPBB]
#spats [*,P,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [P,*,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [*,*,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
###!
###! Matchings per PPBBZ
#spats [P,P,B,B,Z]
[]
##[]
#spats [*,P,B,B,Z]
[]
##[]
#spats [P,*,B,B,Z]
[]
##[]
#spats [P,P,*,B,Z]
[]
##[]
#spats [P,P,B,*,Z]
[]
##[]
#spats [P,P,B,B,*]
[]
##[]
#spats [*,*,B,B,Z]
[]
##[]
#spats [*,P,*,B,Z]
[]
##[]
#spats [*,P,B,*,Z]
[]
##[]
#spats [*,P,B,B,*]
[]
##[]
#spats [P,*,*,B,Z]
[]
##[]
#spats [P,*,B,*,Z]
[]
##[]
#spats [P,*,B,B,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,B,*]
[]
##[]
#spats [P,P,B,*,*]
[]
##[]
#spats [*,*,*,B,Z]
[]
##[]
#spats [*,*,B,*,Z]
[]
##[]
#spats [*,*,B,B,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,B,*]
[]
##[]
#spats [*,P,B,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,B,*]
[]
##[]
#spats [P,*,B,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,B,*]
[]
##[]
#spats [*,*,B,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[C]
##[C]
#spats [*]
[C]
##[C]
###!
###! Matchings per CZ
#spats [C,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [C,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.2.8 Subcas 2H
###!           lp12 > 1  l1 > lp12 + 1  l2 > lp12 + 1  l3 > 1
###!           w1 = PPAA  w2 = PPBB  w3 = CC
###!-------------------------------------------------------------------
###!
#init d2H dicc
###!
#ins PPAA
#ins PPBB
#ins CC
###!
###! Prefixos per PPAA
#pre P

##
#pre PPA

##
#pre PPAA
PPAA
##PPAA
#pre ZPAA

##
#pre PPZA

##
#pre PPAZ

##
#pre ZPAAY

##
#pre PPAZY

##
#pre PPAAZ
PPAA
##PPAA
#pre ZPAAYY

##
#pre PPAZYY

##
#pre PPAAZY
PPAA
##PPAA
###!
###! Prefixos per PPBB
#pre P

##
#pre PPB

##
#pre PPBB
PPBB
##PPBB
#pre ZPBB

##
#pre PPZB

##
#pre PPBZ

##
#pre ZPBBY

##
#pre PPBZY

##
#pre PPBBZ
PPBB
##PPBB
#pre ZPBBYY

##
#pre PPBZYY

##
#pre PPBBZY
PPBB
##PPBB
###!
###! Prefixos per CC
#pre C

##
#pre CC
CC
##CC
#pre ZC

##
#pre CZ

##
#pre ZCY

##
#pre CZY

##
#pre CCZ
CC
##CC
#pre ZCYY

##
#pre CZYY

##
#pre CCZY
CC
##CC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per PPA
#spats [P,P,A]
[]
##[]
#spats [*,P,A]
[]
##[]
#spats [P,*,A]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,A]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPAA
#spats [P,P,A,A]
[PPAA]
##[PPAA]
#spats [*,P,A,A]
[PPAA]
##[PPAA]
#spats [P,*,A,A]
[PPAA]
##[PPAA]
#spats [P,P,*,A]
[PPAA]
##[PPAA]
#spats [P,P,A,*]
[PPAA]
##[PPAA]
#spats [*,*,A,A]
[PPAA]
##[PPAA]
#spats [*,P,*,A]
[PPAA]
##[PPAA]
#spats [*,P,A,*]
[PPAA]
##[PPAA]
#spats [P,*,*,A]
[PPAA]
##[PPAA]
#spats [P,*,A,*]
[PPAA]
##[PPAA]
#spats [P,P,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [*,*,*,A]
[PPAA]
##[PPAA]
#spats [*,*,A,*]
[PPAA]
##[PPAA]
#spats [*,P,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [P,*,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [*,*,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
###!
###! Matchings per PPAAZ
#spats [P,P,A,A,Z]
[]
##[]
#spats [*,P,A,A,Z]
[]
##[]
#spats [P,*,A,A,Z]
[]
##[]
#spats [P,P,*,A,Z]
[]
##[]
#spats [P,P,A,*,Z]
[]
##[]
#spats [P,P,A,A,*]
[]
##[]
#spats [*,*,A,A,Z]
[]
##[]
#spats [*,P,*,A,Z]
[]
##[]
#spats [*,P,A,*,Z]
[]
##[]
#spats [*,P,A,A,*]
[]
##[]
#spats [P,*,*,A,Z]
[]
##[]
#spats [P,*,A,*,Z]
[]
##[]
#spats [P,*,A,A,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,A,*]
[]
##[]
#spats [P,P,A,*,*]
[]
##[]
#spats [*,*,*,A,Z]
[]
##[]
#spats [*,*,A,*,Z]
[]
##[]
#spats [*,*,A,A,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,A,*]
[]
##[]
#spats [*,P,A,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,A,*]
[]
##[]
#spats [P,*,A,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,A,*]
[]
##[]
#spats [*,*,A,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPB
#spats [P,P,B]
[]
##[]
#spats [*,P,B]
[]
##[]
#spats [P,*,B]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,B]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPBB
#spats [P,P,B,B]
[PPBB]
##[PPBB]
#spats [*,P,B,B]
[PPBB]
##[PPBB]
#spats [P,*,B,B]
[PPBB]
##[PPBB]
#spats [P,P,*,B]
[PPBB]
##[PPBB]
#spats [P,P,B,*]
[PPBB]
##[PPBB]
#spats [*,*,B,B]
[PPBB]
##[PPBB]
#spats [*,P,*,B]
[PPBB]
##[PPBB]
#spats [*,P,B,*]
[PPBB]
##[PPBB]
#spats [P,*,*,B]
[PPBB]
##[PPBB]
#spats [P,*,B,*]
[PPBB]
##[PPBB]
#spats [P,P,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [*,*,*,B]
[PPBB]
##[PPBB]
#spats [*,*,B,*]
[PPBB]
##[PPBB]
#spats [*,P,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [P,*,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
#spats [*,*,*,*]
[PPAA, PPBB]
##[PPAA, PPBB]
###!
###! Matchings per PPBBZ
#spats [P,P,B,B,Z]
[]
##[]
#spats [*,P,B,B,Z]
[]
##[]
#spats [P,*,B,B,Z]
[]
##[]
#spats [P,P,*,B,Z]
[]
##[]
#spats [P,P,B,*,Z]
[]
##[]
#spats [P,P,B,B,*]
[]
##[]
#spats [*,*,B,B,Z]
[]
##[]
#spats [*,P,*,B,Z]
[]
##[]
#spats [*,P,B,*,Z]
[]
##[]
#spats [*,P,B,B,*]
[]
##[]
#spats [P,*,*,B,Z]
[]
##[]
#spats [P,*,B,*,Z]
[]
##[]
#spats [P,*,B,B,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,B,*]
[]
##[]
#spats [P,P,B,*,*]
[]
##[]
#spats [*,*,*,B,Z]
[]
##[]
#spats [*,*,B,*,Z]
[]
##[]
#spats [*,*,B,B,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,B,*]
[]
##[]
#spats [*,P,B,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,B,*]
[]
##[]
#spats [P,*,B,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,B,*]
[]
##[]
#spats [*,*,B,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per CC
#spats [C,C]
[CC]
##[CC]
#spats [*,C]
[CC]
##[CC]
#spats [C,*]
[CC]
##[CC]
#spats [*,*]
[CC]
##[CC]
###!
###! Matchings per CCZ
#spats [C,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [C,*,Z]
[]
##[]
#spats [C,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [C,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!
###!-------------------------------------------------------------------
###103.3 CAS NÚMERO 3
###!     Una d'elles es prefixe d'una altre (w1 de w2, per tant p12 = w1)
###!     i no comparteixen prefixe comú amb la tercera:
###!     p123 = p13 = p23 = ·    p12 = w1 = P+    w2 = P+B+    w3 = C+
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###103.3.1 Subcas 3A
###!           lp12 = l1 = 1  l2 = lp12 + 1  l3 = 1
###!           w1 = P  w2 = PB  w3 = C
###!-------------------------------------------------------------------
###!
#init d3A dicc
###!
#ins P
#ins PB
#ins C
###!
###! Prefixos per P
#pre P
P
##P
#pre Z

##
#pre ZY

##
#pre PZ
P
##P
#pre ZYY

##
#pre PZY
P
##P
###!
###! Prefixos per PB
#pre P
P
##P
#pre PB
PB
##PB
#pre ZB

##
#pre PZ
P
##P
#pre ZBY

##
#pre PZY
P
##P
#pre PBZ
PB
##PB
#pre ZBYY

##
#pre PZYY
P
##P
#pre PBZY
PB
##PB
###!
###! Prefixos per C
#pre C
C
##C
#pre Z

##
#pre ZY

##
#pre CZ
C
##C
#pre ZYY

##
#pre CZY
C
##C
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[P]
##[P]
#spats [*]
[C, P]
##[C, P]
###!
###! Matchings per PZ
#spats [P,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [P,*]
[PB]
##[PB]
#spats [*,*]
[PB]
##[PB]
###!
###! Matchings per P
#spats [P]
[P]
##[P]
#spats [*]
[C, P]
##[C, P]
###!
###! Matchings per PB
#spats [P,B]
[PB]
##[PB]
#spats [*,B]
[PB]
##[PB]
#spats [P,*]
[PB]
##[PB]
#spats [*,*]
[PB]
##[PB]
###!
###! Matchings per PBZ
#spats [P,B,Z]
[]
##[]
#spats [*,B,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,B,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,B,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[C]
##[C]
#spats [*]
[C, P]
##[C, P]
###!
###! Matchings per CZ
#spats [C,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [C,*]
[]
##[]
#spats [*,*]
[PB]
##[PB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.3.2 Subcas 3B
###!           lp12 = l1 = 1  l2 = lp12 + 1  l3 > 1
###!           w1 = P  w2 = PB  w3 = CC
###!-------------------------------------------------------------------
###!
#init d3B dicc
###!
#ins P
#ins PB
#ins CC
###!
###! Prefixos per P
#pre P
P
##P
#pre Z

##
#pre ZY

##
#pre PZ
P
##P
#pre ZYY

##
#pre PZY
P
##P
###!
###! Prefixos per PB
#pre P
P
##P
#pre PB
PB
##PB
#pre ZB

##
#pre PZ
P
##P
#pre ZBY

##
#pre PZY
P
##P
#pre PBZ
PB
##PB
#pre ZBYY

##
#pre PZYY
P
##P
#pre PBZY
PB
##PB
###!
###! Prefixos per CC
#pre C

##
#pre CC
CC
##CC
#pre ZC

##
#pre CZ

##
#pre ZCY

##
#pre CZY

##
#pre CCZ
CC
##CC
#pre ZCYY

##
#pre CZYY

##
#pre CCZY
CC
##CC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[P]
##[P]
#spats [*]
[P]
##[P]
###!
###! Matchings per PZ
#spats [P,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [P,*]
[PB]
##[PB]
#spats [*,*]
[CC, PB]
##[CC, PB]
###!
###! Matchings per P
#spats [P]
[P]
##[P]
#spats [*]
[P]
##[P]
###!
###! Matchings per PB
#spats [P,B]
[PB]
##[PB]
#spats [*,B]
[PB]
##[PB]
#spats [P,*]
[PB]
##[PB]
#spats [*,*]
[CC, PB]
##[CC, PB]
###!
###! Matchings per PBZ
#spats [P,B,Z]
[]
##[]
#spats [*,B,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,B,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,B,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[]
##[]
#spats [*]
[P]
##[P]
###!
###! Matchings per CC
#spats [C,C]
[CC]
##[CC]
#spats [*,C]
[CC]
##[CC]
#spats [C,*]
[CC]
##[CC]
#spats [*,*]
[CC, PB]
##[CC, PB]
###!
###! Matchings per CCZ
#spats [C,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [C,*,Z]
[]
##[]
#spats [C,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [C,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.3.3 Subcas 3C
###!           lp12 = l1 = 1  l2 > lp12 + 1  l3 = 1
###!           w1 = P  w2 = PBB  w3 = C
###!-------------------------------------------------------------------
###!
#init d3C dicc
###!
#ins P
#ins PBB
#ins C
###!
###! Prefixos per P
#pre P
P
##P
#pre Z

##
#pre ZY

##
#pre PZ
P
##P
#pre ZYY

##
#pre PZY
P
##P
###!
###! Prefixos per PBB
#pre P
P
##P
#pre PB
P
##P
#pre PBB
PBB
##PBB
#pre ZBB

##
#pre PZB
P
##P
#pre PBZ
P
##P
#pre ZBBY

##
#pre PBZY
P
##P
#pre PBBZ
PBB
##PBB
#pre ZBBYY

##
#pre PBZYY
P
##P
#pre PBBZY
PBB
##PBB
###!
###! Prefixos per C
#pre C
C
##C
#pre Z

##
#pre ZY

##
#pre CZ
C
##C
#pre ZYY

##
#pre CZY
C
##C
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[P]
##[P]
#spats [*]
[C, P]
##[C, P]
###!
###! Matchings per PZ
#spats [P,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PB
#spats [P,B]
[]
##[]
#spats [*,B]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PBB
#spats [P,B,B]
[PBB]
##[PBB]
#spats [*,B,B]
[PBB]
##[PBB]
#spats [P,*,B]
[PBB]
##[PBB]
#spats [P,B,*]
[PBB]
##[PBB]
#spats [*,*,B]
[PBB]
##[PBB]
#spats [*,B,*]
[PBB]
##[PBB]
#spats [P,*,*]
[PBB]
##[PBB]
#spats [*,*,*]
[PBB]
##[PBB]
###!
###! Matchings per PBBZ
#spats [P,B,B,Z]
[]
##[]
#spats [*,B,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,B,*,Z]
[]
##[]
#spats [P,B,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,B,*,Z]
[]
##[]
#spats [*,B,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,B,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,B,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[C]
##[C]
#spats [*]
[C, P]
##[C, P]
###!
###! Matchings per CZ
#spats [C,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [C,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.3.4 Subcas 3D
###!           lp12 = l1 = 1  l2 > lp12 + 1  l3 > 1
###!           w1 = P  w2 = PBB  w3 = CC
###!-------------------------------------------------------------------
###!
#init d3D dicc
###!
#ins P
#ins PBB
#ins CC
###!
###! Prefixos per P
#pre P
P
##P
#pre Z

##
#pre ZY

##
#pre PZ
P
##P
#pre ZYY

##
#pre PZY
P
##P
###!
###! Prefixos per PBB
#pre P
P
##P
#pre PB
P
##P
#pre PBB
PBB
##PBB
#pre ZBB

##
#pre PZB
P
##P
#pre PBZ
P
##P
#pre ZBBY

##
#pre PBZY
P
##P
#pre PBBZ
PBB
##PBB
#pre ZBBYY

##
#pre PBZYY
P
##P
#pre PBBZY
PBB
##PBB
###!
###! Prefixos per CC
#pre C

##
#pre CC
CC
##CC
#pre ZC

##
#pre CZ

##
#pre ZCY

##
#pre CZY

##
#pre CCZ
CC
##CC
#pre ZCYY

##
#pre CZYY

##
#pre CCZY
CC
##CC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[P]
##[P]
#spats [*]
[P]
##[P]
###!
###! Matchings per PZ
#spats [P,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[CC]
##[CC]
###!
###! Matchings per PB
#spats [P,B]
[]
##[]
#spats [*,B]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[CC]
##[CC]
###!
###! Matchings per PBB
#spats [P,B,B]
[PBB]
##[PBB]
#spats [*,B,B]
[PBB]
##[PBB]
#spats [P,*,B]
[PBB]
##[PBB]
#spats [P,B,*]
[PBB]
##[PBB]
#spats [*,*,B]
[PBB]
##[PBB]
#spats [*,B,*]
[PBB]
##[PBB]
#spats [P,*,*]
[PBB]
##[PBB]
#spats [*,*,*]
[PBB]
##[PBB]
###!
###! Matchings per PBBZ
#spats [P,B,B,Z]
[]
##[]
#spats [*,B,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,B,*,Z]
[]
##[]
#spats [P,B,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,B,*,Z]
[]
##[]
#spats [*,B,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,B,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,B,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[]
##[]
#spats [*]
[P]
##[P]
###!
###! Matchings per CC
#spats [C,C]
[CC]
##[CC]
#spats [*,C]
[CC]
##[CC]
#spats [C,*]
[CC]
##[CC]
#spats [*,*]
[CC]
##[CC]
###!
###! Matchings per CCZ
#spats [C,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [C,*,Z]
[]
##[]
#spats [C,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [C,*,*]
[]
##[]
#spats [*,*,*]
[PBB]
##[PBB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.3.5 Subcas 3E
###!           lp12 = l1 > 1  l2 = lp12 + 1  l3 = 1
###!           w1 = PP  w2 = PPB  w3 = C
###!-------------------------------------------------------------------
###!
#init d3E dicc
###!
#ins PP
#ins PPB
#ins C
###!
###! Prefixos per PP
#pre P

##
#pre PP
PP
##PP
#pre ZP

##
#pre PZ

##
#pre ZPY

##
#pre PZY

##
#pre PPZ
PP
##PP
#pre ZPYY

##
#pre PZYY

##
#pre PPZY
PP
##PP
###!
###! Prefixos per PPB
#pre P

##
#pre PP
PP
##PP
#pre PPB
PPB
##PPB
#pre ZPB

##
#pre PZB

##
#pre PPZ
PP
##PP
#pre ZPBY

##
#pre PPZY
PP
##PP
#pre PPBZ
PPB
##PPB
#pre ZPBYY

##
#pre PPZYY
PP
##PP
#pre PPBZY
PPB
##PPB
###!
###! Prefixos per C
#pre C
C
##C
#pre Z

##
#pre ZY

##
#pre CZ
C
##C
#pre ZYY

##
#pre CZY
C
##C
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[C]
##[C]
###!
###! Matchings per PP
#spats [P,P]
[PP]
##[PP]
#spats [*,P]
[PP]
##[PP]
#spats [P,*]
[PP]
##[PP]
#spats [*,*]
[PP]
##[PP]
###!
###! Matchings per PPZ
#spats [P,P,Z]
[]
##[]
#spats [*,P,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,P,*]
[PPB]
##[PPB]
#spats [*,*,Z]
[]
##[]
#spats [*,P,*]
[PPB]
##[PPB]
#spats [P,*,*]
[PPB]
##[PPB]
#spats [*,*,*]
[PPB]
##[PPB]
###!
###! Matchings per PP
#spats [P,P]
[PP]
##[PP]
#spats [*,P]
[PP]
##[PP]
#spats [P,*]
[PP]
##[PP]
#spats [*,*]
[PP]
##[PP]
###!
###! Matchings per PPB
#spats [P,P,B]
[PPB]
##[PPB]
#spats [*,P,B]
[PPB]
##[PPB]
#spats [P,*,B]
[PPB]
##[PPB]
#spats [P,P,*]
[PPB]
##[PPB]
#spats [*,*,B]
[PPB]
##[PPB]
#spats [*,P,*]
[PPB]
##[PPB]
#spats [P,*,*]
[PPB]
##[PPB]
#spats [*,*,*]
[PPB]
##[PPB]
###!
###! Matchings per PPBZ
#spats [P,P,B,Z]
[]
##[]
#spats [*,P,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[C]
##[C]
#spats [*]
[C]
##[C]
###!
###! Matchings per CZ
#spats [C,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [C,*]
[]
##[]
#spats [*,*]
[PP]
##[PP]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.3.6 Subcas 3F
###!           lp12 = l1 > 1  l2 = lp12 + 1  l3 > 1
###!           w1 = PP  w2 = PPB  w3 = CC
###!-------------------------------------------------------------------
###!
#init d3F dicc
###!
#ins PP
#ins PPB
#ins CC
###!
###! Prefixos per PP
#pre P

##
#pre PP
PP
##PP
#pre ZP

##
#pre PZ

##
#pre ZPY

##
#pre PZY

##
#pre PPZ
PP
##PP
#pre ZPYY

##
#pre PZYY

##
#pre PPZY
PP
##PP
###!
###! Prefixos per PPB
#pre P

##
#pre PP
PP
##PP
#pre PPB
PPB
##PPB
#pre ZPB

##
#pre PZB

##
#pre PPZ
PP
##PP
#pre ZPBY

##
#pre PPZY
PP
##PP
#pre PPBZ
PPB
##PPB
#pre ZPBYY

##
#pre PPZYY
PP
##PP
#pre PPBZY
PPB
##PPB
###!
###! Prefixos per CC
#pre C

##
#pre CC
CC
##CC
#pre ZC

##
#pre CZ

##
#pre ZCY

##
#pre CZY

##
#pre CCZ
CC
##CC
#pre ZCYY

##
#pre CZYY

##
#pre CCZY
CC
##CC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[PP]
##[PP]
#spats [*,P]
[PP]
##[PP]
#spats [P,*]
[PP]
##[PP]
#spats [*,*]
[CC, PP]
##[CC, PP]
###!
###! Matchings per PPZ
#spats [P,P,Z]
[]
##[]
#spats [*,P,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,P,*]
[PPB]
##[PPB]
#spats [*,*,Z]
[]
##[]
#spats [*,P,*]
[PPB]
##[PPB]
#spats [P,*,*]
[PPB]
##[PPB]
#spats [*,*,*]
[PPB]
##[PPB]
###!
###! Matchings per PP
#spats [P,P]
[PP]
##[PP]
#spats [*,P]
[PP]
##[PP]
#spats [P,*]
[PP]
##[PP]
#spats [*,*]
[CC, PP]
##[CC, PP]
###!
###! Matchings per PPB
#spats [P,P,B]
[PPB]
##[PPB]
#spats [*,P,B]
[PPB]
##[PPB]
#spats [P,*,B]
[PPB]
##[PPB]
#spats [P,P,*]
[PPB]
##[PPB]
#spats [*,*,B]
[PPB]
##[PPB]
#spats [*,P,*]
[PPB]
##[PPB]
#spats [P,*,*]
[PPB]
##[PPB]
#spats [*,*,*]
[PPB]
##[PPB]
###!
###! Matchings per PPBZ
#spats [P,P,B,Z]
[]
##[]
#spats [*,P,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per CC
#spats [C,C]
[CC]
##[CC]
#spats [*,C]
[CC]
##[CC]
#spats [C,*]
[CC]
##[CC]
#spats [*,*]
[CC, PP]
##[CC, PP]
###!
###! Matchings per CCZ
#spats [C,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [C,*,Z]
[]
##[]
#spats [C,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [C,*,*]
[]
##[]
#spats [*,*,*]
[PPB]
##[PPB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.3.7 Subcas 3G
###!           lp12 = l1 > 1  l2 > lp12 + 1  l3 = 1
###!           w1 = PP  w2 = PPBB  w3 = C
###!-------------------------------------------------------------------
###!
#init d3G dicc
###!
#ins PP
#ins PPBB
#ins C
###!
###! Prefixos per PP
#pre P

##
#pre PP
PP
##PP
#pre ZP

##
#pre PZ

##
#pre ZPY

##
#pre PZY

##
#pre PPZ
PP
##PP
#pre ZPYY

##
#pre PZYY

##
#pre PPZY
PP
##PP
###!
###! Prefixos per PPBB
#pre P

##
#pre PPB
PP
##PP
#pre PPBB
PPBB
##PPBB
#pre ZPBB

##
#pre PPZB
PP
##PP
#pre PPBZ
PP
##PP
#pre ZPBBY

##
#pre PPBZY
PP
##PP
#pre PPBBZ
PPBB
##PPBB
#pre ZPBBYY

##
#pre PPBZYY
PP
##PP
#pre PPBBZY
PPBB
##PPBB
###!
###! Prefixos per C
#pre C
C
##C
#pre Z

##
#pre ZY

##
#pre CZ
C
##C
#pre ZYY

##
#pre CZY
C
##C
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[C]
##[C]
###!
###! Matchings per PP
#spats [P,P]
[PP]
##[PP]
#spats [*,P]
[PP]
##[PP]
#spats [P,*]
[PP]
##[PP]
#spats [*,*]
[PP]
##[PP]
###!
###! Matchings per PPZ
#spats [P,P,Z]
[]
##[]
#spats [*,P,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPB
#spats [P,P,B]
[]
##[]
#spats [*,P,B]
[]
##[]
#spats [P,*,B]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,B]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPBB
#spats [P,P,B,B]
[PPBB]
##[PPBB]
#spats [*,P,B,B]
[PPBB]
##[PPBB]
#spats [P,*,B,B]
[PPBB]
##[PPBB]
#spats [P,P,*,B]
[PPBB]
##[PPBB]
#spats [P,P,B,*]
[PPBB]
##[PPBB]
#spats [*,*,B,B]
[PPBB]
##[PPBB]
#spats [*,P,*,B]
[PPBB]
##[PPBB]
#spats [*,P,B,*]
[PPBB]
##[PPBB]
#spats [P,*,*,B]
[PPBB]
##[PPBB]
#spats [P,*,B,*]
[PPBB]
##[PPBB]
#spats [P,P,*,*]
[PPBB]
##[PPBB]
#spats [*,*,*,B]
[PPBB]
##[PPBB]
#spats [*,*,B,*]
[PPBB]
##[PPBB]
#spats [*,P,*,*]
[PPBB]
##[PPBB]
#spats [P,*,*,*]
[PPBB]
##[PPBB]
#spats [*,*,*,*]
[PPBB]
##[PPBB]
###!
###! Matchings per PPBBZ
#spats [P,P,B,B,Z]
[]
##[]
#spats [*,P,B,B,Z]
[]
##[]
#spats [P,*,B,B,Z]
[]
##[]
#spats [P,P,*,B,Z]
[]
##[]
#spats [P,P,B,*,Z]
[]
##[]
#spats [P,P,B,B,*]
[]
##[]
#spats [*,*,B,B,Z]
[]
##[]
#spats [*,P,*,B,Z]
[]
##[]
#spats [*,P,B,*,Z]
[]
##[]
#spats [*,P,B,B,*]
[]
##[]
#spats [P,*,*,B,Z]
[]
##[]
#spats [P,*,B,*,Z]
[]
##[]
#spats [P,*,B,B,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,B,*]
[]
##[]
#spats [P,P,B,*,*]
[]
##[]
#spats [*,*,*,B,Z]
[]
##[]
#spats [*,*,B,*,Z]
[]
##[]
#spats [*,*,B,B,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,B,*]
[]
##[]
#spats [*,P,B,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,B,*]
[]
##[]
#spats [P,*,B,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,B,*]
[]
##[]
#spats [*,*,B,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[C]
##[C]
#spats [*]
[C]
##[C]
###!
###! Matchings per CZ
#spats [C,Z]
[]
##[]
#spats [*,Z]
[]
##[]
#spats [C,*]
[]
##[]
#spats [*,*]
[PP]
##[PP]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.3.8 Subcas 3H
###!           lp12 = l1 > 1  l2 > lp12 + 1  l3 > 1
###!           w1 = PP  w2 = PPBB  w3 = CC
###!-------------------------------------------------------------------
###!
#init d3H dicc
###!
#ins PP
#ins PPBB
#ins CC
###!
###! Prefixos per PP
#pre P

##
#pre PP
PP
##PP
#pre ZP

##
#pre PZ

##
#pre ZPY

##
#pre PZY

##
#pre PPZ
PP
##PP
#pre ZPYY

##
#pre PZYY

##
#pre PPZY
PP
##PP
###!
###! Prefixos per PPBB
#pre P

##
#pre PPB
PP
##PP
#pre PPBB
PPBB
##PPBB
#pre ZPBB

##
#pre PPZB
PP
##PP
#pre PPBZ
PP
##PP
#pre ZPBBY

##
#pre PPBZY
PP
##PP
#pre PPBBZ
PPBB
##PPBB
#pre ZPBBYY

##
#pre PPBZYY
PP
##PP
#pre PPBBZY
PPBB
##PPBB
###!
###! Prefixos per CC
#pre C

##
#pre CC
CC
##CC
#pre ZC

##
#pre CZ

##
#pre ZCY

##
#pre CZY

##
#pre CCZ
CC
##CC
#pre ZCYY

##
#pre CZYY

##
#pre CCZY
CC
##CC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[PP]
##[PP]
#spats [*,P]
[PP]
##[PP]
#spats [P,*]
[PP]
##[PP]
#spats [*,*]
[CC, PP]
##[CC, PP]
###!
###! Matchings per PPZ
#spats [P,P,Z]
[]
##[]
#spats [*,P,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPB
#spats [P,P,B]
[]
##[]
#spats [*,P,B]
[]
##[]
#spats [P,*,B]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,B]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPBB
#spats [P,P,B,B]
[PPBB]
##[PPBB]
#spats [*,P,B,B]
[PPBB]
##[PPBB]
#spats [P,*,B,B]
[PPBB]
##[PPBB]
#spats [P,P,*,B]
[PPBB]
##[PPBB]
#spats [P,P,B,*]
[PPBB]
##[PPBB]
#spats [*,*,B,B]
[PPBB]
##[PPBB]
#spats [*,P,*,B]
[PPBB]
##[PPBB]
#spats [*,P,B,*]
[PPBB]
##[PPBB]
#spats [P,*,*,B]
[PPBB]
##[PPBB]
#spats [P,*,B,*]
[PPBB]
##[PPBB]
#spats [P,P,*,*]
[PPBB]
##[PPBB]
#spats [*,*,*,B]
[PPBB]
##[PPBB]
#spats [*,*,B,*]
[PPBB]
##[PPBB]
#spats [*,P,*,*]
[PPBB]
##[PPBB]
#spats [P,*,*,*]
[PPBB]
##[PPBB]
#spats [*,*,*,*]
[PPBB]
##[PPBB]
###!
###! Matchings per PPBBZ
#spats [P,P,B,B,Z]
[]
##[]
#spats [*,P,B,B,Z]
[]
##[]
#spats [P,*,B,B,Z]
[]
##[]
#spats [P,P,*,B,Z]
[]
##[]
#spats [P,P,B,*,Z]
[]
##[]
#spats [P,P,B,B,*]
[]
##[]
#spats [*,*,B,B,Z]
[]
##[]
#spats [*,P,*,B,Z]
[]
##[]
#spats [*,P,B,*,Z]
[]
##[]
#spats [*,P,B,B,*]
[]
##[]
#spats [P,*,*,B,Z]
[]
##[]
#spats [P,*,B,*,Z]
[]
##[]
#spats [P,*,B,B,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,B,*]
[]
##[]
#spats [P,P,B,*,*]
[]
##[]
#spats [*,*,*,B,Z]
[]
##[]
#spats [*,*,B,*,Z]
[]
##[]
#spats [*,*,B,B,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,B,*]
[]
##[]
#spats [*,P,B,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,B,*]
[]
##[]
#spats [P,*,B,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,B,*]
[]
##[]
#spats [*,*,B,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per C
#spats [C]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per CC
#spats [C,C]
[CC]
##[CC]
#spats [*,C]
[CC]
##[CC]
#spats [C,*]
[CC]
##[CC]
#spats [*,*]
[CC, PP]
##[CC, PP]
###!
###! Matchings per CCZ
#spats [C,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [C,*,Z]
[]
##[]
#spats [C,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [C,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!
###!-------------------------------------------------------------------
###103.4 CAS NÚMERO 4
###!     Les tres paraules comparteixen un prefixe comú p123
###!     cap parella comparteix un prefixe comú més llarg:
###!     p123 = p12 = p13 = p23 = P+   w1 = P+A+   w2 = P+B+   w3 = P+C+
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###103.4.1 Subcas 4A
###!           lp123 = 1  l1 = lp123 + 1  l2 = lp123 + 1  l3 = lp123 + 1
###!           w1 = PA  w2 = PB  w3 = PC
###!-------------------------------------------------------------------
###!
#init d4A dicc
###!
#ins PA
#ins PB
#ins PC
###!
###! Prefixos per PA
#pre P

##
#pre PA
PA
##PA
#pre ZA

##
#pre PZ

##
#pre ZAY

##
#pre PZY

##
#pre PAZ
PA
##PA
#pre ZAYY

##
#pre PZYY

##
#pre PAZY
PA
##PA
###!
###! Prefixos per PB
#pre P

##
#pre PB
PB
##PB
#pre ZB

##
#pre PZ

##
#pre ZBY

##
#pre PZY

##
#pre PBZ
PB
##PB
#pre ZBYY

##
#pre PZYY

##
#pre PBZY
PB
##PB
###!
###! Prefixos per PC
#pre P

##
#pre PC
PC
##PC
#pre ZC

##
#pre PZ

##
#pre ZCY

##
#pre PZY

##
#pre PCZ
PC
##PC
#pre ZCYY

##
#pre PZYY

##
#pre PCZY
PC
##PC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PA
#spats [P,A]
[PA]
##[PA]
#spats [*,A]
[PA]
##[PA]
#spats [P,*]
[PA, PB, PC]
##[PA, PB, PC]
#spats [*,*]
[PA, PB, PC]
##[PA, PB, PC]
###!
###! Matchings per PAZ
#spats [P,A,Z]
[]
##[]
#spats [*,A,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,A,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,A,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PB
#spats [P,B]
[PB]
##[PB]
#spats [*,B]
[PB]
##[PB]
#spats [P,*]
[PA, PB, PC]
##[PA, PB, PC]
#spats [*,*]
[PA, PB, PC]
##[PA, PB, PC]
###!
###! Matchings per PBZ
#spats [P,B,Z]
[]
##[]
#spats [*,B,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,B,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,B,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PC
#spats [P,C]
[PC]
##[PC]
#spats [*,C]
[PC]
##[PC]
#spats [P,*]
[PA, PB, PC]
##[PA, PB, PC]
#spats [*,*]
[PA, PB, PC]
##[PA, PB, PC]
###!
###! Matchings per PCZ
#spats [P,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.4.2 Subcas 4B
###!           lp123 = 1  l1 > lp123 + 1  l2 > lp123 + 1  l3 > lp123 + 1
###!           w1 = PAA  w2 = PBB  w3 = PCC
###!-------------------------------------------------------------------
###!
#init d4B dicc
###!
#ins PAA
#ins PBB
#ins PCC
###!
###! Prefixos per PAA
#pre P

##
#pre PA

##
#pre PAA
PAA
##PAA
#pre ZAA

##
#pre PZA

##
#pre PAZ

##
#pre ZAAY

##
#pre PAZY

##
#pre PAAZ
PAA
##PAA
#pre ZAAYY

##
#pre PAZYY

##
#pre PAAZY
PAA
##PAA
###!
###! Prefixos per PBB
#pre P

##
#pre PB

##
#pre PBB
PBB
##PBB
#pre ZBB

##
#pre PZB

##
#pre PBZ

##
#pre ZBBY

##
#pre PBZY

##
#pre PBBZ
PBB
##PBB
#pre ZBBYY

##
#pre PBZYY

##
#pre PBBZY
PBB
##PBB
###!
###! Prefixos per PCC
#pre P

##
#pre PC

##
#pre PCC
PCC
##PCC
#pre ZCC

##
#pre PZC

##
#pre PCZ

##
#pre ZCCY

##
#pre PCZY

##
#pre PCCZ
PCC
##PCC
#pre ZCCYY

##
#pre PCZYY

##
#pre PCCZY
PCC
##PCC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PA
#spats [P,A]
[]
##[]
#spats [*,A]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PAA
#spats [P,A,A]
[PAA]
##[PAA]
#spats [*,A,A]
[PAA]
##[PAA]
#spats [P,*,A]
[PAA]
##[PAA]
#spats [P,A,*]
[PAA]
##[PAA]
#spats [*,*,A]
[PAA]
##[PAA]
#spats [*,A,*]
[PAA]
##[PAA]
#spats [P,*,*]
[PAA, PBB, PCC]
##[PAA, PBB, PCC]
#spats [*,*,*]
[PAA, PBB, PCC]
##[PAA, PBB, PCC]
###!
###! Matchings per PAAZ
#spats [P,A,A,Z]
[]
##[]
#spats [*,A,A,Z]
[]
##[]
#spats [P,*,A,Z]
[]
##[]
#spats [P,A,*,Z]
[]
##[]
#spats [P,A,A,*]
[]
##[]
#spats [*,*,A,Z]
[]
##[]
#spats [*,A,*,Z]
[]
##[]
#spats [*,A,A,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,A,*]
[]
##[]
#spats [P,A,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,A,*]
[]
##[]
#spats [*,A,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PB
#spats [P,B]
[]
##[]
#spats [*,B]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PBB
#spats [P,B,B]
[PBB]
##[PBB]
#spats [*,B,B]
[PBB]
##[PBB]
#spats [P,*,B]
[PBB]
##[PBB]
#spats [P,B,*]
[PBB]
##[PBB]
#spats [*,*,B]
[PBB]
##[PBB]
#spats [*,B,*]
[PBB]
##[PBB]
#spats [P,*,*]
[PAA, PBB, PCC]
##[PAA, PBB, PCC]
#spats [*,*,*]
[PAA, PBB, PCC]
##[PAA, PBB, PCC]
###!
###! Matchings per PBBZ
#spats [P,B,B,Z]
[]
##[]
#spats [*,B,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,B,*,Z]
[]
##[]
#spats [P,B,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,B,*,Z]
[]
##[]
#spats [*,B,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,B,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,B,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PC
#spats [P,C]
[]
##[]
#spats [*,C]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PCC
#spats [P,C,C]
[PCC]
##[PCC]
#spats [*,C,C]
[PCC]
##[PCC]
#spats [P,*,C]
[PCC]
##[PCC]
#spats [P,C,*]
[PCC]
##[PCC]
#spats [*,*,C]
[PCC]
##[PCC]
#spats [*,C,*]
[PCC]
##[PCC]
#spats [P,*,*]
[PAA, PBB, PCC]
##[PAA, PBB, PCC]
#spats [*,*,*]
[PAA, PBB, PCC]
##[PAA, PBB, PCC]
###!
###! Matchings per PCCZ
#spats [P,C,C,Z]
[]
##[]
#spats [*,C,C,Z]
[]
##[]
#spats [P,*,C,Z]
[]
##[]
#spats [P,C,*,Z]
[]
##[]
#spats [P,C,C,*]
[]
##[]
#spats [*,*,C,Z]
[]
##[]
#spats [*,C,*,Z]
[]
##[]
#spats [*,C,C,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,C,*]
[]
##[]
#spats [P,C,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
[]
##[]
#spats [*,C,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.4.3 Subcas 4C
###!           lp123 > 1  l1 = lp123 + 1  l2 = lp123 + 1  l3 = lp123 + 1
###!           w1 = PPA  w2 = PPB  w3 = PPC
###!-------------------------------------------------------------------
###!
#init d4C dicc
###!
#ins PPA
#ins PPB
#ins PPC
###!
###! Prefixos per PPA
#pre P

##
#pre PP

##
#pre PPA
PPA
##PPA
#pre ZPA

##
#pre PZA

##
#pre PPZ

##
#pre ZPAY

##
#pre PPZY

##
#pre PPAZ
PPA
##PPA
#pre ZPAYY

##
#pre PPZYY

##
#pre PPAZY
PPA
##PPA
###!
###! Prefixos per PPB
#pre P

##
#pre PP

##
#pre PPB
PPB
##PPB
#pre ZPB

##
#pre PZB

##
#pre PPZ

##
#pre ZPBY

##
#pre PPZY

##
#pre PPBZ
PPB
##PPB
#pre ZPBYY

##
#pre PPZYY

##
#pre PPBZY
PPB
##PPB
###!
###! Prefixos per PPC
#pre P

##
#pre PP

##
#pre PPC
PPC
##PPC
#pre ZPC

##
#pre PZC

##
#pre PPZ

##
#pre ZPCY

##
#pre PPZY

##
#pre PPCZ
PPC
##PPC
#pre ZPCYY

##
#pre PPZYY

##
#pre PPCZY
PPC
##PPC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[]
##[]
#spats [*,P]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PPA
#spats [P,P,A]
[PPA]
##[PPA]
#spats [*,P,A]
[PPA]
##[PPA]
#spats [P,*,A]
[PPA]
##[PPA]
#spats [P,P,*]
[PPA, PPB, PPC]
##[PPA, PPB, PPC]
#spats [*,*,A]
[PPA]
##[PPA]
#spats [*,P,*]
[PPA, PPB, PPC]
##[PPA, PPB, PPC]
#spats [P,*,*]
[PPA, PPB, PPC]
##[PPA, PPB, PPC]
#spats [*,*,*]
[PPA, PPB, PPC]
##[PPA, PPB, PPC]
###!
###! Matchings per PPAZ
#spats [P,P,A,Z]
[]
##[]
#spats [*,P,A,Z]
[]
##[]
#spats [P,*,A,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,A,*]
[]
##[]
#spats [*,*,A,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,A,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,A,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,A,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[]
##[]
#spats [*,P]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PPB
#spats [P,P,B]
[PPB]
##[PPB]
#spats [*,P,B]
[PPB]
##[PPB]
#spats [P,*,B]
[PPB]
##[PPB]
#spats [P,P,*]
[PPA, PPB, PPC]
##[PPA, PPB, PPC]
#spats [*,*,B]
[PPB]
##[PPB]
#spats [*,P,*]
[PPA, PPB, PPC]
##[PPA, PPB, PPC]
#spats [P,*,*]
[PPA, PPB, PPC]
##[PPA, PPB, PPC]
#spats [*,*,*]
[PPA, PPB, PPC]
##[PPA, PPB, PPC]
###!
###! Matchings per PPBZ
#spats [P,P,B,Z]
[]
##[]
#spats [*,P,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[]
##[]
#spats [*,P]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PPC
#spats [P,P,C]
[PPC]
##[PPC]
#spats [*,P,C]
[PPC]
##[PPC]
#spats [P,*,C]
[PPC]
##[PPC]
#spats [P,P,*]
[PPA, PPB, PPC]
##[PPA, PPB, PPC]
#spats [*,*,C]
[PPC]
##[PPC]
#spats [*,P,*]
[PPA, PPB, PPC]
##[PPA, PPB, PPC]
#spats [P,*,*]
[PPA, PPB, PPC]
##[PPA, PPB, PPC]
#spats [*,*,*]
[PPA, PPB, PPC]
##[PPA, PPB, PPC]
###!
###! Matchings per PPCZ
#spats [P,P,C,Z]
[]
##[]
#spats [*,P,C,Z]
[]
##[]
#spats [P,*,C,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,C,*]
[]
##[]
#spats [*,*,C,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,C,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,C,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.4.4 Subcas 4D
###!           lp123 > 1  l1 > lp123 + 1  l2 > lp123 + 1  l3 > lp123 + 1
###!           w1 = PPAA  w2 = PPBB  w3 = PPCC
###!-------------------------------------------------------------------
###!
#init d4D dicc
###!
#ins PPAA
#ins PPBB
#ins PPCC
###!
###! Prefixos per PPAA
#pre P

##
#pre PPA

##
#pre PPAA
PPAA
##PPAA
#pre ZPAA

##
#pre PPZA

##
#pre PPAZ

##
#pre ZPAAY

##
#pre PPAZY

##
#pre PPAAZ
PPAA
##PPAA
#pre ZPAAYY

##
#pre PPAZYY

##
#pre PPAAZY
PPAA
##PPAA
###!
###! Prefixos per PPBB
#pre P

##
#pre PPB

##
#pre PPBB
PPBB
##PPBB
#pre ZPBB

##
#pre PPZB

##
#pre PPBZ

##
#pre ZPBBY

##
#pre PPBZY

##
#pre PPBBZ
PPBB
##PPBB
#pre ZPBBYY

##
#pre PPBZYY

##
#pre PPBBZY
PPBB
##PPBB
###!
###! Prefixos per PPCC
#pre P

##
#pre PPC

##
#pre PPCC
PPCC
##PPCC
#pre ZPCC

##
#pre PPZC

##
#pre PPCZ

##
#pre ZPCCY

##
#pre PPCZY

##
#pre PPCCZ
PPCC
##PPCC
#pre ZPCCYY

##
#pre PPCZYY

##
#pre PPCCZY
PPCC
##PPCC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PPA
#spats [P,P,A]
[]
##[]
#spats [*,P,A]
[]
##[]
#spats [P,*,A]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,A]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPAA
#spats [P,P,A,A]
[PPAA]
##[PPAA]
#spats [*,P,A,A]
[PPAA]
##[PPAA]
#spats [P,*,A,A]
[PPAA]
##[PPAA]
#spats [P,P,*,A]
[PPAA]
##[PPAA]
#spats [P,P,A,*]
[PPAA]
##[PPAA]
#spats [*,*,A,A]
[PPAA]
##[PPAA]
#spats [*,P,*,A]
[PPAA]
##[PPAA]
#spats [*,P,A,*]
[PPAA]
##[PPAA]
#spats [P,*,*,A]
[PPAA]
##[PPAA]
#spats [P,*,A,*]
[PPAA]
##[PPAA]
#spats [P,P,*,*]
[PPAA, PPBB, PPCC]
##[PPAA, PPBB, PPCC]
#spats [*,*,*,A]
[PPAA]
##[PPAA]
#spats [*,*,A,*]
[PPAA]
##[PPAA]
#spats [*,P,*,*]
[PPAA, PPBB, PPCC]
##[PPAA, PPBB, PPCC]
#spats [P,*,*,*]
[PPAA, PPBB, PPCC]
##[PPAA, PPBB, PPCC]
#spats [*,*,*,*]
[PPAA, PPBB, PPCC]
##[PPAA, PPBB, PPCC]
###!
###! Matchings per PPAAZ
#spats [P,P,A,A,Z]
[]
##[]
#spats [*,P,A,A,Z]
[]
##[]
#spats [P,*,A,A,Z]
[]
##[]
#spats [P,P,*,A,Z]
[]
##[]
#spats [P,P,A,*,Z]
[]
##[]
#spats [P,P,A,A,*]
[]
##[]
#spats [*,*,A,A,Z]
[]
##[]
#spats [*,P,*,A,Z]
[]
##[]
#spats [*,P,A,*,Z]
[]
##[]
#spats [*,P,A,A,*]
[]
##[]
#spats [P,*,*,A,Z]
[]
##[]
#spats [P,*,A,*,Z]
[]
##[]
#spats [P,*,A,A,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,A,*]
[]
##[]
#spats [P,P,A,*,*]
[]
##[]
#spats [*,*,*,A,Z]
[]
##[]
#spats [*,*,A,*,Z]
[]
##[]
#spats [*,*,A,A,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,A,*]
[]
##[]
#spats [*,P,A,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,A,*]
[]
##[]
#spats [P,*,A,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,A,*]
[]
##[]
#spats [*,*,A,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPB
#spats [P,P,B]
[]
##[]
#spats [*,P,B]
[]
##[]
#spats [P,*,B]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,B]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPBB
#spats [P,P,B,B]
[PPBB]
##[PPBB]
#spats [*,P,B,B]
[PPBB]
##[PPBB]
#spats [P,*,B,B]
[PPBB]
##[PPBB]
#spats [P,P,*,B]
[PPBB]
##[PPBB]
#spats [P,P,B,*]
[PPBB]
##[PPBB]
#spats [*,*,B,B]
[PPBB]
##[PPBB]
#spats [*,P,*,B]
[PPBB]
##[PPBB]
#spats [*,P,B,*]
[PPBB]
##[PPBB]
#spats [P,*,*,B]
[PPBB]
##[PPBB]
#spats [P,*,B,*]
[PPBB]
##[PPBB]
#spats [P,P,*,*]
[PPAA, PPBB, PPCC]
##[PPAA, PPBB, PPCC]
#spats [*,*,*,B]
[PPBB]
##[PPBB]
#spats [*,*,B,*]
[PPBB]
##[PPBB]
#spats [*,P,*,*]
[PPAA, PPBB, PPCC]
##[PPAA, PPBB, PPCC]
#spats [P,*,*,*]
[PPAA, PPBB, PPCC]
##[PPAA, PPBB, PPCC]
#spats [*,*,*,*]
[PPAA, PPBB, PPCC]
##[PPAA, PPBB, PPCC]
###!
###! Matchings per PPBBZ
#spats [P,P,B,B,Z]
[]
##[]
#spats [*,P,B,B,Z]
[]
##[]
#spats [P,*,B,B,Z]
[]
##[]
#spats [P,P,*,B,Z]
[]
##[]
#spats [P,P,B,*,Z]
[]
##[]
#spats [P,P,B,B,*]
[]
##[]
#spats [*,*,B,B,Z]
[]
##[]
#spats [*,P,*,B,Z]
[]
##[]
#spats [*,P,B,*,Z]
[]
##[]
#spats [*,P,B,B,*]
[]
##[]
#spats [P,*,*,B,Z]
[]
##[]
#spats [P,*,B,*,Z]
[]
##[]
#spats [P,*,B,B,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,B,*]
[]
##[]
#spats [P,P,B,*,*]
[]
##[]
#spats [*,*,*,B,Z]
[]
##[]
#spats [*,*,B,*,Z]
[]
##[]
#spats [*,*,B,B,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,B,*]
[]
##[]
#spats [*,P,B,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,B,*]
[]
##[]
#spats [P,*,B,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,B,*]
[]
##[]
#spats [*,*,B,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPC
#spats [P,P,C]
[]
##[]
#spats [*,P,C]
[]
##[]
#spats [P,*,C]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,C]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPCC
#spats [P,P,C,C]
[PPCC]
##[PPCC]
#spats [*,P,C,C]
[PPCC]
##[PPCC]
#spats [P,*,C,C]
[PPCC]
##[PPCC]
#spats [P,P,*,C]
[PPCC]
##[PPCC]
#spats [P,P,C,*]
[PPCC]
##[PPCC]
#spats [*,*,C,C]
[PPCC]
##[PPCC]
#spats [*,P,*,C]
[PPCC]
##[PPCC]
#spats [*,P,C,*]
[PPCC]
##[PPCC]
#spats [P,*,*,C]
[PPCC]
##[PPCC]
#spats [P,*,C,*]
[PPCC]
##[PPCC]
#spats [P,P,*,*]
[PPAA, PPBB, PPCC]
##[PPAA, PPBB, PPCC]
#spats [*,*,*,C]
[PPCC]
##[PPCC]
#spats [*,*,C,*]
[PPCC]
##[PPCC]
#spats [*,P,*,*]
[PPAA, PPBB, PPCC]
##[PPAA, PPBB, PPCC]
#spats [P,*,*,*]
[PPAA, PPBB, PPCC]
##[PPAA, PPBB, PPCC]
#spats [*,*,*,*]
[PPAA, PPBB, PPCC]
##[PPAA, PPBB, PPCC]
###!
###! Matchings per PPCCZ
#spats [P,P,C,C,Z]
[]
##[]
#spats [*,P,C,C,Z]
[]
##[]
#spats [P,*,C,C,Z]
[]
##[]
#spats [P,P,*,C,Z]
[]
##[]
#spats [P,P,C,*,Z]
[]
##[]
#spats [P,P,C,C,*]
[]
##[]
#spats [*,*,C,C,Z]
[]
##[]
#spats [*,P,*,C,Z]
[]
##[]
#spats [*,P,C,*,Z]
[]
##[]
#spats [*,P,C,C,*]
[]
##[]
#spats [P,*,*,C,Z]
[]
##[]
#spats [P,*,C,*,Z]
[]
##[]
#spats [P,*,C,C,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,C,*]
[]
##[]
#spats [P,P,C,*,*]
[]
##[]
#spats [*,*,*,C,Z]
[]
##[]
#spats [*,*,C,*,Z]
[]
##[]
#spats [*,*,C,C,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,C,*]
[]
##[]
#spats [*,P,C,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,C,*]
[]
##[]
#spats [P,*,C,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,C,*]
[]
##[]
#spats [*,*,C,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!
###!-------------------------------------------------------------------
###103.5 CAS NÚMERO 5
###!     Les tres paraules comparteixn un prefixe comú p123
###!     i w1 i w2 comparteixen un prefixe comú p12 més llarg:
###! p123 = p13 = p23 = P+  p12 = P+Q+  w1 = P+Q+A+  w2 = P+Q+B+  w3 = P+C+
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###103.5.1 Subcas 5A
###!     lp123 = 1  lp12 = lp123 + 1  l1 = lp12 + 1  l2 = lp12 + 1 l3 = lp123 + 1
###!           w1 = PQA  w2 = PQB  w3 = PC
###!-------------------------------------------------------------------
###!
#init d5A dicc
###!
#ins PQA
#ins PQB
#ins PC
###!
###! Prefixos per PQA
#pre P

##
#pre PQ

##
#pre PQA
PQA
##PQA
#pre ZQA

##
#pre PZA

##
#pre PQZ

##
#pre ZQAY

##
#pre PQZY

##
#pre PQAZ
PQA
##PQA
#pre ZQAYY

##
#pre PQZYY

##
#pre PQAZY
PQA
##PQA
###!
###! Prefixos per PQB
#pre P

##
#pre PQ

##
#pre PQB
PQB
##PQB
#pre ZQB

##
#pre PZB

##
#pre PQZ

##
#pre ZQBY

##
#pre PQZY

##
#pre PQBZ
PQB
##PQB
#pre ZQBYY

##
#pre PQZYY

##
#pre PQBZY
PQB
##PQB
###!
###! Prefixos per PC
#pre P

##
#pre PC
PC
##PC
#pre ZC

##
#pre PZ

##
#pre ZCY

##
#pre PZY

##
#pre PCZ
PC
##PC
#pre ZCYY

##
#pre PZYY

##
#pre PCZY
PC
##PC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per PQ
#spats [P,Q]
[]
##[]
#spats [*,Q]
[]
##[]
#spats [P,*]
[PC]
##[PC]
#spats [*,*]
[PC]
##[PC]
###!
###! Matchings per PQA
#spats [P,Q,A]
[PQA]
##[PQA]
#spats [*,Q,A]
[PQA]
##[PQA]
#spats [P,*,A]
[PQA]
##[PQA]
#spats [P,Q,*]
[PQA, PQB]
##[PQA, PQB]
#spats [*,*,A]
[PQA]
##[PQA]
#spats [*,Q,*]
[PQA, PQB]
##[PQA, PQB]
#spats [P,*,*]
[PQA, PQB]
##[PQA, PQB]
#spats [*,*,*]
[PQA, PQB]
##[PQA, PQB]
###!
###! Matchings per PQAZ
#spats [P,Q,A,Z]
[]
##[]
#spats [*,Q,A,Z]
[]
##[]
#spats [P,*,A,Z]
[]
##[]
#spats [P,Q,*,Z]
[]
##[]
#spats [P,Q,A,*]
[]
##[]
#spats [*,*,A,Z]
[]
##[]
#spats [*,Q,*,Z]
[]
##[]
#spats [*,Q,A,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,A,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,A,*]
[]
##[]
#spats [*,Q,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PQ
#spats [P,Q]
[]
##[]
#spats [*,Q]
[]
##[]
#spats [P,*]
[PC]
##[PC]
#spats [*,*]
[PC]
##[PC]
###!
###! Matchings per PQB
#spats [P,Q,B]
[PQB]
##[PQB]
#spats [*,Q,B]
[PQB]
##[PQB]
#spats [P,*,B]
[PQB]
##[PQB]
#spats [P,Q,*]
[PQA, PQB]
##[PQA, PQB]
#spats [*,*,B]
[PQB]
##[PQB]
#spats [*,Q,*]
[PQA, PQB]
##[PQA, PQB]
#spats [P,*,*]
[PQA, PQB]
##[PQA, PQB]
#spats [*,*,*]
[PQA, PQB]
##[PQA, PQB]
###!
###! Matchings per PQBZ
#spats [P,Q,B,Z]
[]
##[]
#spats [*,Q,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,Q,*,Z]
[]
##[]
#spats [P,Q,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,Q,*,Z]
[]
##[]
#spats [*,Q,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,Q,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PC
#spats [P,C]
[PC]
##[PC]
#spats [*,C]
[PC]
##[PC]
#spats [P,*]
[PC]
##[PC]
#spats [*,*]
[PC]
##[PC]
###!
###! Matchings per PCZ
#spats [P,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [P,*,*]
[PQA, PQB]
##[PQA, PQB]
#spats [*,*,*]
[PQA, PQB]
##[PQA, PQB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.2 Subcas 5B
###!       lp123 = 1  lp12 = lp123 + 1  l1 = lp12 + 1  l2 = lp12 + 1 l3 > lp123 + 1
###!       w1 = PQA  w2 = PQB  w3 = PCC
###!-------------------------------------------------------------------
###!
#init d5B dicc
###!
#ins PQA
#ins PQB
#ins PCC
###!
###! Prefixos per PQA
#pre P

##
#pre PQ

##
#pre PQA
PQA
##PQA
#pre ZQA

##
#pre PZA

##
#pre PQZ

##
#pre ZQAY

##
#pre PQZY

##
#pre PQAZ
PQA
##PQA
#pre ZQAYY

##
#pre PQZYY

##
#pre PQAZY
PQA
##PQA
###!
###! Prefixos per PQB
#pre P

##
#pre PQ

##
#pre PQB
PQB
##PQB
#pre ZQB

##
#pre PZB

##
#pre PQZ

##
#pre ZQBY

##
#pre PQZY

##
#pre PQBZ
PQB
##PQB
#pre ZQBYY

##
#pre PQZYY

##
#pre PQBZY
PQB
##PQB
###!
###! Prefixos per PCC
#pre P

##
#pre PC

##
#pre PCC
PCC
##PCC
#pre ZCC

##
#pre PZC

##
#pre PCZ

##
#pre ZCCY

##
#pre PCZY

##
#pre PCCZ
PCC
##PCC
#pre ZCCYY

##
#pre PCZYY

##
#pre PCCZY
PCC
##PCC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PQ
#spats [P,Q]
[]
##[]
#spats [*,Q]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PQA
#spats [P,Q,A]
[PQA]
##[PQA]
#spats [*,Q,A]
[PQA]
##[PQA]
#spats [P,*,A]
[PQA]
##[PQA]
#spats [P,Q,*]
[PQA, PQB]
##[PQA, PQB]
#spats [*,*,A]
[PQA]
##[PQA]
#spats [*,Q,*]
[PQA, PQB]
##[PQA, PQB]
#spats [P,*,*]
[PCC, PQA, PQB]
##[PCC, PQA, PQB]
#spats [*,*,*]
[PCC, PQA, PQB]
##[PCC, PQA, PQB]
###!
###! Matchings per PQAZ
#spats [P,Q,A,Z]
[]
##[]
#spats [*,Q,A,Z]
[]
##[]
#spats [P,*,A,Z]
[]
##[]
#spats [P,Q,*,Z]
[]
##[]
#spats [P,Q,A,*]
[]
##[]
#spats [*,*,A,Z]
[]
##[]
#spats [*,Q,*,Z]
[]
##[]
#spats [*,Q,A,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,A,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,A,*]
[]
##[]
#spats [*,Q,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PQ
#spats [P,Q]
[]
##[]
#spats [*,Q]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PQB
#spats [P,Q,B]
[PQB]
##[PQB]
#spats [*,Q,B]
[PQB]
##[PQB]
#spats [P,*,B]
[PQB]
##[PQB]
#spats [P,Q,*]
[PQA, PQB]
##[PQA, PQB]
#spats [*,*,B]
[PQB]
##[PQB]
#spats [*,Q,*]
[PQA, PQB]
##[PQA, PQB]
#spats [P,*,*]
[PCC, PQA, PQB]
##[PCC, PQA, PQB]
#spats [*,*,*]
[PCC, PQA, PQB]
##[PCC, PQA, PQB]
###!
###! Matchings per PQBZ
#spats [P,Q,B,Z]
[]
##[]
#spats [*,Q,B,Z]
[]
##[]
#spats [P,*,B,Z]
[]
##[]
#spats [P,Q,*,Z]
[]
##[]
#spats [P,Q,B,*]
[]
##[]
#spats [*,*,B,Z]
[]
##[]
#spats [*,Q,*,Z]
[]
##[]
#spats [*,Q,B,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,B,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,B,*]
[]
##[]
#spats [*,Q,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PC
#spats [P,C]
[]
##[]
#spats [*,C]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PCC
#spats [P,C,C]
[PCC]
##[PCC]
#spats [*,C,C]
[PCC]
##[PCC]
#spats [P,*,C]
[PCC]
##[PCC]
#spats [P,C,*]
[PCC]
##[PCC]
#spats [*,*,C]
[PCC]
##[PCC]
#spats [*,C,*]
[PCC]
##[PCC]
#spats [P,*,*]
[PCC, PQA, PQB]
##[PCC, PQA, PQB]
#spats [*,*,*]
[PCC, PQA, PQB]
##[PCC, PQA, PQB]
###!
###! Matchings per PCCZ
#spats [P,C,C,Z]
[]
##[]
#spats [*,C,C,Z]
[]
##[]
#spats [P,*,C,Z]
[]
##[]
#spats [P,C,*,Z]
[]
##[]
#spats [P,C,C,*]
[]
##[]
#spats [*,*,C,Z]
[]
##[]
#spats [*,C,*,Z]
[]
##[]
#spats [*,C,C,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,C,*]
[]
##[]
#spats [P,C,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
[]
##[]
#spats [*,C,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.3 Subcas 5C
###!           lp123 = 1  lp12 = lp123 + 1  l1 > lp12 + 1  l2 > lp12 + 1 l3 = lp123 + 1
###!           w1 = PQAA  w2 = PQBB  w3 = PC
###!-------------------------------------------------------------------
###!
#init d5C dicc
###!
#ins PQAA
#ins PQBB
#ins PC
###!
###! Prefixos per PQAA
#pre P

##
#pre PQA

##
#pre PQAA
PQAA
##PQAA
#pre ZQAA

##
#pre PQZA

##
#pre PQAZ

##
#pre ZQAAY

##
#pre PQAZY

##
#pre PQAAZ
PQAA
##PQAA
#pre ZQAAYY

##
#pre PQAZYY

##
#pre PQAAZY
PQAA
##PQAA
###!
###! Prefixos per PQBB
#pre P

##
#pre PQB

##
#pre PQBB
PQBB
##PQBB
#pre ZQBB

##
#pre PQZB

##
#pre PQBZ

##
#pre ZQBBY

##
#pre PQBZY

##
#pre PQBBZ
PQBB
##PQBB
#pre ZQBBYY

##
#pre PQBZYY

##
#pre PQBBZY
PQBB
##PQBB
###!
###! Prefixos per PC
#pre P

##
#pre PC
PC
##PC
#pre ZC

##
#pre PZ

##
#pre ZCY

##
#pre PZY

##
#pre PCZ
PC
##PC
#pre ZCYY

##
#pre PZYY

##
#pre PCZY
PC
##PC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per PQA
#spats [P,Q,A]
[]
##[]
#spats [*,Q,A]
[]
##[]
#spats [P,*,A]
[]
##[]
#spats [P,Q,*]
[]
##[]
#spats [*,*,A]
[]
##[]
#spats [*,Q,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PQAA
#spats [P,Q,A,A]
[PQAA]
##[PQAA]
#spats [*,Q,A,A]
[PQAA]
##[PQAA]
#spats [P,*,A,A]
[PQAA]
##[PQAA]
#spats [P,Q,*,A]
[PQAA]
##[PQAA]
#spats [P,Q,A,*]
[PQAA]
##[PQAA]
#spats [*,*,A,A]
[PQAA]
##[PQAA]
#spats [*,Q,*,A]
[PQAA]
##[PQAA]
#spats [*,Q,A,*]
[PQAA]
##[PQAA]
#spats [P,*,*,A]
[PQAA]
##[PQAA]
#spats [P,*,A,*]
[PQAA]
##[PQAA]
#spats [P,Q,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
#spats [*,*,*,A]
[PQAA]
##[PQAA]
#spats [*,*,A,*]
[PQAA]
##[PQAA]
#spats [*,Q,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
#spats [P,*,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
#spats [*,*,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
###!
###! Matchings per PQAAZ
#spats [P,Q,A,A,Z]
[]
##[]
#spats [*,Q,A,A,Z]
[]
##[]
#spats [P,*,A,A,Z]
[]
##[]
#spats [P,Q,*,A,Z]
[]
##[]
#spats [P,Q,A,*,Z]
[]
##[]
#spats [P,Q,A,A,*]
[]
##[]
#spats [*,*,A,A,Z]
[]
##[]
#spats [*,Q,*,A,Z]
[]
##[]
#spats [*,Q,A,*,Z]
[]
##[]
#spats [*,Q,A,A,*]
[]
##[]
#spats [P,*,*,A,Z]
[]
##[]
#spats [P,*,A,*,Z]
[]
##[]
#spats [P,*,A,A,*]
[]
##[]
#spats [P,Q,*,*,Z]
[]
##[]
#spats [P,Q,*,A,*]
[]
##[]
#spats [P,Q,A,*,*]
[]
##[]
#spats [*,*,*,A,Z]
[]
##[]
#spats [*,*,A,*,Z]
[]
##[]
#spats [*,*,A,A,*]
[]
##[]
#spats [*,Q,*,*,Z]
[]
##[]
#spats [*,Q,*,A,*]
[]
##[]
#spats [*,Q,A,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,A,*]
[]
##[]
#spats [P,*,A,*,*]
[]
##[]
#spats [P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,A,*]
[]
##[]
#spats [*,*,A,*,*]
[]
##[]
#spats [*,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PQB
#spats [P,Q,B]
[]
##[]
#spats [*,Q,B]
[]
##[]
#spats [P,*,B]
[]
##[]
#spats [P,Q,*]
[]
##[]
#spats [*,*,B]
[]
##[]
#spats [*,Q,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PQBB
#spats [P,Q,B,B]
[PQBB]
##[PQBB]
#spats [*,Q,B,B]
[PQBB]
##[PQBB]
#spats [P,*,B,B]
[PQBB]
##[PQBB]
#spats [P,Q,*,B]
[PQBB]
##[PQBB]
#spats [P,Q,B,*]
[PQBB]
##[PQBB]
#spats [*,*,B,B]
[PQBB]
##[PQBB]
#spats [*,Q,*,B]
[PQBB]
##[PQBB]
#spats [*,Q,B,*]
[PQBB]
##[PQBB]
#spats [P,*,*,B]
[PQBB]
##[PQBB]
#spats [P,*,B,*]
[PQBB]
##[PQBB]
#spats [P,Q,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
#spats [*,*,*,B]
[PQBB]
##[PQBB]
#spats [*,*,B,*]
[PQBB]
##[PQBB]
#spats [*,Q,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
#spats [P,*,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
#spats [*,*,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
###!
###! Matchings per PQBBZ
#spats [P,Q,B,B,Z]
[]
##[]
#spats [*,Q,B,B,Z]
[]
##[]
#spats [P,*,B,B,Z]
[]
##[]
#spats [P,Q,*,B,Z]
[]
##[]
#spats [P,Q,B,*,Z]
[]
##[]
#spats [P,Q,B,B,*]
[]
##[]
#spats [*,*,B,B,Z]
[]
##[]
#spats [*,Q,*,B,Z]
[]
##[]
#spats [*,Q,B,*,Z]
[]
##[]
#spats [*,Q,B,B,*]
[]
##[]
#spats [P,*,*,B,Z]
[]
##[]
#spats [P,*,B,*,Z]
[]
##[]
#spats [P,*,B,B,*]
[]
##[]
#spats [P,Q,*,*,Z]
[]
##[]
#spats [P,Q,*,B,*]
[]
##[]
#spats [P,Q,B,*,*]
[]
##[]
#spats [*,*,*,B,Z]
[]
##[]
#spats [*,*,B,*,Z]
[]
##[]
#spats [*,*,B,B,*]
[]
##[]
#spats [*,Q,*,*,Z]
[]
##[]
#spats [*,Q,*,B,*]
[]
##[]
#spats [*,Q,B,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,B,*]
[]
##[]
#spats [P,*,B,*,*]
[]
##[]
#spats [P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,B,*]
[]
##[]
#spats [*,*,B,*,*]
[]
##[]
#spats [*,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PC
#spats [P,C]
[PC]
##[PC]
#spats [*,C]
[PC]
##[PC]
#spats [P,*]
[PC]
##[PC]
#spats [*,*]
[PC]
##[PC]
###!
###! Matchings per PCZ
#spats [P,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.4 Subcas 5D
###!           lp123 = 1  lp12 = lp123 + 1  l1 > lp12 + 1  l2 > lp12 + 1 l3 > lp123 + 1
###!           w1 = PQAA  w2 = PQBB  w3 = PCC
###!-------------------------------------------------------------------
###!
#init d5D dicc
###!
#ins PQAA
#ins PQBB
#ins PCC
###!
###! Prefixos per PQAA
#pre P

##
#pre PQA

##
#pre PQAA
PQAA
##PQAA
#pre ZQAA

##
#pre PQZA

##
#pre PQAZ

##
#pre ZQAAY

##
#pre PQAZY

##
#pre PQAAZ
PQAA
##PQAA
#pre ZQAAYY

##
#pre PQAZYY

##
#pre PQAAZY
PQAA
##PQAA
###!
###! Prefixos per PQBB
#pre P

##
#pre PQB

##
#pre PQBB
PQBB
##PQBB
#pre ZQBB

##
#pre PQZB

##
#pre PQBZ

##
#pre ZQBBY

##
#pre PQBZY

##
#pre PQBBZ
PQBB
##PQBB
#pre ZQBBYY

##
#pre PQBZYY

##
#pre PQBBZY
PQBB
##PQBB
###!
###! Prefixos per PCC
#pre P

##
#pre PC

##
#pre PCC
PCC
##PCC
#pre ZCC

##
#pre PZC

##
#pre PCZ

##
#pre ZCCY

##
#pre PCZY

##
#pre PCCZ
PCC
##PCC
#pre ZCCYY

##
#pre PCZYY

##
#pre PCCZY
PCC
##PCC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PQA
#spats [P,Q,A]
[]
##[]
#spats [*,Q,A]
[]
##[]
#spats [P,*,A]
[]
##[]
#spats [P,Q,*]
[]
##[]
#spats [*,*,A]
[]
##[]
#spats [*,Q,*]
[]
##[]
#spats [P,*,*]
[PCC]
##[PCC]
#spats [*,*,*]
[PCC]
##[PCC]
###!
###! Matchings per PQAA
#spats [P,Q,A,A]
[PQAA]
##[PQAA]
#spats [*,Q,A,A]
[PQAA]
##[PQAA]
#spats [P,*,A,A]
[PQAA]
##[PQAA]
#spats [P,Q,*,A]
[PQAA]
##[PQAA]
#spats [P,Q,A,*]
[PQAA]
##[PQAA]
#spats [*,*,A,A]
[PQAA]
##[PQAA]
#spats [*,Q,*,A]
[PQAA]
##[PQAA]
#spats [*,Q,A,*]
[PQAA]
##[PQAA]
#spats [P,*,*,A]
[PQAA]
##[PQAA]
#spats [P,*,A,*]
[PQAA]
##[PQAA]
#spats [P,Q,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
#spats [*,*,*,A]
[PQAA]
##[PQAA]
#spats [*,*,A,*]
[PQAA]
##[PQAA]
#spats [*,Q,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
#spats [P,*,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
#spats [*,*,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
###!
###! Matchings per PQAAZ
#spats [P,Q,A,A,Z]
[]
##[]
#spats [*,Q,A,A,Z]
[]
##[]
#spats [P,*,A,A,Z]
[]
##[]
#spats [P,Q,*,A,Z]
[]
##[]
#spats [P,Q,A,*,Z]
[]
##[]
#spats [P,Q,A,A,*]
[]
##[]
#spats [*,*,A,A,Z]
[]
##[]
#spats [*,Q,*,A,Z]
[]
##[]
#spats [*,Q,A,*,Z]
[]
##[]
#spats [*,Q,A,A,*]
[]
##[]
#spats [P,*,*,A,Z]
[]
##[]
#spats [P,*,A,*,Z]
[]
##[]
#spats [P,*,A,A,*]
[]
##[]
#spats [P,Q,*,*,Z]
[]
##[]
#spats [P,Q,*,A,*]
[]
##[]
#spats [P,Q,A,*,*]
[]
##[]
#spats [*,*,*,A,Z]
[]
##[]
#spats [*,*,A,*,Z]
[]
##[]
#spats [*,*,A,A,*]
[]
##[]
#spats [*,Q,*,*,Z]
[]
##[]
#spats [*,Q,*,A,*]
[]
##[]
#spats [*,Q,A,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,A,*]
[]
##[]
#spats [P,*,A,*,*]
[]
##[]
#spats [P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,A,*]
[]
##[]
#spats [*,*,A,*,*]
[]
##[]
#spats [*,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PQB
#spats [P,Q,B]
[]
##[]
#spats [*,Q,B]
[]
##[]
#spats [P,*,B]
[]
##[]
#spats [P,Q,*]
[]
##[]
#spats [*,*,B]
[]
##[]
#spats [*,Q,*]
[]
##[]
#spats [P,*,*]
[PCC]
##[PCC]
#spats [*,*,*]
[PCC]
##[PCC]
###!
###! Matchings per PQBB
#spats [P,Q,B,B]
[PQBB]
##[PQBB]
#spats [*,Q,B,B]
[PQBB]
##[PQBB]
#spats [P,*,B,B]
[PQBB]
##[PQBB]
#spats [P,Q,*,B]
[PQBB]
##[PQBB]
#spats [P,Q,B,*]
[PQBB]
##[PQBB]
#spats [*,*,B,B]
[PQBB]
##[PQBB]
#spats [*,Q,*,B]
[PQBB]
##[PQBB]
#spats [*,Q,B,*]
[PQBB]
##[PQBB]
#spats [P,*,*,B]
[PQBB]
##[PQBB]
#spats [P,*,B,*]
[PQBB]
##[PQBB]
#spats [P,Q,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
#spats [*,*,*,B]
[PQBB]
##[PQBB]
#spats [*,*,B,*]
[PQBB]
##[PQBB]
#spats [*,Q,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
#spats [P,*,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
#spats [*,*,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
###!
###! Matchings per PQBBZ
#spats [P,Q,B,B,Z]
[]
##[]
#spats [*,Q,B,B,Z]
[]
##[]
#spats [P,*,B,B,Z]
[]
##[]
#spats [P,Q,*,B,Z]
[]
##[]
#spats [P,Q,B,*,Z]
[]
##[]
#spats [P,Q,B,B,*]
[]
##[]
#spats [*,*,B,B,Z]
[]
##[]
#spats [*,Q,*,B,Z]
[]
##[]
#spats [*,Q,B,*,Z]
[]
##[]
#spats [*,Q,B,B,*]
[]
##[]
#spats [P,*,*,B,Z]
[]
##[]
#spats [P,*,B,*,Z]
[]
##[]
#spats [P,*,B,B,*]
[]
##[]
#spats [P,Q,*,*,Z]
[]
##[]
#spats [P,Q,*,B,*]
[]
##[]
#spats [P,Q,B,*,*]
[]
##[]
#spats [*,*,*,B,Z]
[]
##[]
#spats [*,*,B,*,Z]
[]
##[]
#spats [*,*,B,B,*]
[]
##[]
#spats [*,Q,*,*,Z]
[]
##[]
#spats [*,Q,*,B,*]
[]
##[]
#spats [*,Q,B,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,B,*]
[]
##[]
#spats [P,*,B,*,*]
[]
##[]
#spats [P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,B,*]
[]
##[]
#spats [*,*,B,*,*]
[]
##[]
#spats [*,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PC
#spats [P,C]
[]
##[]
#spats [*,C]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PCC
#spats [P,C,C]
[PCC]
##[PCC]
#spats [*,C,C]
[PCC]
##[PCC]
#spats [P,*,C]
[PCC]
##[PCC]
#spats [P,C,*]
[PCC]
##[PCC]
#spats [*,*,C]
[PCC]
##[PCC]
#spats [*,C,*]
[PCC]
##[PCC]
#spats [P,*,*]
[PCC]
##[PCC]
#spats [*,*,*]
[PCC]
##[PCC]
###!
###! Matchings per PCCZ
#spats [P,C,C,Z]
[]
##[]
#spats [*,C,C,Z]
[]
##[]
#spats [P,*,C,Z]
[]
##[]
#spats [P,C,*,Z]
[]
##[]
#spats [P,C,C,*]
[]
##[]
#spats [*,*,C,Z]
[]
##[]
#spats [*,C,*,Z]
[]
##[]
#spats [*,C,C,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,C,*]
[]
##[]
#spats [P,C,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
[]
##[]
#spats [*,C,*,*]
[]
##[]
#spats [P,*,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
#spats [*,*,*,*]
[PQAA, PQBB]
##[PQAA, PQBB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.5 Subcas 5E
###!           lp123 = 1  lp12 > lp123 + 1  l1 = lp12 + 1  l2 = lp12 + 1 l3 = lp123 + 1
###!           w1 = PQQA  w2 = PQQB  w3 = PC
###!-------------------------------------------------------------------
###!
#init d5E dicc
###!
#ins PQQA
#ins PQQB
#ins PC
###!
###! Prefixos per PQQA
#pre P

##
#pre PQQ

##
#pre PQQA
PQQA
##PQQA
#pre ZQQA

##
#pre PQZA

##
#pre PQQZ

##
#pre ZQQAY

##
#pre PQQZY

##
#pre PQQAZ
PQQA
##PQQA
#pre ZQQAYY

##
#pre PQQZYY

##
#pre PQQAZY
PQQA
##PQQA
###!
###! Prefixos per PQQB
#pre P

##
#pre PQQ

##
#pre PQQB
PQQB
##PQQB
#pre ZQQB

##
#pre PQZB

##
#pre PQQZ

##
#pre ZQQBY

##
#pre PQQZY

##
#pre PQQBZ
PQQB
##PQQB
#pre ZQQBYY

##
#pre PQQZYY

##
#pre PQQBZY
PQQB
##PQQB
###!
###! Prefixos per PC
#pre P

##
#pre PC
PC
##PC
#pre ZC

##
#pre PZ

##
#pre ZCY

##
#pre PZY

##
#pre PCZ
PC
##PC
#pre ZCYY

##
#pre PZYY

##
#pre PCZY
PC
##PC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per PQQ
#spats [P,Q,Q]
[]
##[]
#spats [*,Q,Q]
[]
##[]
#spats [P,*,Q]
[]
##[]
#spats [P,Q,*]
[]
##[]
#spats [*,*,Q]
[]
##[]
#spats [*,Q,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PQQA
#spats [P,Q,Q,A]
[PQQA]
##[PQQA]
#spats [*,Q,Q,A]
[PQQA]
##[PQQA]
#spats [P,*,Q,A]
[PQQA]
##[PQQA]
#spats [P,Q,*,A]
[PQQA]
##[PQQA]
#spats [P,Q,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,*,Q,A]
[PQQA]
##[PQQA]
#spats [*,Q,*,A]
[PQQA]
##[PQQA]
#spats [*,Q,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [P,*,*,A]
[PQQA]
##[PQQA]
#spats [P,*,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [P,Q,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,*,*,A]
[PQQA]
##[PQQA]
#spats [*,*,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,Q,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [P,*,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,*,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
###!
###! Matchings per PQQAZ
#spats [P,Q,Q,A,Z]
[]
##[]
#spats [*,Q,Q,A,Z]
[]
##[]
#spats [P,*,Q,A,Z]
[]
##[]
#spats [P,Q,*,A,Z]
[]
##[]
#spats [P,Q,Q,*,Z]
[]
##[]
#spats [P,Q,Q,A,*]
[]
##[]
#spats [*,*,Q,A,Z]
[]
##[]
#spats [*,Q,*,A,Z]
[]
##[]
#spats [*,Q,Q,*,Z]
[]
##[]
#spats [*,Q,Q,A,*]
[]
##[]
#spats [P,*,*,A,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,A,*]
[]
##[]
#spats [P,Q,*,*,Z]
[]
##[]
#spats [P,Q,*,A,*]
[]
##[]
#spats [P,Q,Q,*,*]
[]
##[]
#spats [*,*,*,A,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,A,*]
[]
##[]
#spats [*,Q,*,*,Z]
[]
##[]
#spats [*,Q,*,A,*]
[]
##[]
#spats [*,Q,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,A,*]
[]
##[]
#spats [P,*,Q,*,*]
[]
##[]
#spats [P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,A,*]
[]
##[]
#spats [*,*,Q,*,*]
[]
##[]
#spats [*,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PQQ
#spats [P,Q,Q]
[]
##[]
#spats [*,Q,Q]
[]
##[]
#spats [P,*,Q]
[]
##[]
#spats [P,Q,*]
[]
##[]
#spats [*,*,Q]
[]
##[]
#spats [*,Q,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PQQB
#spats [P,Q,Q,B]
[PQQB]
##[PQQB]
#spats [*,Q,Q,B]
[PQQB]
##[PQQB]
#spats [P,*,Q,B]
[PQQB]
##[PQQB]
#spats [P,Q,*,B]
[PQQB]
##[PQQB]
#spats [P,Q,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,*,Q,B]
[PQQB]
##[PQQB]
#spats [*,Q,*,B]
[PQQB]
##[PQQB]
#spats [*,Q,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [P,*,*,B]
[PQQB]
##[PQQB]
#spats [P,*,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [P,Q,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,*,*,B]
[PQQB]
##[PQQB]
#spats [*,*,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,Q,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [P,*,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,*,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
###!
###! Matchings per PQQBZ
#spats [P,Q,Q,B,Z]
[]
##[]
#spats [*,Q,Q,B,Z]
[]
##[]
#spats [P,*,Q,B,Z]
[]
##[]
#spats [P,Q,*,B,Z]
[]
##[]
#spats [P,Q,Q,*,Z]
[]
##[]
#spats [P,Q,Q,B,*]
[]
##[]
#spats [*,*,Q,B,Z]
[]
##[]
#spats [*,Q,*,B,Z]
[]
##[]
#spats [*,Q,Q,*,Z]
[]
##[]
#spats [*,Q,Q,B,*]
[]
##[]
#spats [P,*,*,B,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,B,*]
[]
##[]
#spats [P,Q,*,*,Z]
[]
##[]
#spats [P,Q,*,B,*]
[]
##[]
#spats [P,Q,Q,*,*]
[]
##[]
#spats [*,*,*,B,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,B,*]
[]
##[]
#spats [*,Q,*,*,Z]
[]
##[]
#spats [*,Q,*,B,*]
[]
##[]
#spats [*,Q,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,B,*]
[]
##[]
#spats [P,*,Q,*,*]
[]
##[]
#spats [P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,B,*]
[]
##[]
#spats [*,*,Q,*,*]
[]
##[]
#spats [*,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PC
#spats [P,C]
[PC]
##[PC]
#spats [*,C]
[PC]
##[PC]
#spats [P,*]
[PC]
##[PC]
#spats [*,*]
[PC]
##[PC]
###!
###! Matchings per PCZ
#spats [P,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.6 Subcas 5F
###!           lp123 = 1  lp12 > lp123 + 1  l1 = lp12 + 1  l2 = lp12 + 1 l3 > lp123 + 1
###!           w1 = PQQA  w2 = PQQB  w3 = PCC
###!-------------------------------------------------------------------
###!
#init d5F dicc
###!
#ins PQQA
#ins PQQB
#ins PCC
###!
###! Prefixos per PQQA
#pre P

##
#pre PQQ

##
#pre PQQA
PQQA
##PQQA
#pre ZQQA

##
#pre PQZA

##
#pre PQQZ

##
#pre ZQQAY

##
#pre PQQZY

##
#pre PQQAZ
PQQA
##PQQA
#pre ZQQAYY

##
#pre PQQZYY

##
#pre PQQAZY
PQQA
##PQQA
###!
###! Prefixos per PQQB
#pre P

##
#pre PQQ

##
#pre PQQB
PQQB
##PQQB
#pre ZQQB

##
#pre PQZB

##
#pre PQQZ

##
#pre ZQQBY

##
#pre PQQZY

##
#pre PQQBZ
PQQB
##PQQB
#pre ZQQBYY

##
#pre PQQZYY

##
#pre PQQBZY
PQQB
##PQQB
###!
###! Prefixos per PCC
#pre P

##
#pre PC

##
#pre PCC
PCC
##PCC
#pre ZCC

##
#pre PZC

##
#pre PCZ

##
#pre ZCCY

##
#pre PCZY

##
#pre PCCZ
PCC
##PCC
#pre ZCCYY

##
#pre PCZYY

##
#pre PCCZY
PCC
##PCC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PQQ
#spats [P,Q,Q]
[]
##[]
#spats [*,Q,Q]
[]
##[]
#spats [P,*,Q]
[]
##[]
#spats [P,Q,*]
[]
##[]
#spats [*,*,Q]
[]
##[]
#spats [*,Q,*]
[]
##[]
#spats [P,*,*]
[PCC]
##[PCC]
#spats [*,*,*]
[PCC]
##[PCC]
###!
###! Matchings per PQQA
#spats [P,Q,Q,A]
[PQQA]
##[PQQA]
#spats [*,Q,Q,A]
[PQQA]
##[PQQA]
#spats [P,*,Q,A]
[PQQA]
##[PQQA]
#spats [P,Q,*,A]
[PQQA]
##[PQQA]
#spats [P,Q,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,*,Q,A]
[PQQA]
##[PQQA]
#spats [*,Q,*,A]
[PQQA]
##[PQQA]
#spats [*,Q,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [P,*,*,A]
[PQQA]
##[PQQA]
#spats [P,*,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [P,Q,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,*,*,A]
[PQQA]
##[PQQA]
#spats [*,*,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,Q,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [P,*,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,*,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
###!
###! Matchings per PQQAZ
#spats [P,Q,Q,A,Z]
[]
##[]
#spats [*,Q,Q,A,Z]
[]
##[]
#spats [P,*,Q,A,Z]
[]
##[]
#spats [P,Q,*,A,Z]
[]
##[]
#spats [P,Q,Q,*,Z]
[]
##[]
#spats [P,Q,Q,A,*]
[]
##[]
#spats [*,*,Q,A,Z]
[]
##[]
#spats [*,Q,*,A,Z]
[]
##[]
#spats [*,Q,Q,*,Z]
[]
##[]
#spats [*,Q,Q,A,*]
[]
##[]
#spats [P,*,*,A,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,A,*]
[]
##[]
#spats [P,Q,*,*,Z]
[]
##[]
#spats [P,Q,*,A,*]
[]
##[]
#spats [P,Q,Q,*,*]
[]
##[]
#spats [*,*,*,A,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,A,*]
[]
##[]
#spats [*,Q,*,*,Z]
[]
##[]
#spats [*,Q,*,A,*]
[]
##[]
#spats [*,Q,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,A,*]
[]
##[]
#spats [P,*,Q,*,*]
[]
##[]
#spats [P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,A,*]
[]
##[]
#spats [*,*,Q,*,*]
[]
##[]
#spats [*,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PQQ
#spats [P,Q,Q]
[]
##[]
#spats [*,Q,Q]
[]
##[]
#spats [P,*,Q]
[]
##[]
#spats [P,Q,*]
[]
##[]
#spats [*,*,Q]
[]
##[]
#spats [*,Q,*]
[]
##[]
#spats [P,*,*]
[PCC]
##[PCC]
#spats [*,*,*]
[PCC]
##[PCC]
###!
###! Matchings per PQQB
#spats [P,Q,Q,B]
[PQQB]
##[PQQB]
#spats [*,Q,Q,B]
[PQQB]
##[PQQB]
#spats [P,*,Q,B]
[PQQB]
##[PQQB]
#spats [P,Q,*,B]
[PQQB]
##[PQQB]
#spats [P,Q,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,*,Q,B]
[PQQB]
##[PQQB]
#spats [*,Q,*,B]
[PQQB]
##[PQQB]
#spats [*,Q,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [P,*,*,B]
[PQQB]
##[PQQB]
#spats [P,*,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [P,Q,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,*,*,B]
[PQQB]
##[PQQB]
#spats [*,*,Q,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,Q,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [P,*,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,*,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
###!
###! Matchings per PQQBZ
#spats [P,Q,Q,B,Z]
[]
##[]
#spats [*,Q,Q,B,Z]
[]
##[]
#spats [P,*,Q,B,Z]
[]
##[]
#spats [P,Q,*,B,Z]
[]
##[]
#spats [P,Q,Q,*,Z]
[]
##[]
#spats [P,Q,Q,B,*]
[]
##[]
#spats [*,*,Q,B,Z]
[]
##[]
#spats [*,Q,*,B,Z]
[]
##[]
#spats [*,Q,Q,*,Z]
[]
##[]
#spats [*,Q,Q,B,*]
[]
##[]
#spats [P,*,*,B,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,B,*]
[]
##[]
#spats [P,Q,*,*,Z]
[]
##[]
#spats [P,Q,*,B,*]
[]
##[]
#spats [P,Q,Q,*,*]
[]
##[]
#spats [*,*,*,B,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,B,*]
[]
##[]
#spats [*,Q,*,*,Z]
[]
##[]
#spats [*,Q,*,B,*]
[]
##[]
#spats [*,Q,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,B,*]
[]
##[]
#spats [P,*,Q,*,*]
[]
##[]
#spats [P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,B,*]
[]
##[]
#spats [*,*,Q,*,*]
[]
##[]
#spats [*,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PC
#spats [P,C]
[]
##[]
#spats [*,C]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PCC
#spats [P,C,C]
[PCC]
##[PCC]
#spats [*,C,C]
[PCC]
##[PCC]
#spats [P,*,C]
[PCC]
##[PCC]
#spats [P,C,*]
[PCC]
##[PCC]
#spats [*,*,C]
[PCC]
##[PCC]
#spats [*,C,*]
[PCC]
##[PCC]
#spats [P,*,*]
[PCC]
##[PCC]
#spats [*,*,*]
[PCC]
##[PCC]
###!
###! Matchings per PCCZ
#spats [P,C,C,Z]
[]
##[]
#spats [*,C,C,Z]
[]
##[]
#spats [P,*,C,Z]
[]
##[]
#spats [P,C,*,Z]
[]
##[]
#spats [P,C,C,*]
[]
##[]
#spats [*,*,C,Z]
[]
##[]
#spats [*,C,*,Z]
[]
##[]
#spats [*,C,C,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,C,*]
[]
##[]
#spats [P,C,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
[]
##[]
#spats [*,C,*,*]
[]
##[]
#spats [P,*,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
#spats [*,*,*,*]
[PQQA, PQQB]
##[PQQA, PQQB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.7 Subcas 5G
###!           lp123 = 1  lp12 > lp123 + 1  l1 > lp12 + 1  l2 > lp12 + 1 l3 = lp123 + 1
###!           w1 = PQQAA  w2 = PQQBB  w3 = PC
###!-------------------------------------------------------------------
###!
#init d5G dicc
###!
#ins PQQAA
#ins PQQBB
#ins PC
###!
###! Prefixos per PQQAA
#pre P

##
#pre PQQA

##
#pre PQQAA
PQQAA
##PQQAA
#pre ZQQAA

##
#pre PQQZA

##
#pre PQQAZ

##
#pre ZQQAAY

##
#pre PQQAZY

##
#pre PQQAAZ
PQQAA
##PQQAA
#pre ZQQAAYY

##
#pre PQQAZYY

##
#pre PQQAAZY
PQQAA
##PQQAA
###!
###! Prefixos per PQQBB
#pre P

##
#pre PQQB

##
#pre PQQBB
PQQBB
##PQQBB
#pre ZQQBB

##
#pre PQQZB

##
#pre PQQBZ

##
#pre ZQQBBY

##
#pre PQQBZY

##
#pre PQQBBZ
PQQBB
##PQQBB
#pre ZQQBBYY

##
#pre PQQBZYY

##
#pre PQQBBZY
PQQBB
##PQQBB
###!
###! Prefixos per PC
#pre P

##
#pre PC
PC
##PC
#pre ZC

##
#pre PZ

##
#pre ZCY

##
#pre PZY

##
#pre PCZ
PC
##PC
#pre ZCYY

##
#pre PZYY

##
#pre PCZY
PC
##PC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matchings per PQQA
#spats [P,Q,Q,A]
[]
##[]
#spats [*,Q,Q,A]
[]
##[]
#spats [P,*,Q,A]
[]
##[]
#spats [P,Q,*,A]
[]
##[]
#spats [P,Q,Q,*]
[]
##[]
#spats [*,*,Q,A]
[]
##[]
#spats [*,Q,*,A]
[]
##[]
#spats [*,Q,Q,*]
[]
##[]
#spats [P,*,*,A]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,A]
[]
##[]
#spats [*,*,Q,*]
[]
##[]
#spats [*,Q,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PQQAA
#spats [P,Q,Q,A,A]
[PQQAA]
##[PQQAA]
#spats [*,Q,Q,A,A]
[PQQAA]
##[PQQAA]
#spats [P,*,Q,A,A]
[PQQAA]
##[PQQAA]
#spats [P,Q,*,A,A]
[PQQAA]
##[PQQAA]
#spats [P,Q,Q,*,A]
[PQQAA]
##[PQQAA]
#spats [P,Q,Q,A,*]
[PQQAA]
##[PQQAA]
#spats [*,*,Q,A,A]
[PQQAA]
##[PQQAA]
#spats [*,Q,*,A,A]
[PQQAA]
##[PQQAA]
#spats [*,Q,Q,*,A]
[PQQAA]
##[PQQAA]
#spats [*,Q,Q,A,*]
[PQQAA]
##[PQQAA]
#spats [P,*,*,A,A]
[PQQAA]
##[PQQAA]
#spats [P,*,Q,*,A]
[PQQAA]
##[PQQAA]
#spats [P,*,Q,A,*]
[PQQAA]
##[PQQAA]
#spats [P,Q,*,*,A]
[PQQAA]
##[PQQAA]
#spats [P,Q,*,A,*]
[PQQAA]
##[PQQAA]
#spats [P,Q,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,*,*,A,A]
[PQQAA]
##[PQQAA]
#spats [*,*,Q,*,A]
[PQQAA]
##[PQQAA]
#spats [*,*,Q,A,*]
[PQQAA]
##[PQQAA]
#spats [*,Q,*,*,A]
[PQQAA]
##[PQQAA]
#spats [*,Q,*,A,*]
[PQQAA]
##[PQQAA]
#spats [*,Q,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [P,*,*,*,A]
[PQQAA]
##[PQQAA]
#spats [P,*,*,A,*]
[PQQAA]
##[PQQAA]
#spats [P,*,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [P,Q,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,*,*,*,A]
[PQQAA]
##[PQQAA]
#spats [*,*,*,A,*]
[PQQAA]
##[PQQAA]
#spats [*,*,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,Q,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [P,*,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,*,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
###!
###! Matchings per PQQAAZ
#spats [P,Q,Q,A,A,Z]
[]
##[]
#spats [*,Q,Q,A,A,Z]
[]
##[]
#spats [P,*,Q,A,A,Z]
[]
##[]
#spats [P,Q,*,A,A,Z]
[]
##[]
#spats [P,Q,Q,*,A,Z]
[]
##[]
#spats [P,Q,Q,A,*,Z]
[]
##[]
#spats [P,Q,Q,A,A,*]
[]
##[]
#spats [*,*,Q,A,A,Z]
[]
##[]
#spats [*,Q,*,A,A,Z]
[]
##[]
#spats [*,Q,Q,*,A,Z]
[]
##[]
#spats [*,Q,Q,A,*,Z]
[]
##[]
#spats [*,Q,Q,A,A,*]
[]
##[]
#spats [P,*,*,A,A,Z]
[]
##[]
#spats [P,*,Q,*,A,Z]
[]
##[]
#spats [P,*,Q,A,*,Z]
[]
##[]
#spats [P,*,Q,A,A,*]
[]
##[]
#spats [P,Q,*,*,A,Z]
[]
##[]
#spats [P,Q,*,A,*,Z]
[]
##[]
#spats [P,Q,*,A,A,*]
[]
##[]
#spats [P,Q,Q,*,*,Z]
[]
##[]
#spats [P,Q,Q,*,A,*]
[]
##[]
#spats [P,Q,Q,A,*,*]
[]
##[]
#spats [*,*,*,A,A,Z]
[]
##[]
#spats [*,*,Q,*,A,Z]
[]
##[]
#spats [*,*,Q,A,*,Z]
[]
##[]
#spats [*,*,Q,A,A,*]
[]
##[]
#spats [*,Q,*,*,A,Z]
[]
##[]
#spats [*,Q,*,A,*,Z]
[]
##[]
#spats [*,Q,*,A,A,*]
[]
##[]
#spats [*,Q,Q,*,*,Z]
[]
##[]
#spats [*,Q,Q,*,A,*]
[]
##[]
#spats [*,Q,Q,A,*,*]
[]
##[]
#spats [P,*,*,*,A,Z]
[]
##[]
#spats [P,*,*,A,*,Z]
[]
##[]
#spats [P,*,*,A,A,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,A,*]
[]
##[]
#spats [P,*,Q,A,*,*]
[]
##[]
#spats [P,Q,*,*,*,Z]
[]
##[]
#spats [P,Q,*,*,A,*]
[]
##[]
#spats [P,Q,*,A,*,*]
[]
##[]
#spats [P,Q,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,A,Z]
[]
##[]
#spats [*,*,*,A,*,Z]
[]
##[]
#spats [*,*,*,A,A,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,A,*]
[]
##[]
#spats [*,*,Q,A,*,*]
[]
##[]
#spats [*,Q,*,*,*,Z]
[]
##[]
#spats [*,Q,*,*,A,*]
[]
##[]
#spats [*,Q,*,A,*,*]
[]
##[]
#spats [*,Q,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,A,*]
[]
##[]
#spats [P,*,*,A,*,*]
[]
##[]
#spats [P,*,Q,*,*,*]
[]
##[]
#spats [P,Q,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,A,*]
[]
##[]
#spats [*,*,*,A,*,*]
[]
##[]
#spats [*,*,Q,*,*,*]
[]
##[]
#spats [*,Q,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*]
[]
##[]
###!
###! Matchings per PQQB
#spats [P,Q,Q,B]
[]
##[]
#spats [*,Q,Q,B]
[]
##[]
#spats [P,*,Q,B]
[]
##[]
#spats [P,Q,*,B]
[]
##[]
#spats [P,Q,Q,*]
[]
##[]
#spats [*,*,Q,B]
[]
##[]
#spats [*,Q,*,B]
[]
##[]
#spats [*,Q,Q,*]
[]
##[]
#spats [P,*,*,B]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,B]
[]
##[]
#spats [*,*,Q,*]
[]
##[]
#spats [*,Q,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PQQBB
#spats [P,Q,Q,B,B]
[PQQBB]
##[PQQBB]
#spats [*,Q,Q,B,B]
[PQQBB]
##[PQQBB]
#spats [P,*,Q,B,B]
[PQQBB]
##[PQQBB]
#spats [P,Q,*,B,B]
[PQQBB]
##[PQQBB]
#spats [P,Q,Q,*,B]
[PQQBB]
##[PQQBB]
#spats [P,Q,Q,B,*]
[PQQBB]
##[PQQBB]
#spats [*,*,Q,B,B]
[PQQBB]
##[PQQBB]
#spats [*,Q,*,B,B]
[PQQBB]
##[PQQBB]
#spats [*,Q,Q,*,B]
[PQQBB]
##[PQQBB]
#spats [*,Q,Q,B,*]
[PQQBB]
##[PQQBB]
#spats [P,*,*,B,B]
[PQQBB]
##[PQQBB]
#spats [P,*,Q,*,B]
[PQQBB]
##[PQQBB]
#spats [P,*,Q,B,*]
[PQQBB]
##[PQQBB]
#spats [P,Q,*,*,B]
[PQQBB]
##[PQQBB]
#spats [P,Q,*,B,*]
[PQQBB]
##[PQQBB]
#spats [P,Q,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,*,*,B,B]
[PQQBB]
##[PQQBB]
#spats [*,*,Q,*,B]
[PQQBB]
##[PQQBB]
#spats [*,*,Q,B,*]
[PQQBB]
##[PQQBB]
#spats [*,Q,*,*,B]
[PQQBB]
##[PQQBB]
#spats [*,Q,*,B,*]
[PQQBB]
##[PQQBB]
#spats [*,Q,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [P,*,*,*,B]
[PQQBB]
##[PQQBB]
#spats [P,*,*,B,*]
[PQQBB]
##[PQQBB]
#spats [P,*,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [P,Q,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,*,*,*,B]
[PQQBB]
##[PQQBB]
#spats [*,*,*,B,*]
[PQQBB]
##[PQQBB]
#spats [*,*,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,Q,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [P,*,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,*,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
###!
###! Matchings per PQQBBZ
#spats [P,Q,Q,B,B,Z]
[]
##[]
#spats [*,Q,Q,B,B,Z]
[]
##[]
#spats [P,*,Q,B,B,Z]
[]
##[]
#spats [P,Q,*,B,B,Z]
[]
##[]
#spats [P,Q,Q,*,B,Z]
[]
##[]
#spats [P,Q,Q,B,*,Z]
[]
##[]
#spats [P,Q,Q,B,B,*]
[]
##[]
#spats [*,*,Q,B,B,Z]
[]
##[]
#spats [*,Q,*,B,B,Z]
[]
##[]
#spats [*,Q,Q,*,B,Z]
[]
##[]
#spats [*,Q,Q,B,*,Z]
[]
##[]
#spats [*,Q,Q,B,B,*]
[]
##[]
#spats [P,*,*,B,B,Z]
[]
##[]
#spats [P,*,Q,*,B,Z]
[]
##[]
#spats [P,*,Q,B,*,Z]
[]
##[]
#spats [P,*,Q,B,B,*]
[]
##[]
#spats [P,Q,*,*,B,Z]
[]
##[]
#spats [P,Q,*,B,*,Z]
[]
##[]
#spats [P,Q,*,B,B,*]
[]
##[]
#spats [P,Q,Q,*,*,Z]
[]
##[]
#spats [P,Q,Q,*,B,*]
[]
##[]
#spats [P,Q,Q,B,*,*]
[]
##[]
#spats [*,*,*,B,B,Z]
[]
##[]
#spats [*,*,Q,*,B,Z]
[]
##[]
#spats [*,*,Q,B,*,Z]
[]
##[]
#spats [*,*,Q,B,B,*]
[]
##[]
#spats [*,Q,*,*,B,Z]
[]
##[]
#spats [*,Q,*,B,*,Z]
[]
##[]
#spats [*,Q,*,B,B,*]
[]
##[]
#spats [*,Q,Q,*,*,Z]
[]
##[]
#spats [*,Q,Q,*,B,*]
[]
##[]
#spats [*,Q,Q,B,*,*]
[]
##[]
#spats [P,*,*,*,B,Z]
[]
##[]
#spats [P,*,*,B,*,Z]
[]
##[]
#spats [P,*,*,B,B,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,B,*]
[]
##[]
#spats [P,*,Q,B,*,*]
[]
##[]
#spats [P,Q,*,*,*,Z]
[]
##[]
#spats [P,Q,*,*,B,*]
[]
##[]
#spats [P,Q,*,B,*,*]
[]
##[]
#spats [P,Q,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,B,Z]
[]
##[]
#spats [*,*,*,B,*,Z]
[]
##[]
#spats [*,*,*,B,B,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,B,*]
[]
##[]
#spats [*,*,Q,B,*,*]
[]
##[]
#spats [*,Q,*,*,*,Z]
[]
##[]
#spats [*,Q,*,*,B,*]
[]
##[]
#spats [*,Q,*,B,*,*]
[]
##[]
#spats [*,Q,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,B,*]
[]
##[]
#spats [P,*,*,B,*,*]
[]
##[]
#spats [P,*,Q,*,*,*]
[]
##[]
#spats [P,Q,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,B,*]
[]
##[]
#spats [*,*,*,B,*,*]
[]
##[]
#spats [*,*,Q,*,*,*]
[]
##[]
#spats [*,Q,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*]
[]
##[]
###!
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PC
#spats [P,C]
[PC]
##[PC]
#spats [*,C]
[PC]
##[PC]
#spats [P,*]
[PC]
##[PC]
#spats [*,*]
[PC]
##[PC]
###!
###! Matchings per PCZ
#spats [P,C,Z]
[]
##[]
#spats [*,C,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,C,*]
[]
##[]
#spats [*,*,Z]
[]
##[]
#spats [*,C,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.8 Subcas 5H
###!           lp123 = 1  lp12 > lp123 + 1  l1 > lp12 + 1  l2 > lp12 + 1 l3 > lp123 + 1
###!           w1 = PQQAA  w2 = PQQBB  w3 = PCC
###!-------------------------------------------------------------------
###!
#init d5H dicc
###!
#ins PQQAA
#ins PQQBB
#ins PCC
###!
###! Prefixos per PQQAA
#pre P

##
#pre PQQA

##
#pre PQQAA
PQQAA
##PQQAA
#pre ZQQAA

##
#pre PQQZA

##
#pre PQQAZ

##
#pre ZQQAAY

##
#pre PQQAZY

##
#pre PQQAAZ
PQQAA
##PQQAA
#pre ZQQAAYY

##
#pre PQQAZYY

##
#pre PQQAAZY
PQQAA
##PQQAA
###!
###! Prefixos per PQQBB
#pre P

##
#pre PQQB

##
#pre PQQBB
PQQBB
##PQQBB
#pre ZQQBB

##
#pre PQQZB

##
#pre PQQBZ

##
#pre ZQQBBY

##
#pre PQQBZY

##
#pre PQQBBZ
PQQBB
##PQQBB
#pre ZQQBBYY

##
#pre PQQBZYY

##
#pre PQQBBZY
PQQBB
##PQQBB
###!
###! Prefixos per PCC
#pre P

##
#pre PC

##
#pre PCC
PCC
##PCC
#pre ZCC

##
#pre PZC

##
#pre PCZ

##
#pre ZCCY

##
#pre PCZY

##
#pre PCCZ
PCC
##PCC
#pre ZCCYY

##
#pre PCZYY

##
#pre PCCZY
PCC
##PCC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PQQA
#spats [P,Q,Q,A]
[]
##[]
#spats [*,Q,Q,A]
[]
##[]
#spats [P,*,Q,A]
[]
##[]
#spats [P,Q,*,A]
[]
##[]
#spats [P,Q,Q,*]
[]
##[]
#spats [*,*,Q,A]
[]
##[]
#spats [*,Q,*,A]
[]
##[]
#spats [*,Q,Q,*]
[]
##[]
#spats [P,*,*,A]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,A]
[]
##[]
#spats [*,*,Q,*]
[]
##[]
#spats [*,Q,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PQQAA
#spats [P,Q,Q,A,A]
[PQQAA]
##[PQQAA]
#spats [*,Q,Q,A,A]
[PQQAA]
##[PQQAA]
#spats [P,*,Q,A,A]
[PQQAA]
##[PQQAA]
#spats [P,Q,*,A,A]
[PQQAA]
##[PQQAA]
#spats [P,Q,Q,*,A]
[PQQAA]
##[PQQAA]
#spats [P,Q,Q,A,*]
[PQQAA]
##[PQQAA]
#spats [*,*,Q,A,A]
[PQQAA]
##[PQQAA]
#spats [*,Q,*,A,A]
[PQQAA]
##[PQQAA]
#spats [*,Q,Q,*,A]
[PQQAA]
##[PQQAA]
#spats [*,Q,Q,A,*]
[PQQAA]
##[PQQAA]
#spats [P,*,*,A,A]
[PQQAA]
##[PQQAA]
#spats [P,*,Q,*,A]
[PQQAA]
##[PQQAA]
#spats [P,*,Q,A,*]
[PQQAA]
##[PQQAA]
#spats [P,Q,*,*,A]
[PQQAA]
##[PQQAA]
#spats [P,Q,*,A,*]
[PQQAA]
##[PQQAA]
#spats [P,Q,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,*,*,A,A]
[PQQAA]
##[PQQAA]
#spats [*,*,Q,*,A]
[PQQAA]
##[PQQAA]
#spats [*,*,Q,A,*]
[PQQAA]
##[PQQAA]
#spats [*,Q,*,*,A]
[PQQAA]
##[PQQAA]
#spats [*,Q,*,A,*]
[PQQAA]
##[PQQAA]
#spats [*,Q,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [P,*,*,*,A]
[PQQAA]
##[PQQAA]
#spats [P,*,*,A,*]
[PQQAA]
##[PQQAA]
#spats [P,*,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [P,Q,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,*,*,*,A]
[PQQAA]
##[PQQAA]
#spats [*,*,*,A,*]
[PQQAA]
##[PQQAA]
#spats [*,*,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,Q,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [P,*,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,*,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
###!
###! Matchings per PQQAAZ
#spats [P,Q,Q,A,A,Z]
[]
##[]
#spats [*,Q,Q,A,A,Z]
[]
##[]
#spats [P,*,Q,A,A,Z]
[]
##[]
#spats [P,Q,*,A,A,Z]
[]
##[]
#spats [P,Q,Q,*,A,Z]
[]
##[]
#spats [P,Q,Q,A,*,Z]
[]
##[]
#spats [P,Q,Q,A,A,*]
[]
##[]
#spats [*,*,Q,A,A,Z]
[]
##[]
#spats [*,Q,*,A,A,Z]
[]
##[]
#spats [*,Q,Q,*,A,Z]
[]
##[]
#spats [*,Q,Q,A,*,Z]
[]
##[]
#spats [*,Q,Q,A,A,*]
[]
##[]
#spats [P,*,*,A,A,Z]
[]
##[]
#spats [P,*,Q,*,A,Z]
[]
##[]
#spats [P,*,Q,A,*,Z]
[]
##[]
#spats [P,*,Q,A,A,*]
[]
##[]
#spats [P,Q,*,*,A,Z]
[]
##[]
#spats [P,Q,*,A,*,Z]
[]
##[]
#spats [P,Q,*,A,A,*]
[]
##[]
#spats [P,Q,Q,*,*,Z]
[]
##[]
#spats [P,Q,Q,*,A,*]
[]
##[]
#spats [P,Q,Q,A,*,*]
[]
##[]
#spats [*,*,*,A,A,Z]
[]
##[]
#spats [*,*,Q,*,A,Z]
[]
##[]
#spats [*,*,Q,A,*,Z]
[]
##[]
#spats [*,*,Q,A,A,*]
[]
##[]
#spats [*,Q,*,*,A,Z]
[]
##[]
#spats [*,Q,*,A,*,Z]
[]
##[]
#spats [*,Q,*,A,A,*]
[]
##[]
#spats [*,Q,Q,*,*,Z]
[]
##[]
#spats [*,Q,Q,*,A,*]
[]
##[]
#spats [*,Q,Q,A,*,*]
[]
##[]
#spats [P,*,*,*,A,Z]
[]
##[]
#spats [P,*,*,A,*,Z]
[]
##[]
#spats [P,*,*,A,A,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,A,*]
[]
##[]
#spats [P,*,Q,A,*,*]
[]
##[]
#spats [P,Q,*,*,*,Z]
[]
##[]
#spats [P,Q,*,*,A,*]
[]
##[]
#spats [P,Q,*,A,*,*]
[]
##[]
#spats [P,Q,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,A,Z]
[]
##[]
#spats [*,*,*,A,*,Z]
[]
##[]
#spats [*,*,*,A,A,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,A,*]
[]
##[]
#spats [*,*,Q,A,*,*]
[]
##[]
#spats [*,Q,*,*,*,Z]
[]
##[]
#spats [*,Q,*,*,A,*]
[]
##[]
#spats [*,Q,*,A,*,*]
[]
##[]
#spats [*,Q,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,A,*]
[]
##[]
#spats [P,*,*,A,*,*]
[]
##[]
#spats [P,*,Q,*,*,*]
[]
##[]
#spats [P,Q,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,A,*]
[]
##[]
#spats [*,*,*,A,*,*]
[]
##[]
#spats [*,*,Q,*,*,*]
[]
##[]
#spats [*,Q,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*]
[]
##[]
###!
###! Matchings per PQQB
#spats [P,Q,Q,B]
[]
##[]
#spats [*,Q,Q,B]
[]
##[]
#spats [P,*,Q,B]
[]
##[]
#spats [P,Q,*,B]
[]
##[]
#spats [P,Q,Q,*]
[]
##[]
#spats [*,*,Q,B]
[]
##[]
#spats [*,Q,*,B]
[]
##[]
#spats [*,Q,Q,*]
[]
##[]
#spats [P,*,*,B]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,B]
[]
##[]
#spats [*,*,Q,*]
[]
##[]
#spats [*,Q,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PQQBB
#spats [P,Q,Q,B,B]
[PQQBB]
##[PQQBB]
#spats [*,Q,Q,B,B]
[PQQBB]
##[PQQBB]
#spats [P,*,Q,B,B]
[PQQBB]
##[PQQBB]
#spats [P,Q,*,B,B]
[PQQBB]
##[PQQBB]
#spats [P,Q,Q,*,B]
[PQQBB]
##[PQQBB]
#spats [P,Q,Q,B,*]
[PQQBB]
##[PQQBB]
#spats [*,*,Q,B,B]
[PQQBB]
##[PQQBB]
#spats [*,Q,*,B,B]
[PQQBB]
##[PQQBB]
#spats [*,Q,Q,*,B]
[PQQBB]
##[PQQBB]
#spats [*,Q,Q,B,*]
[PQQBB]
##[PQQBB]
#spats [P,*,*,B,B]
[PQQBB]
##[PQQBB]
#spats [P,*,Q,*,B]
[PQQBB]
##[PQQBB]
#spats [P,*,Q,B,*]
[PQQBB]
##[PQQBB]
#spats [P,Q,*,*,B]
[PQQBB]
##[PQQBB]
#spats [P,Q,*,B,*]
[PQQBB]
##[PQQBB]
#spats [P,Q,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,*,*,B,B]
[PQQBB]
##[PQQBB]
#spats [*,*,Q,*,B]
[PQQBB]
##[PQQBB]
#spats [*,*,Q,B,*]
[PQQBB]
##[PQQBB]
#spats [*,Q,*,*,B]
[PQQBB]
##[PQQBB]
#spats [*,Q,*,B,*]
[PQQBB]
##[PQQBB]
#spats [*,Q,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [P,*,*,*,B]
[PQQBB]
##[PQQBB]
#spats [P,*,*,B,*]
[PQQBB]
##[PQQBB]
#spats [P,*,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [P,Q,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,*,*,*,B]
[PQQBB]
##[PQQBB]
#spats [*,*,*,B,*]
[PQQBB]
##[PQQBB]
#spats [*,*,Q,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,Q,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [P,*,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
#spats [*,*,*,*,*]
[PQQAA, PQQBB]
##[PQQAA, PQQBB]
###!
###! Matchings per PQQBBZ
#spats [P,Q,Q,B,B,Z]
[]
##[]
#spats [*,Q,Q,B,B,Z]
[]
##[]
#spats [P,*,Q,B,B,Z]
[]
##[]
#spats [P,Q,*,B,B,Z]
[]
##[]
#spats [P,Q,Q,*,B,Z]
[]
##[]
#spats [P,Q,Q,B,*,Z]
[]
##[]
#spats [P,Q,Q,B,B,*]
[]
##[]
#spats [*,*,Q,B,B,Z]
[]
##[]
#spats [*,Q,*,B,B,Z]
[]
##[]
#spats [*,Q,Q,*,B,Z]
[]
##[]
#spats [*,Q,Q,B,*,Z]
[]
##[]
#spats [*,Q,Q,B,B,*]
[]
##[]
#spats [P,*,*,B,B,Z]
[]
##[]
#spats [P,*,Q,*,B,Z]
[]
##[]
#spats [P,*,Q,B,*,Z]
[]
##[]
#spats [P,*,Q,B,B,*]
[]
##[]
#spats [P,Q,*,*,B,Z]
[]
##[]
#spats [P,Q,*,B,*,Z]
[]
##[]
#spats [P,Q,*,B,B,*]
[]
##[]
#spats [P,Q,Q,*,*,Z]
[]
##[]
#spats [P,Q,Q,*,B,*]
[]
##[]
#spats [P,Q,Q,B,*,*]
[]
##[]
#spats [*,*,*,B,B,Z]
[]
##[]
#spats [*,*,Q,*,B,Z]
[]
##[]
#spats [*,*,Q,B,*,Z]
[]
##[]
#spats [*,*,Q,B,B,*]
[]
##[]
#spats [*,Q,*,*,B,Z]
[]
##[]
#spats [*,Q,*,B,*,Z]
[]
##[]
#spats [*,Q,*,B,B,*]
[]
##[]
#spats [*,Q,Q,*,*,Z]
[]
##[]
#spats [*,Q,Q,*,B,*]
[]
##[]
#spats [*,Q,Q,B,*,*]
[]
##[]
#spats [P,*,*,*,B,Z]
[]
##[]
#spats [P,*,*,B,*,Z]
[]
##[]
#spats [P,*,*,B,B,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,B,*]
[]
##[]
#spats [P,*,Q,B,*,*]
[]
##[]
#spats [P,Q,*,*,*,Z]
[]
##[]
#spats [P,Q,*,*,B,*]
[]
##[]
#spats [P,Q,*,B,*,*]
[]
##[]
#spats [P,Q,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,B,Z]
[]
##[]
#spats [*,*,*,B,*,Z]
[]
##[]
#spats [*,*,*,B,B,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,B,*]
[]
##[]
#spats [*,*,Q,B,*,*]
[]
##[]
#spats [*,Q,*,*,*,Z]
[]
##[]
#spats [*,Q,*,*,B,*]
[]
##[]
#spats [*,Q,*,B,*,*]
[]
##[]
#spats [*,Q,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,B,*]
[]
##[]
#spats [P,*,*,B,*,*]
[]
##[]
#spats [P,*,Q,*,*,*]
[]
##[]
#spats [P,Q,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,B,*]
[]
##[]
#spats [*,*,*,B,*,*]
[]
##[]
#spats [*,*,Q,*,*,*]
[]
##[]
#spats [*,Q,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*]
[]
##[]
###!
###! Matchings per PC
#spats [P,C]
[]
##[]
#spats [*,C]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PCC
#spats [P,C,C]
[PCC]
##[PCC]
#spats [*,C,C]
[PCC]
##[PCC]
#spats [P,*,C]
[PCC]
##[PCC]
#spats [P,C,*]
[PCC]
##[PCC]
#spats [*,*,C]
[PCC]
##[PCC]
#spats [*,C,*]
[PCC]
##[PCC]
#spats [P,*,*]
[PCC]
##[PCC]
#spats [*,*,*]
[PCC]
##[PCC]
###!
###! Matchings per PCCZ
#spats [P,C,C,Z]
[]
##[]
#spats [*,C,C,Z]
[]
##[]
#spats [P,*,C,Z]
[]
##[]
#spats [P,C,*,Z]
[]
##[]
#spats [P,C,C,*]
[]
##[]
#spats [*,*,C,Z]
[]
##[]
#spats [*,C,*,Z]
[]
##[]
#spats [*,C,C,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,C,*]
[]
##[]
#spats [P,C,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
[]
##[]
#spats [*,C,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.9 Subcas 5I
###!           lp123 > 1  lp12 = lp123 + 1  l1 = lp12 + 1  l2 = lp12 + 1 l3 = lp123 + 1
###!           w1 = PPQA  w2 = PPQB  w3 = PPC
###!-------------------------------------------------------------------
###!
#init d5I dicc
###!
#ins PPQA
#ins PPQB
#ins PPC
###!
###! Prefixos per PPQA
#pre P

##
#pre PPQ

##
#pre PPQA
PPQA
##PPQA
#pre ZPQA

##
#pre PPZA

##
#pre PPQZ

##
#pre ZPQAY

##
#pre PPQZY

##
#pre PPQAZ
PPQA
##PPQA
#pre ZPQAYY

##
#pre PPQZYY

##
#pre PPQAZY
PPQA
##PPQA
###!
###! Prefixos per PPQB
#pre P

##
#pre PPQ

##
#pre PPQB
PPQB
##PPQB
#pre ZPQB

##
#pre PPZB

##
#pre PPQZ

##
#pre ZPQBY

##
#pre PPQZY

##
#pre PPQBZ
PPQB
##PPQB
#pre ZPQBYY

##
#pre PPQZYY

##
#pre PPQBZY
PPQB
##PPQB
###!
###! Prefixos per PPC
#pre P

##
#pre PP

##
#pre PPC
PPC
##PPC
#pre ZPC

##
#pre PZC

##
#pre PPZ

##
#pre ZPCY

##
#pre PPZY

##
#pre PPCZ
PPC
##PPC
#pre ZPCYY

##
#pre PPZYY

##
#pre PPCZY
PPC
##PPC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PPQ
#spats [P,P,Q]
[]
##[]
#spats [*,P,Q]
[]
##[]
#spats [P,*,Q]
[]
##[]
#spats [P,P,*]
[PPC]
##[PPC]
#spats [*,*,Q]
[]
##[]
#spats [*,P,*]
[PPC]
##[PPC]
#spats [P,*,*]
[PPC]
##[PPC]
#spats [*,*,*]
[PPC]
##[PPC]
###!
###! Matchings per PPQA
#spats [P,P,Q,A]
[PPQA]
##[PPQA]
#spats [*,P,Q,A]
[PPQA]
##[PPQA]
#spats [P,*,Q,A]
[PPQA]
##[PPQA]
#spats [P,P,*,A]
[PPQA]
##[PPQA]
#spats [P,P,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,*,Q,A]
[PPQA]
##[PPQA]
#spats [*,P,*,A]
[PPQA]
##[PPQA]
#spats [*,P,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [P,*,*,A]
[PPQA]
##[PPQA]
#spats [P,*,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [P,P,*,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,*,*,A]
[PPQA]
##[PPQA]
#spats [*,*,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,P,*,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [P,*,*,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,*,*,*]
[PPQA, PPQB]
##[PPQA, PPQB]
###!
###! Matchings per PPQAZ
#spats [P,P,Q,A,Z]
[]
##[]
#spats [*,P,Q,A,Z]
[]
##[]
#spats [P,*,Q,A,Z]
[]
##[]
#spats [P,P,*,A,Z]
[]
##[]
#spats [P,P,Q,*,Z]
[]
##[]
#spats [P,P,Q,A,*]
[]
##[]
#spats [*,*,Q,A,Z]
[]
##[]
#spats [*,P,*,A,Z]
[]
##[]
#spats [*,P,Q,*,Z]
[]
##[]
#spats [*,P,Q,A,*]
[]
##[]
#spats [P,*,*,A,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,A,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,A,*]
[]
##[]
#spats [P,P,Q,*,*]
[]
##[]
#spats [*,*,*,A,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,A,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,A,*]
[]
##[]
#spats [*,P,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,A,*]
[]
##[]
#spats [P,*,Q,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,A,*]
[]
##[]
#spats [*,*,Q,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPQ
#spats [P,P,Q]
[]
##[]
#spats [*,P,Q]
[]
##[]
#spats [P,*,Q]
[]
##[]
#spats [P,P,*]
[PPC]
##[PPC]
#spats [*,*,Q]
[]
##[]
#spats [*,P,*]
[PPC]
##[PPC]
#spats [P,*,*]
[PPC]
##[PPC]
#spats [*,*,*]
[PPC]
##[PPC]
###!
###! Matchings per PPQB
#spats [P,P,Q,B]
[PPQB]
##[PPQB]
#spats [*,P,Q,B]
[PPQB]
##[PPQB]
#spats [P,*,Q,B]
[PPQB]
##[PPQB]
#spats [P,P,*,B]
[PPQB]
##[PPQB]
#spats [P,P,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,*,Q,B]
[PPQB]
##[PPQB]
#spats [*,P,*,B]
[PPQB]
##[PPQB]
#spats [*,P,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [P,*,*,B]
[PPQB]
##[PPQB]
#spats [P,*,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [P,P,*,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,*,*,B]
[PPQB]
##[PPQB]
#spats [*,*,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,P,*,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [P,*,*,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,*,*,*]
[PPQA, PPQB]
##[PPQA, PPQB]
###!
###! Matchings per PPQBZ
#spats [P,P,Q,B,Z]
[]
##[]
#spats [*,P,Q,B,Z]
[]
##[]
#spats [P,*,Q,B,Z]
[]
##[]
#spats [P,P,*,B,Z]
[]
##[]
#spats [P,P,Q,*,Z]
[]
##[]
#spats [P,P,Q,B,*]
[]
##[]
#spats [*,*,Q,B,Z]
[]
##[]
#spats [*,P,*,B,Z]
[]
##[]
#spats [*,P,Q,*,Z]
[]
##[]
#spats [*,P,Q,B,*]
[]
##[]
#spats [P,*,*,B,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,B,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,B,*]
[]
##[]
#spats [P,P,Q,*,*]
[]
##[]
#spats [*,*,*,B,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,B,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,B,*]
[]
##[]
#spats [*,P,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,B,*]
[]
##[]
#spats [P,*,Q,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,B,*]
[]
##[]
#spats [*,*,Q,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[]
##[]
#spats [*,P]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PPC
#spats [P,P,C]
[PPC]
##[PPC]
#spats [*,P,C]
[PPC]
##[PPC]
#spats [P,*,C]
[PPC]
##[PPC]
#spats [P,P,*]
[PPC]
##[PPC]
#spats [*,*,C]
[PPC]
##[PPC]
#spats [*,P,*]
[PPC]
##[PPC]
#spats [P,*,*]
[PPC]
##[PPC]
#spats [*,*,*]
[PPC]
##[PPC]
###!
###! Matchings per PPCZ
#spats [P,P,C,Z]
[]
##[]
#spats [*,P,C,Z]
[]
##[]
#spats [P,*,C,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,C,*]
[]
##[]
#spats [*,*,C,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,C,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,C,*]
[]
##[]
#spats [P,P,*,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
[]
##[]
#spats [*,P,*,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [P,*,*,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,*,*,*]
[PPQA, PPQB]
##[PPQA, PPQB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.10 Subcas 5J
###!           lp123 > 1  lp12 = lp123 + 1  l1 = lp12 + 1  l2 = lp12 + 1 l3 > lp123 + 1
###!           w1 = PPQA  w2 = PPQB  w3 = PPCC
###!-------------------------------------------------------------------
###!
#init d5J dicc
###!
#ins PPQA
#ins PPQB
#ins PPCC
###!
###! Prefixos per PPQA
#pre P

##
#pre PPQ

##
#pre PPQA
PPQA
##PPQA
#pre ZPQA

##
#pre PPZA

##
#pre PPQZ

##
#pre ZPQAY

##
#pre PPQZY

##
#pre PPQAZ
PPQA
##PPQA
#pre ZPQAYY

##
#pre PPQZYY

##
#pre PPQAZY
PPQA
##PPQA
###!
###! Prefixos per PPQB
#pre P

##
#pre PPQ

##
#pre PPQB
PPQB
##PPQB
#pre ZPQB

##
#pre PPZB

##
#pre PPQZ

##
#pre ZPQBY

##
#pre PPQZY

##
#pre PPQBZ
PPQB
##PPQB
#pre ZPQBYY

##
#pre PPQZYY

##
#pre PPQBZY
PPQB
##PPQB
###!
###! Prefixos per PPCC
#pre P

##
#pre PPC

##
#pre PPCC
PPCC
##PPCC
#pre ZPCC

##
#pre PPZC

##
#pre PPCZ

##
#pre ZPCCY

##
#pre PPCZY

##
#pre PPCCZ
PPCC
##PPCC
#pre ZPCCYY

##
#pre PPCZYY

##
#pre PPCCZY
PPCC
##PPCC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PPQ
#spats [P,P,Q]
[]
##[]
#spats [*,P,Q]
[]
##[]
#spats [P,*,Q]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,Q]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPQA
#spats [P,P,Q,A]
[PPQA]
##[PPQA]
#spats [*,P,Q,A]
[PPQA]
##[PPQA]
#spats [P,*,Q,A]
[PPQA]
##[PPQA]
#spats [P,P,*,A]
[PPQA]
##[PPQA]
#spats [P,P,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,*,Q,A]
[PPQA]
##[PPQA]
#spats [*,P,*,A]
[PPQA]
##[PPQA]
#spats [*,P,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [P,*,*,A]
[PPQA]
##[PPQA]
#spats [P,*,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [P,P,*,*]
[PPCC, PPQA, PPQB]
##[PPCC, PPQA, PPQB]
#spats [*,*,*,A]
[PPQA]
##[PPQA]
#spats [*,*,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,P,*,*]
[PPCC, PPQA, PPQB]
##[PPCC, PPQA, PPQB]
#spats [P,*,*,*]
[PPCC, PPQA, PPQB]
##[PPCC, PPQA, PPQB]
#spats [*,*,*,*]
[PPCC, PPQA, PPQB]
##[PPCC, PPQA, PPQB]
###!
###! Matchings per PPQAZ
#spats [P,P,Q,A,Z]
[]
##[]
#spats [*,P,Q,A,Z]
[]
##[]
#spats [P,*,Q,A,Z]
[]
##[]
#spats [P,P,*,A,Z]
[]
##[]
#spats [P,P,Q,*,Z]
[]
##[]
#spats [P,P,Q,A,*]
[]
##[]
#spats [*,*,Q,A,Z]
[]
##[]
#spats [*,P,*,A,Z]
[]
##[]
#spats [*,P,Q,*,Z]
[]
##[]
#spats [*,P,Q,A,*]
[]
##[]
#spats [P,*,*,A,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,A,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,A,*]
[]
##[]
#spats [P,P,Q,*,*]
[]
##[]
#spats [*,*,*,A,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,A,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,A,*]
[]
##[]
#spats [*,P,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,A,*]
[]
##[]
#spats [P,*,Q,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,A,*]
[]
##[]
#spats [*,*,Q,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPQ
#spats [P,P,Q]
[]
##[]
#spats [*,P,Q]
[]
##[]
#spats [P,*,Q]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,Q]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPQB
#spats [P,P,Q,B]
[PPQB]
##[PPQB]
#spats [*,P,Q,B]
[PPQB]
##[PPQB]
#spats [P,*,Q,B]
[PPQB]
##[PPQB]
#spats [P,P,*,B]
[PPQB]
##[PPQB]
#spats [P,P,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,*,Q,B]
[PPQB]
##[PPQB]
#spats [*,P,*,B]
[PPQB]
##[PPQB]
#spats [*,P,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [P,*,*,B]
[PPQB]
##[PPQB]
#spats [P,*,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [P,P,*,*]
[PPCC, PPQA, PPQB]
##[PPCC, PPQA, PPQB]
#spats [*,*,*,B]
[PPQB]
##[PPQB]
#spats [*,*,Q,*]
[PPQA, PPQB]
##[PPQA, PPQB]
#spats [*,P,*,*]
[PPCC, PPQA, PPQB]
##[PPCC, PPQA, PPQB]
#spats [P,*,*,*]
[PPCC, PPQA, PPQB]
##[PPCC, PPQA, PPQB]
#spats [*,*,*,*]
[PPCC, PPQA, PPQB]
##[PPCC, PPQA, PPQB]
###!
###! Matchings per PPQBZ
#spats [P,P,Q,B,Z]
[]
##[]
#spats [*,P,Q,B,Z]
[]
##[]
#spats [P,*,Q,B,Z]
[]
##[]
#spats [P,P,*,B,Z]
[]
##[]
#spats [P,P,Q,*,Z]
[]
##[]
#spats [P,P,Q,B,*]
[]
##[]
#spats [*,*,Q,B,Z]
[]
##[]
#spats [*,P,*,B,Z]
[]
##[]
#spats [*,P,Q,*,Z]
[]
##[]
#spats [*,P,Q,B,*]
[]
##[]
#spats [P,*,*,B,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,B,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,B,*]
[]
##[]
#spats [P,P,Q,*,*]
[]
##[]
#spats [*,*,*,B,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,B,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,B,*]
[]
##[]
#spats [*,P,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,B,*]
[]
##[]
#spats [P,*,Q,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,B,*]
[]
##[]
#spats [*,*,Q,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPC
#spats [P,P,C]
[]
##[]
#spats [*,P,C]
[]
##[]
#spats [P,*,C]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,C]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPCC
#spats [P,P,C,C]
[PPCC]
##[PPCC]
#spats [*,P,C,C]
[PPCC]
##[PPCC]
#spats [P,*,C,C]
[PPCC]
##[PPCC]
#spats [P,P,*,C]
[PPCC]
##[PPCC]
#spats [P,P,C,*]
[PPCC]
##[PPCC]
#spats [*,*,C,C]
[PPCC]
##[PPCC]
#spats [*,P,*,C]
[PPCC]
##[PPCC]
#spats [*,P,C,*]
[PPCC]
##[PPCC]
#spats [P,*,*,C]
[PPCC]
##[PPCC]
#spats [P,*,C,*]
[PPCC]
##[PPCC]
#spats [P,P,*,*]
[PPCC, PPQA, PPQB]
##[PPCC, PPQA, PPQB]
#spats [*,*,*,C]
[PPCC]
##[PPCC]
#spats [*,*,C,*]
[PPCC]
##[PPCC]
#spats [*,P,*,*]
[PPCC, PPQA, PPQB]
##[PPCC, PPQA, PPQB]
#spats [P,*,*,*]
[PPCC, PPQA, PPQB]
##[PPCC, PPQA, PPQB]
#spats [*,*,*,*]
[PPCC, PPQA, PPQB]
##[PPCC, PPQA, PPQB]
###!
###! Matchings per PPCCZ
#spats [P,P,C,C,Z]
[]
##[]
#spats [*,P,C,C,Z]
[]
##[]
#spats [P,*,C,C,Z]
[]
##[]
#spats [P,P,*,C,Z]
[]
##[]
#spats [P,P,C,*,Z]
[]
##[]
#spats [P,P,C,C,*]
[]
##[]
#spats [*,*,C,C,Z]
[]
##[]
#spats [*,P,*,C,Z]
[]
##[]
#spats [*,P,C,*,Z]
[]
##[]
#spats [*,P,C,C,*]
[]
##[]
#spats [P,*,*,C,Z]
[]
##[]
#spats [P,*,C,*,Z]
[]
##[]
#spats [P,*,C,C,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,C,*]
[]
##[]
#spats [P,P,C,*,*]
[]
##[]
#spats [*,*,*,C,Z]
[]
##[]
#spats [*,*,C,*,Z]
[]
##[]
#spats [*,*,C,C,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,C,*]
[]
##[]
#spats [*,P,C,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,C,*]
[]
##[]
#spats [P,*,C,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,C,*]
[]
##[]
#spats [*,*,C,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.11 Subcas 5K
###!           lp123 > 1  lp12 = lp123 + 1  l1 > lp12 + 1  l2 > lp12 + 1 l3 = lp123 + 1
###!           w1 = PPQAA  w2 = PPQBB  w3 = PPC
###!-------------------------------------------------------------------
###!
#init d5K dicc
###!
#ins PPQAA
#ins PPQBB
#ins PPC
###!
###! Prefixos per PPQAA
#pre P

##
#pre PPQA

##
#pre PPQAA
PPQAA
##PPQAA
#pre ZPQAA

##
#pre PPQZA

##
#pre PPQAZ

##
#pre ZPQAAY

##
#pre PPQAZY

##
#pre PPQAAZ
PPQAA
##PPQAA
#pre ZPQAAYY

##
#pre PPQAZYY

##
#pre PPQAAZY
PPQAA
##PPQAA
###!
###! Prefixos per PPQBB
#pre P

##
#pre PPQB

##
#pre PPQBB
PPQBB
##PPQBB
#pre ZPQBB

##
#pre PPQZB

##
#pre PPQBZ

##
#pre ZPQBBY

##
#pre PPQBZY

##
#pre PPQBBZ
PPQBB
##PPQBB
#pre ZPQBBYY

##
#pre PPQBZYY

##
#pre PPQBBZY
PPQBB
##PPQBB
###!
###! Prefixos per PPC
#pre P

##
#pre PP

##
#pre PPC
PPC
##PPC
#pre ZPC

##
#pre PZC

##
#pre PPZ

##
#pre ZPCY

##
#pre PPZY

##
#pre PPCZ
PPC
##PPC
#pre ZPCYY

##
#pre PPZYY

##
#pre PPCZY
PPC
##PPC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PPQA
#spats [P,P,Q,A]
[]
##[]
#spats [*,P,Q,A]
[]
##[]
#spats [P,*,Q,A]
[]
##[]
#spats [P,P,*,A]
[]
##[]
#spats [P,P,Q,*]
[]
##[]
#spats [*,*,Q,A]
[]
##[]
#spats [*,P,*,A]
[]
##[]
#spats [*,P,Q,*]
[]
##[]
#spats [P,*,*,A]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,A]
[]
##[]
#spats [*,*,Q,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PPQAA
#spats [P,P,Q,A,A]
[PPQAA]
##[PPQAA]
#spats [*,P,Q,A,A]
[PPQAA]
##[PPQAA]
#spats [P,*,Q,A,A]
[PPQAA]
##[PPQAA]
#spats [P,P,*,A,A]
[PPQAA]
##[PPQAA]
#spats [P,P,Q,*,A]
[PPQAA]
##[PPQAA]
#spats [P,P,Q,A,*]
[PPQAA]
##[PPQAA]
#spats [*,*,Q,A,A]
[PPQAA]
##[PPQAA]
#spats [*,P,*,A,A]
[PPQAA]
##[PPQAA]
#spats [*,P,Q,*,A]
[PPQAA]
##[PPQAA]
#spats [*,P,Q,A,*]
[PPQAA]
##[PPQAA]
#spats [P,*,*,A,A]
[PPQAA]
##[PPQAA]
#spats [P,*,Q,*,A]
[PPQAA]
##[PPQAA]
#spats [P,*,Q,A,*]
[PPQAA]
##[PPQAA]
#spats [P,P,*,*,A]
[PPQAA]
##[PPQAA]
#spats [P,P,*,A,*]
[PPQAA]
##[PPQAA]
#spats [P,P,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,A,A]
[PPQAA]
##[PPQAA]
#spats [*,*,Q,*,A]
[PPQAA]
##[PPQAA]
#spats [*,*,Q,A,*]
[PPQAA]
##[PPQAA]
#spats [*,P,*,*,A]
[PPQAA]
##[PPQAA]
#spats [*,P,*,A,*]
[PPQAA]
##[PPQAA]
#spats [*,P,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [P,*,*,*,A]
[PPQAA]
##[PPQAA]
#spats [P,*,*,A,*]
[PPQAA]
##[PPQAA]
#spats [P,*,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [P,P,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,*,A]
[PPQAA]
##[PPQAA]
#spats [*,*,*,A,*]
[PPQAA]
##[PPQAA]
#spats [*,*,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,P,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [P,*,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
###!
###! Matchings per PPQAAZ
#spats [P,P,Q,A,A,Z]
[]
##[]
#spats [*,P,Q,A,A,Z]
[]
##[]
#spats [P,*,Q,A,A,Z]
[]
##[]
#spats [P,P,*,A,A,Z]
[]
##[]
#spats [P,P,Q,*,A,Z]
[]
##[]
#spats [P,P,Q,A,*,Z]
[]
##[]
#spats [P,P,Q,A,A,*]
[]
##[]
#spats [*,*,Q,A,A,Z]
[]
##[]
#spats [*,P,*,A,A,Z]
[]
##[]
#spats [*,P,Q,*,A,Z]
[]
##[]
#spats [*,P,Q,A,*,Z]
[]
##[]
#spats [*,P,Q,A,A,*]
[]
##[]
#spats [P,*,*,A,A,Z]
[]
##[]
#spats [P,*,Q,*,A,Z]
[]
##[]
#spats [P,*,Q,A,*,Z]
[]
##[]
#spats [P,*,Q,A,A,*]
[]
##[]
#spats [P,P,*,*,A,Z]
[]
##[]
#spats [P,P,*,A,*,Z]
[]
##[]
#spats [P,P,*,A,A,*]
[]
##[]
#spats [P,P,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,*,A,*]
[]
##[]
#spats [P,P,Q,A,*,*]
[]
##[]
#spats [*,*,*,A,A,Z]
[]
##[]
#spats [*,*,Q,*,A,Z]
[]
##[]
#spats [*,*,Q,A,*,Z]
[]
##[]
#spats [*,*,Q,A,A,*]
[]
##[]
#spats [*,P,*,*,A,Z]
[]
##[]
#spats [*,P,*,A,*,Z]
[]
##[]
#spats [*,P,*,A,A,*]
[]
##[]
#spats [*,P,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,*,A,*]
[]
##[]
#spats [*,P,Q,A,*,*]
[]
##[]
#spats [P,*,*,*,A,Z]
[]
##[]
#spats [P,*,*,A,*,Z]
[]
##[]
#spats [P,*,*,A,A,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,A,*]
[]
##[]
#spats [P,*,Q,A,*,*]
[]
##[]
#spats [P,P,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,A,*]
[]
##[]
#spats [P,P,*,A,*,*]
[]
##[]
#spats [P,P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,A,Z]
[]
##[]
#spats [*,*,*,A,*,Z]
[]
##[]
#spats [*,*,*,A,A,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,A,*]
[]
##[]
#spats [*,*,Q,A,*,*]
[]
##[]
#spats [*,P,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,A,*]
[]
##[]
#spats [*,P,*,A,*,*]
[]
##[]
#spats [*,P,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,A,*]
[]
##[]
#spats [P,*,*,A,*,*]
[]
##[]
#spats [P,*,Q,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,A,*]
[]
##[]
#spats [*,*,*,A,*,*]
[]
##[]
#spats [*,*,Q,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPQB
#spats [P,P,Q,B]
[]
##[]
#spats [*,P,Q,B]
[]
##[]
#spats [P,*,Q,B]
[]
##[]
#spats [P,P,*,B]
[]
##[]
#spats [P,P,Q,*]
[]
##[]
#spats [*,*,Q,B]
[]
##[]
#spats [*,P,*,B]
[]
##[]
#spats [*,P,Q,*]
[]
##[]
#spats [P,*,*,B]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,B]
[]
##[]
#spats [*,*,Q,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PPQBB
#spats [P,P,Q,B,B]
[PPQBB]
##[PPQBB]
#spats [*,P,Q,B,B]
[PPQBB]
##[PPQBB]
#spats [P,*,Q,B,B]
[PPQBB]
##[PPQBB]
#spats [P,P,*,B,B]
[PPQBB]
##[PPQBB]
#spats [P,P,Q,*,B]
[PPQBB]
##[PPQBB]
#spats [P,P,Q,B,*]
[PPQBB]
##[PPQBB]
#spats [*,*,Q,B,B]
[PPQBB]
##[PPQBB]
#spats [*,P,*,B,B]
[PPQBB]
##[PPQBB]
#spats [*,P,Q,*,B]
[PPQBB]
##[PPQBB]
#spats [*,P,Q,B,*]
[PPQBB]
##[PPQBB]
#spats [P,*,*,B,B]
[PPQBB]
##[PPQBB]
#spats [P,*,Q,*,B]
[PPQBB]
##[PPQBB]
#spats [P,*,Q,B,*]
[PPQBB]
##[PPQBB]
#spats [P,P,*,*,B]
[PPQBB]
##[PPQBB]
#spats [P,P,*,B,*]
[PPQBB]
##[PPQBB]
#spats [P,P,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,B,B]
[PPQBB]
##[PPQBB]
#spats [*,*,Q,*,B]
[PPQBB]
##[PPQBB]
#spats [*,*,Q,B,*]
[PPQBB]
##[PPQBB]
#spats [*,P,*,*,B]
[PPQBB]
##[PPQBB]
#spats [*,P,*,B,*]
[PPQBB]
##[PPQBB]
#spats [*,P,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [P,*,*,*,B]
[PPQBB]
##[PPQBB]
#spats [P,*,*,B,*]
[PPQBB]
##[PPQBB]
#spats [P,*,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [P,P,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,*,B]
[PPQBB]
##[PPQBB]
#spats [*,*,*,B,*]
[PPQBB]
##[PPQBB]
#spats [*,*,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,P,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [P,*,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
###!
###! Matchings per PPQBBZ
#spats [P,P,Q,B,B,Z]
[]
##[]
#spats [*,P,Q,B,B,Z]
[]
##[]
#spats [P,*,Q,B,B,Z]
[]
##[]
#spats [P,P,*,B,B,Z]
[]
##[]
#spats [P,P,Q,*,B,Z]
[]
##[]
#spats [P,P,Q,B,*,Z]
[]
##[]
#spats [P,P,Q,B,B,*]
[]
##[]
#spats [*,*,Q,B,B,Z]
[]
##[]
#spats [*,P,*,B,B,Z]
[]
##[]
#spats [*,P,Q,*,B,Z]
[]
##[]
#spats [*,P,Q,B,*,Z]
[]
##[]
#spats [*,P,Q,B,B,*]
[]
##[]
#spats [P,*,*,B,B,Z]
[]
##[]
#spats [P,*,Q,*,B,Z]
[]
##[]
#spats [P,*,Q,B,*,Z]
[]
##[]
#spats [P,*,Q,B,B,*]
[]
##[]
#spats [P,P,*,*,B,Z]
[]
##[]
#spats [P,P,*,B,*,Z]
[]
##[]
#spats [P,P,*,B,B,*]
[]
##[]
#spats [P,P,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,*,B,*]
[]
##[]
#spats [P,P,Q,B,*,*]
[]
##[]
#spats [*,*,*,B,B,Z]
[]
##[]
#spats [*,*,Q,*,B,Z]
[]
##[]
#spats [*,*,Q,B,*,Z]
[]
##[]
#spats [*,*,Q,B,B,*]
[]
##[]
#spats [*,P,*,*,B,Z]
[]
##[]
#spats [*,P,*,B,*,Z]
[]
##[]
#spats [*,P,*,B,B,*]
[]
##[]
#spats [*,P,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,*,B,*]
[]
##[]
#spats [*,P,Q,B,*,*]
[]
##[]
#spats [P,*,*,*,B,Z]
[]
##[]
#spats [P,*,*,B,*,Z]
[]
##[]
#spats [P,*,*,B,B,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,B,*]
[]
##[]
#spats [P,*,Q,B,*,*]
[]
##[]
#spats [P,P,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,B,*]
[]
##[]
#spats [P,P,*,B,*,*]
[]
##[]
#spats [P,P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,B,Z]
[]
##[]
#spats [*,*,*,B,*,Z]
[]
##[]
#spats [*,*,*,B,B,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,B,*]
[]
##[]
#spats [*,*,Q,B,*,*]
[]
##[]
#spats [*,P,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,B,*]
[]
##[]
#spats [*,P,*,B,*,*]
[]
##[]
#spats [*,P,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,B,*]
[]
##[]
#spats [P,*,*,B,*,*]
[]
##[]
#spats [P,*,Q,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,B,*]
[]
##[]
#spats [*,*,*,B,*,*]
[]
##[]
#spats [*,*,Q,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[]
##[]
#spats [*,P]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PPC
#spats [P,P,C]
[PPC]
##[PPC]
#spats [*,P,C]
[PPC]
##[PPC]
#spats [P,*,C]
[PPC]
##[PPC]
#spats [P,P,*]
[PPC]
##[PPC]
#spats [*,*,C]
[PPC]
##[PPC]
#spats [*,P,*]
[PPC]
##[PPC]
#spats [P,*,*]
[PPC]
##[PPC]
#spats [*,*,*]
[PPC]
##[PPC]
###!
###! Matchings per PPCZ
#spats [P,P,C,Z]
[]
##[]
#spats [*,P,C,Z]
[]
##[]
#spats [P,*,C,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,C,*]
[]
##[]
#spats [*,*,C,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,C,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,C,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.12 Subcas 5L
###!           lp123 > 1  lp12 = lp123 + 1  l1 > lp12 + 1  l2 > lp12 + 1 l3 > lp123 + 1
###!           w1 = PPQAA  w2 = PPQBB  w3 = PPCC
###!-------------------------------------------------------------------
###!
#init d5L dicc
###!
#ins PPQAA
#ins PPQBB
#ins PPCC
###!
###! Prefixos per PPQAA
#pre P

##
#pre PPQA

##
#pre PPQAA
PPQAA
##PPQAA
#pre ZPQAA

##
#pre PPQZA

##
#pre PPQAZ

##
#pre ZPQAAY

##
#pre PPQAZY

##
#pre PPQAAZ
PPQAA
##PPQAA
#pre ZPQAAYY

##
#pre PPQAZYY

##
#pre PPQAAZY
PPQAA
##PPQAA
###!
###! Prefixos per PPQBB
#pre P

##
#pre PPQB

##
#pre PPQBB
PPQBB
##PPQBB
#pre ZPQBB

##
#pre PPQZB

##
#pre PPQBZ

##
#pre ZPQBBY

##
#pre PPQBZY

##
#pre PPQBBZ
PPQBB
##PPQBB
#pre ZPQBBYY

##
#pre PPQBZYY

##
#pre PPQBBZY
PPQBB
##PPQBB
###!
###! Prefixos per PPCC
#pre P

##
#pre PPC

##
#pre PPCC
PPCC
##PPCC
#pre ZPCC

##
#pre PPZC

##
#pre PPCZ

##
#pre ZPCCY

##
#pre PPCZY

##
#pre PPCCZ
PPCC
##PPCC
#pre ZPCCYY

##
#pre PPCZYY

##
#pre PPCCZY
PPCC
##PPCC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PPQA
#spats [P,P,Q,A]
[]
##[]
#spats [*,P,Q,A]
[]
##[]
#spats [P,*,Q,A]
[]
##[]
#spats [P,P,*,A]
[]
##[]
#spats [P,P,Q,*]
[]
##[]
#spats [*,*,Q,A]
[]
##[]
#spats [*,P,*,A]
[]
##[]
#spats [*,P,Q,*]
[]
##[]
#spats [P,*,*,A]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,P,*,*]
[PPCC]
##[PPCC]
#spats [*,*,*,A]
[]
##[]
#spats [*,*,Q,*]
[]
##[]
#spats [*,P,*,*]
[PPCC]
##[PPCC]
#spats [P,*,*,*]
[PPCC]
##[PPCC]
#spats [*,*,*,*]
[PPCC]
##[PPCC]
###!
###! Matchings per PPQAA
#spats [P,P,Q,A,A]
[PPQAA]
##[PPQAA]
#spats [*,P,Q,A,A]
[PPQAA]
##[PPQAA]
#spats [P,*,Q,A,A]
[PPQAA]
##[PPQAA]
#spats [P,P,*,A,A]
[PPQAA]
##[PPQAA]
#spats [P,P,Q,*,A]
[PPQAA]
##[PPQAA]
#spats [P,P,Q,A,*]
[PPQAA]
##[PPQAA]
#spats [*,*,Q,A,A]
[PPQAA]
##[PPQAA]
#spats [*,P,*,A,A]
[PPQAA]
##[PPQAA]
#spats [*,P,Q,*,A]
[PPQAA]
##[PPQAA]
#spats [*,P,Q,A,*]
[PPQAA]
##[PPQAA]
#spats [P,*,*,A,A]
[PPQAA]
##[PPQAA]
#spats [P,*,Q,*,A]
[PPQAA]
##[PPQAA]
#spats [P,*,Q,A,*]
[PPQAA]
##[PPQAA]
#spats [P,P,*,*,A]
[PPQAA]
##[PPQAA]
#spats [P,P,*,A,*]
[PPQAA]
##[PPQAA]
#spats [P,P,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,A,A]
[PPQAA]
##[PPQAA]
#spats [*,*,Q,*,A]
[PPQAA]
##[PPQAA]
#spats [*,*,Q,A,*]
[PPQAA]
##[PPQAA]
#spats [*,P,*,*,A]
[PPQAA]
##[PPQAA]
#spats [*,P,*,A,*]
[PPQAA]
##[PPQAA]
#spats [*,P,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [P,*,*,*,A]
[PPQAA]
##[PPQAA]
#spats [P,*,*,A,*]
[PPQAA]
##[PPQAA]
#spats [P,*,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [P,P,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,*,A]
[PPQAA]
##[PPQAA]
#spats [*,*,*,A,*]
[PPQAA]
##[PPQAA]
#spats [*,*,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,P,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [P,*,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
###!
###! Matchings per PPQAAZ
#spats [P,P,Q,A,A,Z]
[]
##[]
#spats [*,P,Q,A,A,Z]
[]
##[]
#spats [P,*,Q,A,A,Z]
[]
##[]
#spats [P,P,*,A,A,Z]
[]
##[]
#spats [P,P,Q,*,A,Z]
[]
##[]
#spats [P,P,Q,A,*,Z]
[]
##[]
#spats [P,P,Q,A,A,*]
[]
##[]
#spats [*,*,Q,A,A,Z]
[]
##[]
#spats [*,P,*,A,A,Z]
[]
##[]
#spats [*,P,Q,*,A,Z]
[]
##[]
#spats [*,P,Q,A,*,Z]
[]
##[]
#spats [*,P,Q,A,A,*]
[]
##[]
#spats [P,*,*,A,A,Z]
[]
##[]
#spats [P,*,Q,*,A,Z]
[]
##[]
#spats [P,*,Q,A,*,Z]
[]
##[]
#spats [P,*,Q,A,A,*]
[]
##[]
#spats [P,P,*,*,A,Z]
[]
##[]
#spats [P,P,*,A,*,Z]
[]
##[]
#spats [P,P,*,A,A,*]
[]
##[]
#spats [P,P,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,*,A,*]
[]
##[]
#spats [P,P,Q,A,*,*]
[]
##[]
#spats [*,*,*,A,A,Z]
[]
##[]
#spats [*,*,Q,*,A,Z]
[]
##[]
#spats [*,*,Q,A,*,Z]
[]
##[]
#spats [*,*,Q,A,A,*]
[]
##[]
#spats [*,P,*,*,A,Z]
[]
##[]
#spats [*,P,*,A,*,Z]
[]
##[]
#spats [*,P,*,A,A,*]
[]
##[]
#spats [*,P,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,*,A,*]
[]
##[]
#spats [*,P,Q,A,*,*]
[]
##[]
#spats [P,*,*,*,A,Z]
[]
##[]
#spats [P,*,*,A,*,Z]
[]
##[]
#spats [P,*,*,A,A,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,A,*]
[]
##[]
#spats [P,*,Q,A,*,*]
[]
##[]
#spats [P,P,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,A,*]
[]
##[]
#spats [P,P,*,A,*,*]
[]
##[]
#spats [P,P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,A,Z]
[]
##[]
#spats [*,*,*,A,*,Z]
[]
##[]
#spats [*,*,*,A,A,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,A,*]
[]
##[]
#spats [*,*,Q,A,*,*]
[]
##[]
#spats [*,P,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,A,*]
[]
##[]
#spats [*,P,*,A,*,*]
[]
##[]
#spats [*,P,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,A,*]
[]
##[]
#spats [P,*,*,A,*,*]
[]
##[]
#spats [P,*,Q,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,A,*]
[]
##[]
#spats [*,*,*,A,*,*]
[]
##[]
#spats [*,*,Q,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPQB
#spats [P,P,Q,B]
[]
##[]
#spats [*,P,Q,B]
[]
##[]
#spats [P,*,Q,B]
[]
##[]
#spats [P,P,*,B]
[]
##[]
#spats [P,P,Q,*]
[]
##[]
#spats [*,*,Q,B]
[]
##[]
#spats [*,P,*,B]
[]
##[]
#spats [*,P,Q,*]
[]
##[]
#spats [P,*,*,B]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,P,*,*]
[PPCC]
##[PPCC]
#spats [*,*,*,B]
[]
##[]
#spats [*,*,Q,*]
[]
##[]
#spats [*,P,*,*]
[PPCC]
##[PPCC]
#spats [P,*,*,*]
[PPCC]
##[PPCC]
#spats [*,*,*,*]
[PPCC]
##[PPCC]
###!
###! Matchings per PPQBB
#spats [P,P,Q,B,B]
[PPQBB]
##[PPQBB]
#spats [*,P,Q,B,B]
[PPQBB]
##[PPQBB]
#spats [P,*,Q,B,B]
[PPQBB]
##[PPQBB]
#spats [P,P,*,B,B]
[PPQBB]
##[PPQBB]
#spats [P,P,Q,*,B]
[PPQBB]
##[PPQBB]
#spats [P,P,Q,B,*]
[PPQBB]
##[PPQBB]
#spats [*,*,Q,B,B]
[PPQBB]
##[PPQBB]
#spats [*,P,*,B,B]
[PPQBB]
##[PPQBB]
#spats [*,P,Q,*,B]
[PPQBB]
##[PPQBB]
#spats [*,P,Q,B,*]
[PPQBB]
##[PPQBB]
#spats [P,*,*,B,B]
[PPQBB]
##[PPQBB]
#spats [P,*,Q,*,B]
[PPQBB]
##[PPQBB]
#spats [P,*,Q,B,*]
[PPQBB]
##[PPQBB]
#spats [P,P,*,*,B]
[PPQBB]
##[PPQBB]
#spats [P,P,*,B,*]
[PPQBB]
##[PPQBB]
#spats [P,P,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,B,B]
[PPQBB]
##[PPQBB]
#spats [*,*,Q,*,B]
[PPQBB]
##[PPQBB]
#spats [*,*,Q,B,*]
[PPQBB]
##[PPQBB]
#spats [*,P,*,*,B]
[PPQBB]
##[PPQBB]
#spats [*,P,*,B,*]
[PPQBB]
##[PPQBB]
#spats [*,P,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [P,*,*,*,B]
[PPQBB]
##[PPQBB]
#spats [P,*,*,B,*]
[PPQBB]
##[PPQBB]
#spats [P,*,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [P,P,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,*,B]
[PPQBB]
##[PPQBB]
#spats [*,*,*,B,*]
[PPQBB]
##[PPQBB]
#spats [*,*,Q,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,P,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [P,*,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
###!
###! Matchings per PPQBBZ
#spats [P,P,Q,B,B,Z]
[]
##[]
#spats [*,P,Q,B,B,Z]
[]
##[]
#spats [P,*,Q,B,B,Z]
[]
##[]
#spats [P,P,*,B,B,Z]
[]
##[]
#spats [P,P,Q,*,B,Z]
[]
##[]
#spats [P,P,Q,B,*,Z]
[]
##[]
#spats [P,P,Q,B,B,*]
[]
##[]
#spats [*,*,Q,B,B,Z]
[]
##[]
#spats [*,P,*,B,B,Z]
[]
##[]
#spats [*,P,Q,*,B,Z]
[]
##[]
#spats [*,P,Q,B,*,Z]
[]
##[]
#spats [*,P,Q,B,B,*]
[]
##[]
#spats [P,*,*,B,B,Z]
[]
##[]
#spats [P,*,Q,*,B,Z]
[]
##[]
#spats [P,*,Q,B,*,Z]
[]
##[]
#spats [P,*,Q,B,B,*]
[]
##[]
#spats [P,P,*,*,B,Z]
[]
##[]
#spats [P,P,*,B,*,Z]
[]
##[]
#spats [P,P,*,B,B,*]
[]
##[]
#spats [P,P,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,*,B,*]
[]
##[]
#spats [P,P,Q,B,*,*]
[]
##[]
#spats [*,*,*,B,B,Z]
[]
##[]
#spats [*,*,Q,*,B,Z]
[]
##[]
#spats [*,*,Q,B,*,Z]
[]
##[]
#spats [*,*,Q,B,B,*]
[]
##[]
#spats [*,P,*,*,B,Z]
[]
##[]
#spats [*,P,*,B,*,Z]
[]
##[]
#spats [*,P,*,B,B,*]
[]
##[]
#spats [*,P,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,*,B,*]
[]
##[]
#spats [*,P,Q,B,*,*]
[]
##[]
#spats [P,*,*,*,B,Z]
[]
##[]
#spats [P,*,*,B,*,Z]
[]
##[]
#spats [P,*,*,B,B,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,B,*]
[]
##[]
#spats [P,*,Q,B,*,*]
[]
##[]
#spats [P,P,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,B,*]
[]
##[]
#spats [P,P,*,B,*,*]
[]
##[]
#spats [P,P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,B,Z]
[]
##[]
#spats [*,*,*,B,*,Z]
[]
##[]
#spats [*,*,*,B,B,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,B,*]
[]
##[]
#spats [*,*,Q,B,*,*]
[]
##[]
#spats [*,P,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,B,*]
[]
##[]
#spats [*,P,*,B,*,*]
[]
##[]
#spats [*,P,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,B,*]
[]
##[]
#spats [P,*,*,B,*,*]
[]
##[]
#spats [P,*,Q,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,B,*]
[]
##[]
#spats [*,*,*,B,*,*]
[]
##[]
#spats [*,*,Q,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPC
#spats [P,P,C]
[]
##[]
#spats [*,P,C]
[]
##[]
#spats [P,*,C]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,C]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPCC
#spats [P,P,C,C]
[PPCC]
##[PPCC]
#spats [*,P,C,C]
[PPCC]
##[PPCC]
#spats [P,*,C,C]
[PPCC]
##[PPCC]
#spats [P,P,*,C]
[PPCC]
##[PPCC]
#spats [P,P,C,*]
[PPCC]
##[PPCC]
#spats [*,*,C,C]
[PPCC]
##[PPCC]
#spats [*,P,*,C]
[PPCC]
##[PPCC]
#spats [*,P,C,*]
[PPCC]
##[PPCC]
#spats [P,*,*,C]
[PPCC]
##[PPCC]
#spats [P,*,C,*]
[PPCC]
##[PPCC]
#spats [P,P,*,*]
[PPCC]
##[PPCC]
#spats [*,*,*,C]
[PPCC]
##[PPCC]
#spats [*,*,C,*]
[PPCC]
##[PPCC]
#spats [*,P,*,*]
[PPCC]
##[PPCC]
#spats [P,*,*,*]
[PPCC]
##[PPCC]
#spats [*,*,*,*]
[PPCC]
##[PPCC]
###!
###! Matchings per PPCCZ
#spats [P,P,C,C,Z]
[]
##[]
#spats [*,P,C,C,Z]
[]
##[]
#spats [P,*,C,C,Z]
[]
##[]
#spats [P,P,*,C,Z]
[]
##[]
#spats [P,P,C,*,Z]
[]
##[]
#spats [P,P,C,C,*]
[]
##[]
#spats [*,*,C,C,Z]
[]
##[]
#spats [*,P,*,C,Z]
[]
##[]
#spats [*,P,C,*,Z]
[]
##[]
#spats [*,P,C,C,*]
[]
##[]
#spats [P,*,*,C,Z]
[]
##[]
#spats [P,*,C,*,Z]
[]
##[]
#spats [P,*,C,C,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,C,*]
[]
##[]
#spats [P,P,C,*,*]
[]
##[]
#spats [*,*,*,C,Z]
[]
##[]
#spats [*,*,C,*,Z]
[]
##[]
#spats [*,*,C,C,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,C,*]
[]
##[]
#spats [*,P,C,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,C,*]
[]
##[]
#spats [P,*,C,*,*]
[]
##[]
#spats [P,P,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,C,*]
[]
##[]
#spats [*,*,C,*,*]
[]
##[]
#spats [*,P,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [P,*,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
#spats [*,*,*,*,*]
[PPQAA, PPQBB]
##[PPQAA, PPQBB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.13 Subcas 5M
###!           lp123 > 1  lp12 > lp123 + 1  l1 = lp12 + 1  l2 = lp12 + 1 l3 = lp123 + 1
###!           w1 = PPQQA  w2 = PPQQB  w3 = PPC
###!-------------------------------------------------------------------
###!
#init d5M dicc
###!
#ins PPQQA
#ins PPQQB
#ins PPC
###!
###! Prefixos per PPQQA
#pre P

##
#pre PPQQ

##
#pre PPQQA
PPQQA
##PPQQA
#pre ZPQQA

##
#pre PPQZA

##
#pre PPQQZ

##
#pre ZPQQAY

##
#pre PPQQZY

##
#pre PPQQAZ
PPQQA
##PPQQA
#pre ZPQQAYY

##
#pre PPQQZYY

##
#pre PPQQAZY
PPQQA
##PPQQA
###!
###! Prefixos per PPQQB
#pre P

##
#pre PPQQ

##
#pre PPQQB
PPQQB
##PPQQB
#pre ZPQQB

##
#pre PPQZB

##
#pre PPQQZ

##
#pre ZPQQBY

##
#pre PPQQZY

##
#pre PPQQBZ
PPQQB
##PPQQB
#pre ZPQQBYY

##
#pre PPQQZYY

##
#pre PPQQBZY
PPQQB
##PPQQB
###!
###! Prefixos per PPC
#pre P

##
#pre PP

##
#pre PPC
PPC
##PPC
#pre ZPC

##
#pre PZC

##
#pre PPZ

##
#pre ZPCY

##
#pre PPZY

##
#pre PPCZ
PPC
##PPC
#pre ZPCYY

##
#pre PPZYY

##
#pre PPCZY
PPC
##PPC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PPQQ
#spats [P,P,Q,Q]
[]
##[]
#spats [*,P,Q,Q]
[]
##[]
#spats [P,*,Q,Q]
[]
##[]
#spats [P,P,*,Q]
[]
##[]
#spats [P,P,Q,*]
[]
##[]
#spats [*,*,Q,Q]
[]
##[]
#spats [*,P,*,Q]
[]
##[]
#spats [*,P,Q,*]
[]
##[]
#spats [P,*,*,Q]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Q]
[]
##[]
#spats [*,*,Q,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PPQQA
#spats [P,P,Q,Q,A]
[PPQQA]
##[PPQQA]
#spats [*,P,Q,Q,A]
[PPQQA]
##[PPQQA]
#spats [P,*,Q,Q,A]
[PPQQA]
##[PPQQA]
#spats [P,P,*,Q,A]
[PPQQA]
##[PPQQA]
#spats [P,P,Q,*,A]
[PPQQA]
##[PPQQA]
#spats [P,P,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,Q,Q,A]
[PPQQA]
##[PPQQA]
#spats [*,P,*,Q,A]
[PPQQA]
##[PPQQA]
#spats [*,P,Q,*,A]
[PPQQA]
##[PPQQA]
#spats [*,P,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,*,Q,A]
[PPQQA]
##[PPQQA]
#spats [P,*,Q,*,A]
[PPQQA]
##[PPQQA]
#spats [P,*,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,P,*,*,A]
[PPQQA]
##[PPQQA]
#spats [P,P,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,P,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,Q,A]
[PPQQA]
##[PPQQA]
#spats [*,*,Q,*,A]
[PPQQA]
##[PPQQA]
#spats [*,*,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,P,*,*,A]
[PPQQA]
##[PPQQA]
#spats [*,P,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,P,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,*,*,A]
[PPQQA]
##[PPQQA]
#spats [P,*,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,P,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,*,A]
[PPQQA]
##[PPQQA]
#spats [*,*,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,P,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
###!
###! Matchings per PPQQAZ
#spats [P,P,Q,Q,A,Z]
[]
##[]
#spats [*,P,Q,Q,A,Z]
[]
##[]
#spats [P,*,Q,Q,A,Z]
[]
##[]
#spats [P,P,*,Q,A,Z]
[]
##[]
#spats [P,P,Q,*,A,Z]
[]
##[]
#spats [P,P,Q,Q,*,Z]
[]
##[]
#spats [P,P,Q,Q,A,*]
[]
##[]
#spats [*,*,Q,Q,A,Z]
[]
##[]
#spats [*,P,*,Q,A,Z]
[]
##[]
#spats [*,P,Q,*,A,Z]
[]
##[]
#spats [*,P,Q,Q,*,Z]
[]
##[]
#spats [*,P,Q,Q,A,*]
[]
##[]
#spats [P,*,*,Q,A,Z]
[]
##[]
#spats [P,*,Q,*,A,Z]
[]
##[]
#spats [P,*,Q,Q,*,Z]
[]
##[]
#spats [P,*,Q,Q,A,*]
[]
##[]
#spats [P,P,*,*,A,Z]
[]
##[]
#spats [P,P,*,Q,*,Z]
[]
##[]
#spats [P,P,*,Q,A,*]
[]
##[]
#spats [P,P,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,*,A,*]
[]
##[]
#spats [P,P,Q,Q,*,*]
[]
##[]
#spats [*,*,*,Q,A,Z]
[]
##[]
#spats [*,*,Q,*,A,Z]
[]
##[]
#spats [*,*,Q,Q,*,Z]
[]
##[]
#spats [*,*,Q,Q,A,*]
[]
##[]
#spats [*,P,*,*,A,Z]
[]
##[]
#spats [*,P,*,Q,*,Z]
[]
##[]
#spats [*,P,*,Q,A,*]
[]
##[]
#spats [*,P,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,*,A,*]
[]
##[]
#spats [*,P,Q,Q,*,*]
[]
##[]
#spats [P,*,*,*,A,Z]
[]
##[]
#spats [P,*,*,Q,*,Z]
[]
##[]
#spats [P,*,*,Q,A,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,A,*]
[]
##[]
#spats [P,*,Q,Q,*,*]
[]
##[]
#spats [P,P,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,A,*]
[]
##[]
#spats [P,P,*,Q,*,*]
[]
##[]
#spats [P,P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,A,Z]
[]
##[]
#spats [*,*,*,Q,*,Z]
[]
##[]
#spats [*,*,*,Q,A,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,A,*]
[]
##[]
#spats [*,*,Q,Q,*,*]
[]
##[]
#spats [*,P,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,A,*]
[]
##[]
#spats [*,P,*,Q,*,*]
[]
##[]
#spats [*,P,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,A,*]
[]
##[]
#spats [P,*,*,Q,*,*]
[]
##[]
#spats [P,*,Q,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,A,*]
[]
##[]
#spats [*,*,*,Q,*,*]
[]
##[]
#spats [*,*,Q,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPQQ
#spats [P,P,Q,Q]
[]
##[]
#spats [*,P,Q,Q]
[]
##[]
#spats [P,*,Q,Q]
[]
##[]
#spats [P,P,*,Q]
[]
##[]
#spats [P,P,Q,*]
[]
##[]
#spats [*,*,Q,Q]
[]
##[]
#spats [*,P,*,Q]
[]
##[]
#spats [*,P,Q,*]
[]
##[]
#spats [P,*,*,Q]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Q]
[]
##[]
#spats [*,*,Q,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###! Matchings per PPQQB
#spats [P,P,Q,Q,B]
[PPQQB]
##[PPQQB]
#spats [*,P,Q,Q,B]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,Q,B]
[PPQQB]
##[PPQQB]
#spats [P,P,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [P,P,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [P,P,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,Q,Q,B]
[PPQQB]
##[PPQQB]
#spats [*,P,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [*,P,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [*,P,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,P,*,*,B]
[PPQQB]
##[PPQQB]
#spats [P,P,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,P,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,P,*,*,B]
[PPQQB]
##[PPQQB]
#spats [*,P,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,P,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,*,*,B]
[PPQQB]
##[PPQQB]
#spats [P,*,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,P,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,*,B]
[PPQQB]
##[PPQQB]
#spats [*,*,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,P,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
###!
###! Matchings per PPQQBZ
#spats [P,P,Q,Q,B,Z]
[]
##[]
#spats [*,P,Q,Q,B,Z]
[]
##[]
#spats [P,*,Q,Q,B,Z]
[]
##[]
#spats [P,P,*,Q,B,Z]
[]
##[]
#spats [P,P,Q,*,B,Z]
[]
##[]
#spats [P,P,Q,Q,*,Z]
[]
##[]
#spats [P,P,Q,Q,B,*]
[]
##[]
#spats [*,*,Q,Q,B,Z]
[]
##[]
#spats [*,P,*,Q,B,Z]
[]
##[]
#spats [*,P,Q,*,B,Z]
[]
##[]
#spats [*,P,Q,Q,*,Z]
[]
##[]
#spats [*,P,Q,Q,B,*]
[]
##[]
#spats [P,*,*,Q,B,Z]
[]
##[]
#spats [P,*,Q,*,B,Z]
[]
##[]
#spats [P,*,Q,Q,*,Z]
[]
##[]
#spats [P,*,Q,Q,B,*]
[]
##[]
#spats [P,P,*,*,B,Z]
[]
##[]
#spats [P,P,*,Q,*,Z]
[]
##[]
#spats [P,P,*,Q,B,*]
[]
##[]
#spats [P,P,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,*,B,*]
[]
##[]
#spats [P,P,Q,Q,*,*]
[]
##[]
#spats [*,*,*,Q,B,Z]
[]
##[]
#spats [*,*,Q,*,B,Z]
[]
##[]
#spats [*,*,Q,Q,*,Z]
[]
##[]
#spats [*,*,Q,Q,B,*]
[]
##[]
#spats [*,P,*,*,B,Z]
[]
##[]
#spats [*,P,*,Q,*,Z]
[]
##[]
#spats [*,P,*,Q,B,*]
[]
##[]
#spats [*,P,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,*,B,*]
[]
##[]
#spats [*,P,Q,Q,*,*]
[]
##[]
#spats [P,*,*,*,B,Z]
[]
##[]
#spats [P,*,*,Q,*,Z]
[]
##[]
#spats [P,*,*,Q,B,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,B,*]
[]
##[]
#spats [P,*,Q,Q,*,*]
[]
##[]
#spats [P,P,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,B,*]
[]
##[]
#spats [P,P,*,Q,*,*]
[]
##[]
#spats [P,P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,B,Z]
[]
##[]
#spats [*,*,*,Q,*,Z]
[]
##[]
#spats [*,*,*,Q,B,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,B,*]
[]
##[]
#spats [*,*,Q,Q,*,*]
[]
##[]
#spats [*,P,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,B,*]
[]
##[]
#spats [*,P,*,Q,*,*]
[]
##[]
#spats [*,P,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,B,*]
[]
##[]
#spats [P,*,*,Q,*,*]
[]
##[]
#spats [P,*,Q,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,B,*]
[]
##[]
#spats [*,*,*,Q,*,*]
[]
##[]
#spats [*,*,Q,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*]
[]
##[]
###!
###! Matchings per PP
#spats [P,P]
[]
##[]
#spats [*,P]
[]
##[]
#spats [P,*]
[]
##[]
#spats [*,*]
[]
##[]
###!
###! Matchings per PPC
#spats [P,P,C]
[PPC]
##[PPC]
#spats [*,P,C]
[PPC]
##[PPC]
#spats [P,*,C]
[PPC]
##[PPC]
#spats [P,P,*]
[PPC]
##[PPC]
#spats [*,*,C]
[PPC]
##[PPC]
#spats [*,P,*]
[PPC]
##[PPC]
#spats [P,*,*]
[PPC]
##[PPC]
#spats [*,*,*]
[PPC]
##[PPC]
###!
###! Matchings per PPCZ
#spats [P,P,C,Z]
[]
##[]
#spats [*,P,C,Z]
[]
##[]
#spats [P,*,C,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,C,*]
[]
##[]
#spats [*,*,C,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,C,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,C,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
[]
##[]
#spats [*,P,*,*]
[]
##[]
#spats [P,*,*,*]
[]
##[]
#spats [*,*,*,*]
[]
##[]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.14 Subcas 5N
###!           lp123 > 1  lp12 > lp123 + 1  l1 = lp12 + 1  l2 = lp12 + 1 l3 > lp123 + 1
###!           w1 = PPQQA  w2 = PPQQB  w3 = PPCC
###!-------------------------------------------------------------------
###!
#init d5N dicc
###!
#ins PPQQA
#ins PPQQB
#ins PPCC
###!
###! Prefixos per PPQQA
#pre P

##
#pre PPQQ

##
#pre PPQQA
PPQQA
##PPQQA
#pre ZPQQA

##
#pre PPQZA

##
#pre PPQQZ

##
#pre ZPQQAY

##
#pre PPQQZY

##
#pre PPQQAZ
PPQQA
##PPQQA
#pre ZPQQAYY

##
#pre PPQQZYY

##
#pre PPQQAZY
PPQQA
##PPQQA
###!
###! Prefixos per PPQQB
#pre P

##
#pre PPQQ

##
#pre PPQQB
PPQQB
##PPQQB
#pre ZPQQB

##
#pre PPQZB

##
#pre PPQQZ

##
#pre ZPQQBY

##
#pre PPQQZY

##
#pre PPQQBZ
PPQQB
##PPQQB
#pre ZPQQBYY

##
#pre PPQQZYY

##
#pre PPQQBZY
PPQQB
##PPQQB
###!
###! Prefixos per PPCC
#pre P

##
#pre PPC

##
#pre PPCC
PPCC
##PPCC
#pre ZPCC

##
#pre PPZC

##
#pre PPCZ

##
#pre ZPCCY

##
#pre PPCZY

##
#pre PPCCZ
PPCC
##PPCC
#pre ZPCCYY

##
#pre PPCZYY

##
#pre PPCCZY
PPCC
##PPCC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PPQQ
#spats [P,P,Q,Q]
[]
##[]
#spats [*,P,Q,Q]
[]
##[]
#spats [P,*,Q,Q]
[]
##[]
#spats [P,P,*,Q]
[]
##[]
#spats [P,P,Q,*]
[]
##[]
#spats [*,*,Q,Q]
[]
##[]
#spats [*,P,*,Q]
[]
##[]
#spats [*,P,Q,*]
[]
##[]
#spats [P,*,*,Q]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,P,*,*]
[PPCC]
##[PPCC]
#spats [*,*,*,Q]
[]
##[]
#spats [*,*,Q,*]
[]
##[]
#spats [*,P,*,*]
[PPCC]
##[PPCC]
#spats [P,*,*,*]
[PPCC]
##[PPCC]
#spats [*,*,*,*]
[PPCC]
##[PPCC]
###!
###! Matchings per PPQQA
#spats [P,P,Q,Q,A]
[PPQQA]
##[PPQQA]
#spats [*,P,Q,Q,A]
[PPQQA]
##[PPQQA]
#spats [P,*,Q,Q,A]
[PPQQA]
##[PPQQA]
#spats [P,P,*,Q,A]
[PPQQA]
##[PPQQA]
#spats [P,P,Q,*,A]
[PPQQA]
##[PPQQA]
#spats [P,P,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,Q,Q,A]
[PPQQA]
##[PPQQA]
#spats [*,P,*,Q,A]
[PPQQA]
##[PPQQA]
#spats [*,P,Q,*,A]
[PPQQA]
##[PPQQA]
#spats [*,P,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,*,Q,A]
[PPQQA]
##[PPQQA]
#spats [P,*,Q,*,A]
[PPQQA]
##[PPQQA]
#spats [P,*,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,P,*,*,A]
[PPQQA]
##[PPQQA]
#spats [P,P,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,P,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,Q,A]
[PPQQA]
##[PPQQA]
#spats [*,*,Q,*,A]
[PPQQA]
##[PPQQA]
#spats [*,*,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,P,*,*,A]
[PPQQA]
##[PPQQA]
#spats [*,P,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,P,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,*,*,A]
[PPQQA]
##[PPQQA]
#spats [P,*,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,P,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,*,A]
[PPQQA]
##[PPQQA]
#spats [*,*,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,P,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
###!
###! Matchings per PPQQAZ
#spats [P,P,Q,Q,A,Z]
[]
##[]
#spats [*,P,Q,Q,A,Z]
[]
##[]
#spats [P,*,Q,Q,A,Z]
[]
##[]
#spats [P,P,*,Q,A,Z]
[]
##[]
#spats [P,P,Q,*,A,Z]
[]
##[]
#spats [P,P,Q,Q,*,Z]
[]
##[]
#spats [P,P,Q,Q,A,*]
[]
##[]
#spats [*,*,Q,Q,A,Z]
[]
##[]
#spats [*,P,*,Q,A,Z]
[]
##[]
#spats [*,P,Q,*,A,Z]
[]
##[]
#spats [*,P,Q,Q,*,Z]
[]
##[]
#spats [*,P,Q,Q,A,*]
[]
##[]
#spats [P,*,*,Q,A,Z]
[]
##[]
#spats [P,*,Q,*,A,Z]
[]
##[]
#spats [P,*,Q,Q,*,Z]
[]
##[]
#spats [P,*,Q,Q,A,*]
[]
##[]
#spats [P,P,*,*,A,Z]
[]
##[]
#spats [P,P,*,Q,*,Z]
[]
##[]
#spats [P,P,*,Q,A,*]
[]
##[]
#spats [P,P,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,*,A,*]
[]
##[]
#spats [P,P,Q,Q,*,*]
[]
##[]
#spats [*,*,*,Q,A,Z]
[]
##[]
#spats [*,*,Q,*,A,Z]
[]
##[]
#spats [*,*,Q,Q,*,Z]
[]
##[]
#spats [*,*,Q,Q,A,*]
[]
##[]
#spats [*,P,*,*,A,Z]
[]
##[]
#spats [*,P,*,Q,*,Z]
[]
##[]
#spats [*,P,*,Q,A,*]
[]
##[]
#spats [*,P,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,*,A,*]
[]
##[]
#spats [*,P,Q,Q,*,*]
[]
##[]
#spats [P,*,*,*,A,Z]
[]
##[]
#spats [P,*,*,Q,*,Z]
[]
##[]
#spats [P,*,*,Q,A,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,A,*]
[]
##[]
#spats [P,*,Q,Q,*,*]
[]
##[]
#spats [P,P,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,A,*]
[]
##[]
#spats [P,P,*,Q,*,*]
[]
##[]
#spats [P,P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,A,Z]
[]
##[]
#spats [*,*,*,Q,*,Z]
[]
##[]
#spats [*,*,*,Q,A,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,A,*]
[]
##[]
#spats [*,*,Q,Q,*,*]
[]
##[]
#spats [*,P,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,A,*]
[]
##[]
#spats [*,P,*,Q,*,*]
[]
##[]
#spats [*,P,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,A,*]
[]
##[]
#spats [P,*,*,Q,*,*]
[]
##[]
#spats [P,*,Q,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,A,*]
[]
##[]
#spats [*,*,*,Q,*,*]
[]
##[]
#spats [*,*,Q,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPQQ
#spats [P,P,Q,Q]
[]
##[]
#spats [*,P,Q,Q]
[]
##[]
#spats [P,*,Q,Q]
[]
##[]
#spats [P,P,*,Q]
[]
##[]
#spats [P,P,Q,*]
[]
##[]
#spats [*,*,Q,Q]
[]
##[]
#spats [*,P,*,Q]
[]
##[]
#spats [*,P,Q,*]
[]
##[]
#spats [P,*,*,Q]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,P,*,*]
[PPCC]
##[PPCC]
#spats [*,*,*,Q]
[]
##[]
#spats [*,*,Q,*]
[]
##[]
#spats [*,P,*,*]
[PPCC]
##[PPCC]
#spats [P,*,*,*]
[PPCC]
##[PPCC]
#spats [*,*,*,*]
[PPCC]
##[PPCC]
###!
###! Matchings per PPQQB
#spats [P,P,Q,Q,B]
[PPQQB]
##[PPQQB]
#spats [*,P,Q,Q,B]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,Q,B]
[PPQQB]
##[PPQQB]
#spats [P,P,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [P,P,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [P,P,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,Q,Q,B]
[PPQQB]
##[PPQQB]
#spats [*,P,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [*,P,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [*,P,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,P,*,*,B]
[PPQQB]
##[PPQQB]
#spats [P,P,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,P,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,P,*,*,B]
[PPQQB]
##[PPQQB]
#spats [*,P,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,P,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,*,*,B]
[PPQQB]
##[PPQQB]
#spats [P,*,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,P,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,*,B]
[PPQQB]
##[PPQQB]
#spats [*,*,*,Q,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,Q,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,P,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
###!
###! Matchings per PPQQBZ
#spats [P,P,Q,Q,B,Z]
[]
##[]
#spats [*,P,Q,Q,B,Z]
[]
##[]
#spats [P,*,Q,Q,B,Z]
[]
##[]
#spats [P,P,*,Q,B,Z]
[]
##[]
#spats [P,P,Q,*,B,Z]
[]
##[]
#spats [P,P,Q,Q,*,Z]
[]
##[]
#spats [P,P,Q,Q,B,*]
[]
##[]
#spats [*,*,Q,Q,B,Z]
[]
##[]
#spats [*,P,*,Q,B,Z]
[]
##[]
#spats [*,P,Q,*,B,Z]
[]
##[]
#spats [*,P,Q,Q,*,Z]
[]
##[]
#spats [*,P,Q,Q,B,*]
[]
##[]
#spats [P,*,*,Q,B,Z]
[]
##[]
#spats [P,*,Q,*,B,Z]
[]
##[]
#spats [P,*,Q,Q,*,Z]
[]
##[]
#spats [P,*,Q,Q,B,*]
[]
##[]
#spats [P,P,*,*,B,Z]
[]
##[]
#spats [P,P,*,Q,*,Z]
[]
##[]
#spats [P,P,*,Q,B,*]
[]
##[]
#spats [P,P,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,*,B,*]
[]
##[]
#spats [P,P,Q,Q,*,*]
[]
##[]
#spats [*,*,*,Q,B,Z]
[]
##[]
#spats [*,*,Q,*,B,Z]
[]
##[]
#spats [*,*,Q,Q,*,Z]
[]
##[]
#spats [*,*,Q,Q,B,*]
[]
##[]
#spats [*,P,*,*,B,Z]
[]
##[]
#spats [*,P,*,Q,*,Z]
[]
##[]
#spats [*,P,*,Q,B,*]
[]
##[]
#spats [*,P,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,*,B,*]
[]
##[]
#spats [*,P,Q,Q,*,*]
[]
##[]
#spats [P,*,*,*,B,Z]
[]
##[]
#spats [P,*,*,Q,*,Z]
[]
##[]
#spats [P,*,*,Q,B,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,B,*]
[]
##[]
#spats [P,*,Q,Q,*,*]
[]
##[]
#spats [P,P,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,B,*]
[]
##[]
#spats [P,P,*,Q,*,*]
[]
##[]
#spats [P,P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,B,Z]
[]
##[]
#spats [*,*,*,Q,*,Z]
[]
##[]
#spats [*,*,*,Q,B,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,B,*]
[]
##[]
#spats [*,*,Q,Q,*,*]
[]
##[]
#spats [*,P,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,B,*]
[]
##[]
#spats [*,P,*,Q,*,*]
[]
##[]
#spats [*,P,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,B,*]
[]
##[]
#spats [P,*,*,Q,*,*]
[]
##[]
#spats [P,*,Q,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,B,*]
[]
##[]
#spats [*,*,*,Q,*,*]
[]
##[]
#spats [*,*,Q,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPC
#spats [P,P,C]
[]
##[]
#spats [*,P,C]
[]
##[]
#spats [P,*,C]
[]
##[]
#spats [P,P,*]
[]
##[]
#spats [*,*,C]
[]
##[]
#spats [*,P,*]
[]
##[]
#spats [P,*,*]
[]
##[]
#spats [*,*,*]
[]
##[]
###!
###! Matchings per PPCC
#spats [P,P,C,C]
[PPCC]
##[PPCC]
#spats [*,P,C,C]
[PPCC]
##[PPCC]
#spats [P,*,C,C]
[PPCC]
##[PPCC]
#spats [P,P,*,C]
[PPCC]
##[PPCC]
#spats [P,P,C,*]
[PPCC]
##[PPCC]
#spats [*,*,C,C]
[PPCC]
##[PPCC]
#spats [*,P,*,C]
[PPCC]
##[PPCC]
#spats [*,P,C,*]
[PPCC]
##[PPCC]
#spats [P,*,*,C]
[PPCC]
##[PPCC]
#spats [P,*,C,*]
[PPCC]
##[PPCC]
#spats [P,P,*,*]
[PPCC]
##[PPCC]
#spats [*,*,*,C]
[PPCC]
##[PPCC]
#spats [*,*,C,*]
[PPCC]
##[PPCC]
#spats [*,P,*,*]
[PPCC]
##[PPCC]
#spats [P,*,*,*]
[PPCC]
##[PPCC]
#spats [*,*,*,*]
[PPCC]
##[PPCC]
###!
###! Matchings per PPCCZ
#spats [P,P,C,C,Z]
[]
##[]
#spats [*,P,C,C,Z]
[]
##[]
#spats [P,*,C,C,Z]
[]
##[]
#spats [P,P,*,C,Z]
[]
##[]
#spats [P,P,C,*,Z]
[]
##[]
#spats [P,P,C,C,*]
[]
##[]
#spats [*,*,C,C,Z]
[]
##[]
#spats [*,P,*,C,Z]
[]
##[]
#spats [*,P,C,*,Z]
[]
##[]
#spats [*,P,C,C,*]
[]
##[]
#spats [P,*,*,C,Z]
[]
##[]
#spats [P,*,C,*,Z]
[]
##[]
#spats [P,*,C,C,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,C,*]
[]
##[]
#spats [P,P,C,*,*]
[]
##[]
#spats [*,*,*,C,Z]
[]
##[]
#spats [*,*,C,*,Z]
[]
##[]
#spats [*,*,C,C,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,C,*]
[]
##[]
#spats [*,P,C,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,C,*]
[]
##[]
#spats [P,*,C,*,*]
[]
##[]
#spats [P,P,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,C,*]
[]
##[]
#spats [*,*,C,*,*]
[]
##[]
#spats [*,P,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [P,*,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
#spats [*,*,*,*,*]
[PPQQA, PPQQB]
##[PPQQA, PPQQB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.5.15 Subcas 5O
###!           lp123 > 1  lp12 > lp123 + 1  l1 > lp12 + 1  l2 > lp12 + 1 l3 = lp123 + 1
###!           w1 = PPQQAA  w2 = PPQQBB  w3 = PPC
###!-------------------------------------------------------------------
###!
#init d5O dicc
###!
#ins PPQQAA
#ins PPQQBB
#ins PPC
###!
###! Prefixos per PPQQAA
#pre P

##
#pre PPQQA

##
#pre PPQQAA
PPQQAA
##PPQQAA
#pre ZPQQAA

##
#pre PPQQZA

##
#pre PPQQAZ

##
#pre ZPQQAAY

##
#pre PPQQAZY

##
#pre PPQQAAZ
PPQQAA
##PPQQAA
#pre ZPQQAAYY

##
#pre PPQQAZYY

##
#pre PPQQAAZY
PPQQAA
##PPQQAA
###!
###! Prefixos per PPQQBB
#pre P

##
#pre PPQQB

##
#pre PPQQBB
PPQQBB
##PPQQBB
#pre ZPQQBB

##
#pre PPQQZB

##
#pre PPQQBZ

##
#pre ZPQQBBY

##
#pre PPQQBZY

##
#pre PPQQBBZ
PPQQBB
##PPQQBB
#pre ZPQQBBYY

##
#pre PPQQBZYY

##
#pre PPQQBBZY
PPQQBB
##PPQQBB
###!
###! Prefixos per PPC
#pre P

##
#pre PP

##
#pre PPC
PPC
##PPC
#pre ZPC

##
#pre PZC

##
#pre PPZ

##
#pre ZPCY

##
#pre PPZY

##
#pre PPCZ
PPC
##PPC
#pre ZPCYY

##
#pre PPZYY

##
#pre PPCZY
PPC
##PPC
###!
###!
###! Matching de la cadena buida
#spats [""]
[]
##[]
###!
###! Matching de longitud 1
#spats [*]
[]
##[]
###!
###! Matchings per PPQQA
#spats [P,P,Q,Q,A]
[]
##[]
#spats [*,P,Q,Q,A]
[]
##[]
#spats [P,*,Q,Q,A]
[]
##[]
#spats [P,P,*,Q,A]
[]
##[]
#spats [P,P,Q,*,A]
[]
##[]
#spats [P,P,Q,Q,*]
[]
##[]
#spats [*,*,Q,Q,A]
[]
##[]
#spats [*,P,*,Q,A]
[]
##[]
#spats [*,P,Q,*,A]
[]
##[]
#spats [*,P,Q,Q,*]
[]
##[]
#spats [P,*,*,Q,A]
[]
##[]
#spats [P,*,Q,*,A]
[]
##[]
#spats [P,*,Q,Q,*]
[]
##[]
#spats [P,P,*,*,A]
[]
##[]
#spats [P,P,*,Q,*]
[]
##[]
#spats [P,P,Q,*,*]
[]
##[]
#spats [*,*,*,Q,A]
[]
##[]
#spats [*,*,Q,*,A]
[]
##[]
#spats [*,*,Q,Q,*]
[]
##[]
#spats [*,P,*,*,A]
[]
##[]
#spats [*,P,*,Q,*]
[]
##[]
#spats [*,P,Q,*,*]
[]
##[]
#spats [P,*,*,*,A]
[]
##[]
#spats [P,*,*,Q,*]
[]
##[]
#spats [P,*,Q,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,A]
[]
##[]
#spats [*,*,*,Q,*]
[]
##[]
#spats [*,*,Q,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPQQAA
#spats [P,P,Q,Q,A,A]
[PPQQAA]
##[PPQQAA]
#spats [*,P,Q,Q,A,A]
[PPQQAA]
##[PPQQAA]
#spats [P,*,Q,Q,A,A]
[PPQQAA]
##[PPQQAA]
#spats [P,P,*,Q,A,A]
[PPQQAA]
##[PPQQAA]
#spats [P,P,Q,*,A,A]
[PPQQAA]
##[PPQQAA]
#spats [P,P,Q,Q,*,A]
[PPQQAA]
##[PPQQAA]
#spats [P,P,Q,Q,A,*]
[PPQQAA]
##[PPQQAA]
#spats [*,*,Q,Q,A,A]
[PPQQAA]
##[PPQQAA]
#spats [*,P,*,Q,A,A]
[PPQQAA]
##[PPQQAA]
#spats [*,P,Q,*,A,A]
[PPQQAA]
##[PPQQAA]
#spats [*,P,Q,Q,*,A]
[PPQQAA]
##[PPQQAA]
#spats [*,P,Q,Q,A,*]
[PPQQAA]
##[PPQQAA]
#spats [P,*,*,Q,A,A]
[PPQQAA]
##[PPQQAA]
#spats [P,*,Q,*,A,A]
[PPQQAA]
##[PPQQAA]
#spats [P,*,Q,Q,*,A]
[PPQQAA]
##[PPQQAA]
#spats [P,*,Q,Q,A,*]
[PPQQAA]
##[PPQQAA]
#spats [P,P,*,*,A,A]
[PPQQAA]
##[PPQQAA]
#spats [P,P,*,Q,*,A]
[PPQQAA]
##[PPQQAA]
#spats [P,P,*,Q,A,*]
[PPQQAA]
##[PPQQAA]
#spats [P,P,Q,*,*,A]
[PPQQAA]
##[PPQQAA]
#spats [P,P,Q,*,A,*]
[PPQQAA]
##[PPQQAA]
#spats [P,P,Q,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,*,*,Q,A,A]
[PPQQAA]
##[PPQQAA]
#spats [*,*,Q,*,A,A]
[PPQQAA]
##[PPQQAA]
#spats [*,*,Q,Q,*,A]
[PPQQAA]
##[PPQQAA]
#spats [*,*,Q,Q,A,*]
[PPQQAA]
##[PPQQAA]
#spats [*,P,*,*,A,A]
[PPQQAA]
##[PPQQAA]
#spats [*,P,*,Q,*,A]
[PPQQAA]
##[PPQQAA]
#spats [*,P,*,Q,A,*]
[PPQQAA]
##[PPQQAA]
#spats [*,P,Q,*,*,A]
[PPQQAA]
##[PPQQAA]
#spats [*,P,Q,*,A,*]
[PPQQAA]
##[PPQQAA]
#spats [*,P,Q,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,*,*,*,A,A]
[PPQQAA]
##[PPQQAA]
#spats [P,*,*,Q,*,A]
[PPQQAA]
##[PPQQAA]
#spats [P,*,*,Q,A,*]
[PPQQAA]
##[PPQQAA]
#spats [P,*,Q,*,*,A]
[PPQQAA]
##[PPQQAA]
#spats [P,*,Q,*,A,*]
[PPQQAA]
##[PPQQAA]
#spats [P,*,Q,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,P,*,*,*,A]
[PPQQAA]
##[PPQQAA]
#spats [P,P,*,*,A,*]
[PPQQAA]
##[PPQQAA]
#spats [P,P,*,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,P,Q,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,*,*,*,A,A]
[PPQQAA]
##[PPQQAA]
#spats [*,*,*,Q,*,A]
[PPQQAA]
##[PPQQAA]
#spats [*,*,*,Q,A,*]
[PPQQAA]
##[PPQQAA]
#spats [*,*,Q,*,*,A]
[PPQQAA]
##[PPQQAA]
#spats [*,*,Q,*,A,*]
[PPQQAA]
##[PPQQAA]
#spats [*,*,Q,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,P,*,*,*,A]
[PPQQAA]
##[PPQQAA]
#spats [*,P,*,*,A,*]
[PPQQAA]
##[PPQQAA]
#spats [*,P,*,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,P,Q,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,*,*,*,*,A]
[PPQQAA]
##[PPQQAA]
#spats [P,*,*,*,A,*]
[PPQQAA]
##[PPQQAA]
#spats [P,*,*,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,*,Q,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,P,*,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,*,*,*,*,A]
[PPQQAA]
##[PPQQAA]
#spats [*,*,*,*,A,*]
[PPQQAA]
##[PPQQAA]
#spats [*,*,*,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,*,Q,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,P,*,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,*,*,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,*,*,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
###!
###! Matchings per PPQQAAZ
#spats [P,P,Q,Q,A,A,Z]
[]
##[]
#spats [*,P,Q,Q,A,A,Z]
[]
##[]
#spats [P,*,Q,Q,A,A,Z]
[]
##[]
#spats [P,P,*,Q,A,A,Z]
[]
##[]
#spats [P,P,Q,*,A,A,Z]
[]
##[]
#spats [P,P,Q,Q,*,A,Z]
[]
##[]
#spats [P,P,Q,Q,A,*,Z]
[]
##[]
#spats [P,P,Q,Q,A,A,*]
[]
##[]
#spats [*,*,Q,Q,A,A,Z]
[]
##[]
#spats [*,P,*,Q,A,A,Z]
[]
##[]
#spats [*,P,Q,*,A,A,Z]
[]
##[]
#spats [*,P,Q,Q,*,A,Z]
[]
##[]
#spats [*,P,Q,Q,A,*,Z]
[]
##[]
#spats [*,P,Q,Q,A,A,*]
[]
##[]
#spats [P,*,*,Q,A,A,Z]
[]
##[]
#spats [P,*,Q,*,A,A,Z]
[]
##[]
#spats [P,*,Q,Q,*,A,Z]
[]
##[]
#spats [P,*,Q,Q,A,*,Z]
[]
##[]
#spats [P,*,Q,Q,A,A,*]
[]
##[]
#spats [P,P,*,*,A,A,Z]
[]
##[]
#spats [P,P,*,Q,*,A,Z]
[]
##[]
#spats [P,P,*,Q,A,*,Z]
[]
##[]
#spats [P,P,*,Q,A,A,*]
[]
##[]
#spats [P,P,Q,*,*,A,Z]
[]
##[]
#spats [P,P,Q,*,A,*,Z]
[]
##[]
#spats [P,P,Q,*,A,A,*]
[]
##[]
#spats [P,P,Q,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,Q,*,A,*]
[]
##[]
#spats [P,P,Q,Q,A,*,*]
[]
##[]
#spats [*,*,*,Q,A,A,Z]
[]
##[]
#spats [*,*,Q,*,A,A,Z]
[]
##[]
#spats [*,*,Q,Q,*,A,Z]
[]
##[]
#spats [*,*,Q,Q,A,*,Z]
[]
##[]
#spats [*,*,Q,Q,A,A,*]
[]
##[]
#spats [*,P,*,*,A,A,Z]
[]
##[]
#spats [*,P,*,Q,*,A,Z]
[]
##[]
#spats [*,P,*,Q,A,*,Z]
[]
##[]
#spats [*,P,*,Q,A,A,*]
[]
##[]
#spats [*,P,Q,*,*,A,Z]
[]
##[]
#spats [*,P,Q,*,A,*,Z]
[]
##[]
#spats [*,P,Q,*,A,A,*]
[]
##[]
#spats [*,P,Q,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,Q,*,A,*]
[]
##[]
#spats [*,P,Q,Q,A,*,*]
[]
##[]
#spats [P,*,*,*,A,A,Z]
[]
##[]
#spats [P,*,*,Q,*,A,Z]
[]
##[]
#spats [P,*,*,Q,A,*,Z]
[]
##[]
#spats [P,*,*,Q,A,A,*]
[]
##[]
#spats [P,*,Q,*,*,A,Z]
[]
##[]
#spats [P,*,Q,*,A,*,Z]
[]
##[]
#spats [P,*,Q,*,A,A,*]
[]
##[]
#spats [P,*,Q,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,Q,*,A,*]
[]
##[]
#spats [P,*,Q,Q,A,*,*]
[]
##[]
#spats [P,P,*,*,*,A,Z]
[]
##[]
#spats [P,P,*,*,A,*,Z]
[]
##[]
#spats [P,P,*,*,A,A,*]
[]
##[]
#spats [P,P,*,Q,*,*,Z]
[]
##[]
#spats [P,P,*,Q,*,A,*]
[]
##[]
#spats [P,P,*,Q,A,*,*]
[]
##[]
#spats [P,P,Q,*,*,*,Z]
[]
##[]
#spats [P,P,Q,*,*,A,*]
[]
##[]
#spats [P,P,Q,*,A,*,*]
[]
##[]
#spats [P,P,Q,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,A,A,Z]
[]
##[]
#spats [*,*,*,Q,*,A,Z]
[]
##[]
#spats [*,*,*,Q,A,*,Z]
[]
##[]
#spats [*,*,*,Q,A,A,*]
[]
##[]
#spats [*,*,Q,*,*,A,Z]
[]
##[]
#spats [*,*,Q,*,A,*,Z]
[]
##[]
#spats [*,*,Q,*,A,A,*]
[]
##[]
#spats [*,*,Q,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,Q,*,A,*]
[]
##[]
#spats [*,*,Q,Q,A,*,*]
[]
##[]
#spats [*,P,*,*,*,A,Z]
[]
##[]
#spats [*,P,*,*,A,*,Z]
[]
##[]
#spats [*,P,*,*,A,A,*]
[]
##[]
#spats [*,P,*,Q,*,*,Z]
[]
##[]
#spats [*,P,*,Q,*,A,*]
[]
##[]
#spats [*,P,*,Q,A,*,*]
[]
##[]
#spats [*,P,Q,*,*,*,Z]
[]
##[]
#spats [*,P,Q,*,*,A,*]
[]
##[]
#spats [*,P,Q,*,A,*,*]
[]
##[]
#spats [*,P,Q,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,A,Z]
[]
##[]
#spats [P,*,*,*,A,*,Z]
[]
##[]
#spats [P,*,*,*,A,A,*]
[]
##[]
#spats [P,*,*,Q,*,*,Z]
[]
##[]
#spats [P,*,*,Q,*,A,*]
[]
##[]
#spats [P,*,*,Q,A,*,*]
[]
##[]
#spats [P,*,Q,*,*,*,Z]
[]
##[]
#spats [P,*,Q,*,*,A,*]
[]
##[]
#spats [P,*,Q,*,A,*,*]
[]
##[]
#spats [P,*,Q,Q,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,*,A,*]
[]
##[]
#spats [P,P,*,*,A,*,*]
[]
##[]
#spats [P,P,*,Q,*,*,*]
[]
##[]
#spats [P,P,Q,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,A,Z]
[]
##[]
#spats [*,*,*,*,A,*,Z]
[]
##[]
#spats [*,*,*,*,A,A,*]
[]
##[]
#spats [*,*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,*,Q,*,A,*]
[]
##[]
#spats [*,*,*,Q,A,*,*]
[]
##[]
#spats [*,*,Q,*,*,*,Z]
[]
##[]
#spats [*,*,Q,*,*,A,*]
[]
##[]
#spats [*,*,Q,*,A,*,*]
[]
##[]
#spats [*,*,Q,Q,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,*,A,*]
[]
##[]
#spats [*,P,*,*,A,*,*]
[]
##[]
#spats [*,P,*,Q,*,*,*]
[]
##[]
#spats [*,P,Q,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,*,A,*]
[]
##[]
#spats [P,*,*,*,A,*,*]
[]
##[]
#spats [P,*,*,Q,*,*,*]
[]
##[]
#spats [P,*,Q,*,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,*,A,*]
[]
##[]
#spats [*,*,*,*,A,*,*]
[]
##[]
#spats [*,*,*,Q,*,*,*]
[]
##[]
#spats [*,*,Q,*,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPQQB
#spats [P,P,Q,Q,B]
[]
##[]
#spats [*,P,Q,Q,B]
[]
##[]
#spats [P,*,Q,Q,B]
[]
##[]
#spats [P,P,*,Q,B]
[]
##[]
#spats [P,P,Q,*,B]
[]
##[]
#spats [P,P,Q,Q,*]
[]
##[]
#spats [*,*,Q,Q,B]
[]
##[]
#spats [*,P,*,Q,B]
[]
##[]
#spats [*,P,Q,*,B]
[]
##[]
#spats [*,P,Q,Q,*]
[]
##[]
#spats [P,*,*,Q,B]
[]
##[]
#spats [P,*,Q,*,B]
[]
##[]
#spats [P,*,Q,Q,*]
[]
##[]
#spats [P,P,*,*,B]
[]
##[]
#spats [P,P,*,Q,*]
[]
##[]
#spats [P,P,Q,*,*]
[]
##[]
#spats [*,*,*,Q,B]
[]
##[]
#spats [*,*,Q,*,B]
[]
##[]
#spats [*,*,Q,Q,*]
[]
##[]
#spats [*,P,*,*,B]
[]
##[]
#spats [*,P,*,Q,*]
[]
##[]
#spats [*,P,Q,*,*]
[]
##[]
#spats [P,*,*,*,B]
[]
##[]
#spats [P,*,*,Q,*]
[]
##[]
#spats [P,*,Q,*,*]
[]
##[]
#spats [P,P,*,*,*]
[]
##[]
#spats [*,*,*,*,B]
[]
##[]
#spats [*,*,*,Q,*]
[]
##[]
#spats [*,*,Q,*,*]
[]
##[]
#spats [*,P,*,*,*]
[]
##[]
#spats [P,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*]
[]
##[]
###!
###! Matchings per PPQQBB
#spats [P,P,Q,Q,B,B]
[PPQQBB]
##[PPQQBB]
#spats [*,P,Q,Q,B,B]
[PPQQBB]
##[PPQQBB]
#spats [P,*,Q,Q,B,B]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,Q,B,B]
[PPQQBB]
##[PPQQBB]
#spats [P,P,Q,*,B,B]
[PPQQBB]
##[PPQQBB]
#spats [P,P,Q,Q,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,P,Q,Q,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,*,Q,Q,B,B]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,Q,B,B]
[PPQQBB]
##[PPQQBB]
#spats [*,P,Q,*,B,B]
[PPQQBB]
##[PPQQBB]
#spats [*,P,Q,Q,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,P,Q,Q,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,Q,B,B]
[PPQQBB]
##[PPQQBB]
#spats [P,*,Q,*,B,B]
[PPQQBB]
##[PPQQBB]
#spats [P,*,Q,Q,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,*,Q,Q,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,*,B,B]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,Q,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,Q,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,P,Q,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,P,Q,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,P,Q,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,*,*,Q,B,B]
[PPQQBB]
##[PPQQBB]
#spats [*,*,Q,*,B,B]
[PPQQBB]
##[PPQQBB]
#spats [*,*,Q,Q,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,*,Q,Q,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,*,B,B]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,Q,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,Q,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,P,Q,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,P,Q,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,P,Q,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,*,*,*,B,B]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,Q,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,Q,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,*,Q,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,*,Q,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,*,Q,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,P,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,P,Q,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,*,*,*,B,B]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,Q,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,Q,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,*,Q,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,*,Q,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,*,Q,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,P,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,P,Q,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,*,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,*,Q,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,P,*,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,*,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,Q,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,*,Q,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,P,*,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [P,*,*,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
#spats [*,*,*,*,*,*]
[PPQQAA, PPQQBB]
##[PPQQAA, PPQQBB]
###!
###! Matchings per PPQQBBZ
#spats [P,P,Q,Q,B,B,Z]
[]
##[]
#spats [*,P,Q,Q,B,B,Z]
[]
##[]
#spats [P,*,Q,Q,B,B,Z]
[]
##[]
#spats [P,P,*,Q,B,B,Z]
[]
##[]
#spats [P,P,Q,*,B,B,Z]
[]
##[]
#spats [P,P,Q,Q,*,B,Z]
[]
##[]
#spats [P,P,Q,Q,B,*,Z]
[]
##[]
#spats [P,P,Q,Q,B,B,*]
[]
##[]
#spats [*,*,Q,Q,B,B,Z]
[]
##[]
#spats [*,P,*,Q,B,B,Z]
[]
##[]
#spats [*,P,Q,*,B,B,Z]
[]
##[]
#spats [*,P,Q,Q,*,B,Z]
[]
##[]
#spats [*,P,Q,Q,B,*,Z]
[]
##[]
#spats [*,P,Q,Q,B,B,*]
[]
##[]
#spats [P,*,*,Q,B,B,Z]
[]
##[]
#spats [P,*,Q,*,B,B,Z]
[]
##[]
#spats [P,*,Q,Q,*,B,Z]
[]
##[]
#spats [P,*,Q,Q,B,*,Z]
[]
##[]
#spats [P,*,Q,Q,B,B,*]
[]
##[]
#spats [P,P,*,*,B,B,Z]
[]
##[]
#spats [P,P,*,Q,*,B,Z]
[]
##[]
#spats [P,P,*,Q,B,*,Z]
[]
##[]
#spats [P,P,*,Q,B,B,*]
[]
##[]
#spats [P,P,Q,*,*,B,Z]
[]
##[]
#spats [P,P,Q,*,B,*,Z]
[]
##[]
#spats [P,P,Q,*,B,B,*]
[]
##[]
#spats [P,P,Q,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,Q,*,B,*]
[]
##[]
#spats [P,P,Q,Q,B,*,*]
[]
##[]
#spats [*,*,*,Q,B,B,Z]
[]
##[]
#spats [*,*,Q,*,B,B,Z]
[]
##[]
#spats [*,*,Q,Q,*,B,Z]
[]
##[]
#spats [*,*,Q,Q,B,*,Z]
[]
##[]
#spats [*,*,Q,Q,B,B,*]
[]
##[]
#spats [*,P,*,*,B,B,Z]
[]
##[]
#spats [*,P,*,Q,*,B,Z]
[]
##[]
#spats [*,P,*,Q,B,*,Z]
[]
##[]
#spats [*,P,*,Q,B,B,*]
[]
##[]
#spats [*,P,Q,*,*,B,Z]
[]
##[]
#spats [*,P,Q,*,B,*,Z]
[]
##[]
#spats [*,P,Q,*,B,B,*]
[]
##[]
#spats [*,P,Q,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,Q,*,B,*]
[]
##[]
#spats [*,P,Q,Q,B,*,*]
[]
##[]
#spats [P,*,*,*,B,B,Z]
[]
##[]
#spats [P,*,*,Q,*,B,Z]
[]
##[]
#spats [P,*,*,Q,B,*,Z]
[]
##[]
#spats [P,*,*,Q,B,B,*]
[]
##[]
#spats [P,*,Q,*,*,B,Z]
[]
##[]
#spats [P,*,Q,*,B,*,Z]
[]
##[]
#spats [P,*,Q,*,B,B,*]
[]
##[]
#spats [P,*,Q,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,Q,*,B,*]
[]
##[]
#spats [P,*,Q,Q,B,*,*]
[]
##[]
#spats [P,P,*,*,*,B,Z]
[]
##[]
#spats [P,P,*,*,B,*,Z]
[]
##[]
#spats [P,P,*,*,B,B,*]
[]
##[]
#spats [P,P,*,Q,*,*,Z]
[]
##[]
#spats [P,P,*,Q,*,B,*]
[]
##[]
#spats [P,P,*,Q,B,*,*]
[]
##[]
#spats [P,P,Q,*,*,*,Z]
[]
##[]
#spats [P,P,Q,*,*,B,*]
[]
##[]
#spats [P,P,Q,*,B,*,*]
[]
##[]
#spats [P,P,Q,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,B,B,Z]
[]
##[]
#spats [*,*,*,Q,*,B,Z]
[]
##[]
#spats [*,*,*,Q,B,*,Z]
[]
##[]
#spats [*,*,*,Q,B,B,*]
[]
##[]
#spats [*,*,Q,*,*,B,Z]
[]
##[]
#spats [*,*,Q,*,B,*,Z]
[]
##[]
#spats [*,*,Q,*,B,B,*]
[]
##[]
#spats [*,*,Q,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,Q,*,B,*]
[]
##[]
#spats [*,*,Q,Q,B,*,*]
[]
##[]
#spats [*,P,*,*,*,B,Z]
[]
##[]
#spats [*,P,*,*,B,*,Z]
[]
##[]
#spats [*,P,*,*,B,B,*]
[]
##[]
#spats [*,P,*,Q,*,*,Z]
[]
##[]
#spats [*,P,*,Q,*,B,*]
[]
##[]
#spats [*,P,*,Q,B,*,*]
[]
##[]
#spats [*,P,Q,*,*,*,Z]
[]
##[]
#spats [*,P,Q,*,*,B,*]
[]
##[]
#spats [*,P,Q,*,B,*,*]
[]
##[]
#spats [*,P,Q,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,B,Z]
[]
##[]
#spats [P,*,*,*,B,*,Z]
[]
##[]
#spats [P,*,*,*,B,B,*]
[]
##[]
#spats [P,*,*,Q,*,*,Z]
[]
##[]
#spats [P,*,*,Q,*,B,*]
[]
##[]
#spats [P,*,*,Q,B,*,*]
[]
##[]
#spats [P,*,Q,*,*,*,Z]
[]
##[]
#spats [P,*,Q,*,*,B,*]
[]
##[]
#spats [P,*,Q,*,B,*,*]
[]
##[]
#spats [P,*,Q,Q,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,*,B,*]
[]
##[]
#spats [P,P,*,*,B,*,*]
[]
##[]
#spats [P,P,*,Q,*,*,*]
[]
##[]
#spats [P,P,Q,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,B,Z]
[]
##[]
#spats [*,*,*,*,B,*,Z]
[]
##[]
#spats [*,*,*,*,B,B,*]
[]
##[]
#spats [*,*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,*,Q,*,B,*]
[]
##[]
#spats [*,*,*,Q,B,*,*]
[]
##[]
#spats [*,*,Q,*,*,*,Z]
[]
##[]
#spats [*,*,Q,*,*,B,*]
[]
##[]
#spats [*,*,Q,*,B,*,*]
[]
##[]
#spats [*,*,Q,Q,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,*,B,*]
[]
##[]
#spats [*,P,*,*,B,*,*]
[]
##[]
#spats [*,P,*,Q,*,*,*]
[]
##[]
#spats [*,P,Q,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,*,B,*]
[]
##[]
#spats [P,*,*,*,B,*,*]
[]
##[]
#spats [P,*,*,Q,*,*,*]
[]
##[]
#spats [P,*,Q,*,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*,Z]
[]
##[]
#spats [*,*,*,*,*,B,*]
[]
##[]
#spats [*,*,*,*,B,*,*]
[]
##[]
#spats [*,*,*,Q,*,*,*]
[]
##[]
#spats [*,*,Q,*,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*,*]
[]
##[]
#spats [P,*,*,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,*,*]
