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
###103.5.16 Subcas 5P
###!           lp123 > 1  lp12 > lp123 + 1  l1 > lp12 + 1  l2 > lp12 + 1 l3 > lp123 + 1
###!           w1 = PPQQAA  w2 = PPQQBB  w3 = PPCC
###!-------------------------------------------------------------------
###!
#init d5P dicc
###!
#ins PPQQAA
#ins PPQQBB
#ins PPCC
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
###103.6 CAS NÚMERO 6
###!     Una d'elles es prefixe d'una altre (w1 de w2, per tant p12 = w1)
###!     y comparteix prefixe comú amb la tercera, però no es prefixe
###!     seu ni viceversa; per tant totes tres tenen un prefixe comú p123:
###!     p123 = p13 = p23 = P+   p12 = w1 = P+Q+   w2 = P+Q+B+   w3 = P+C+
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###103.6.1 Subcas 6A
###!       lp123 = 1  lp12 = l1 = lp123 + 1  l2 = l1 + 1  l3 = lp123 + 1
###!       w1 = PQ  w2 = PQB  w3 = PC
###!-------------------------------------------------------------------
###!
#init d6A dicc
###!
#ins PQ
#ins PQB
#ins PC
###!
###! Prefixos per PQ
#pre P

##
#pre PQ
PQ
##PQ
#pre ZQ

##
#pre PZ

##
#pre ZQY

##
#pre PZY

##
#pre PQZ
PQ
##PQ
#pre ZQYY

##
#pre PZYY

##
#pre PQZY
PQ
##PQ
###!
###! Prefixos per PQB
#pre P

##
#pre PQ
PQ
##PQ
#pre PQB
PQB
##PQB
#pre ZQB

##
#pre PZB

##
#pre PQZ
PQ
##PQ
#pre ZQBY

##
#pre PQZY
PQ
##PQ
#pre PQBZ
PQB
##PQB
#pre ZQBYY

##
#pre PQZYY
PQ
##PQ
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
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PQ
#spats [P,Q]
[PQ]
##[PQ]
#spats [*,Q]
[PQ]
##[PQ]
#spats [P,*]
[PC, PQ]
##[PC, PQ]
#spats [*,*]
[PC, PQ]
##[PC, PQ]
###!
###! Matchings per PQZ
#spats [P,Q,Z]
[]
##[]
#spats [*,Q,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,Q,*]
[PQB]
##[PQB]
#spats [*,*,Z]
[]
##[]
#spats [*,Q,*]
[PQB]
##[PQB]
#spats [P,*,*]
[PQB]
##[PQB]
#spats [*,*,*]
[PQB]
##[PQB]
###!
###! Matchings per PQ
#spats [P,Q]
[PQ]
##[PQ]
#spats [*,Q]
[PQ]
##[PQ]
#spats [P,*]
[PC, PQ]
##[PC, PQ]
#spats [*,*]
[PC, PQ]
##[PC, PQ]
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
[PQB]
##[PQB]
#spats [*,*,B]
[PQB]
##[PQB]
#spats [*,Q,*]
[PQB]
##[PQB]
#spats [P,*,*]
[PQB]
##[PQB]
#spats [*,*,*]
[PQB]
##[PQB]
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
[PC, PQ]
##[PC, PQ]
#spats [*,*]
[PC, PQ]
##[PC, PQ]
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
[PQB]
##[PQB]
#spats [*,*,*]
[PQB]
##[PQB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.6.2 Subcas 6B
###!       lp123 = 1  lp12 = l1 = lp123 + 1  l2 = l1 + 1  l3 > lp123 + 1
###!       w1 = PQ  w2 = PQB  w3 = PCC
###!-------------------------------------------------------------------
###!
#init d6B dicc
###!
#ins PQ
#ins PQB
#ins PCC
###!
###! Prefixos per PQ
#pre P

##
#pre PQ
PQ
##PQ
#pre ZQ

##
#pre PZ

##
#pre ZQY

##
#pre PZY

##
#pre PQZ
PQ
##PQ
#pre ZQYY

##
#pre PZYY

##
#pre PQZY
PQ
##PQ
###!
###! Prefixos per PQB
#pre P

##
#pre PQ
PQ
##PQ
#pre PQB
PQB
##PQB
#pre ZQB

##
#pre PZB

##
#pre PQZ
PQ
##PQ
#pre ZQBY

##
#pre PQZY
PQ
##PQ
#pre PQBZ
PQB
##PQB
#pre ZQBYY

##
#pre PQZYY
PQ
##PQ
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
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PQ
#spats [P,Q]
[PQ]
##[PQ]
#spats [*,Q]
[PQ]
##[PQ]
#spats [P,*]
[PQ]
##[PQ]
#spats [*,*]
[PQ]
##[PQ]
###!
###! Matchings per PQZ
#spats [P,Q,Z]
[]
##[]
#spats [*,Q,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,Q,*]
[PQB]
##[PQB]
#spats [*,*,Z]
[]
##[]
#spats [*,Q,*]
[PQB]
##[PQB]
#spats [P,*,*]
[PCC, PQB]
##[PCC, PQB]
#spats [*,*,*]
[PCC, PQB]
##[PCC, PQB]
###!
###! Matchings per PQ
#spats [P,Q]
[PQ]
##[PQ]
#spats [*,Q]
[PQ]
##[PQ]
#spats [P,*]
[PQ]
##[PQ]
#spats [*,*]
[PQ]
##[PQ]
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
[PQB]
##[PQB]
#spats [*,*,B]
[PQB]
##[PQB]
#spats [*,Q,*]
[PQB]
##[PQB]
#spats [P,*,*]
[PCC, PQB]
##[PCC, PQB]
#spats [*,*,*]
[PCC, PQB]
##[PCC, PQB]
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
[PQ]
##[PQ]
#spats [*,*]
[PQ]
##[PQ]
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
[PCC, PQB]
##[PCC, PQB]
#spats [*,*,*]
[PCC, PQB]
##[PCC, PQB]
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
###103.6.3 Subcas 6C
###!       lp123 = 1  lp12 = l1 = lp123 + 1  l2 > l1 + 1  l3 = lp123 + 1
###!       w1 = PQ  w2 = PQBB  w3 = PC
###!-------------------------------------------------------------------
###!
#init d6C dicc
###!
#ins PQ
#ins PQBB
#ins PC
###!
###! Prefixos per PQ
#pre P

##
#pre PQ
PQ
##PQ
#pre ZQ

##
#pre PZ

##
#pre ZQY

##
#pre PZY

##
#pre PQZ
PQ
##PQ
#pre ZQYY

##
#pre PZYY

##
#pre PQZY
PQ
##PQ
###!
###! Prefixos per PQBB
#pre P

##
#pre PQB
PQ
##PQ
#pre PQBB
PQBB
##PQBB
#pre ZQBB

##
#pre PQZB
PQ
##PQ
#pre PQBZ
PQ
##PQ
#pre ZQBBY

##
#pre PQBZY
PQ
##PQ
#pre PQBBZ
PQBB
##PQBB
#pre ZQBBYY

##
#pre PQBZYY
PQ
##PQ
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
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PQ
#spats [P,Q]
[PQ]
##[PQ]
#spats [*,Q]
[PQ]
##[PQ]
#spats [P,*]
[PC, PQ]
##[PC, PQ]
#spats [*,*]
[PC, PQ]
##[PC, PQ]
###!
###! Matchings per PQZ
#spats [P,Q,Z]
[]
##[]
#spats [*,Q,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,Q,*]
[]
##[]
#spats [*,*,Z]
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
[PQBB]
##[PQBB]
#spats [*,*,*,B]
[PQBB]
##[PQBB]
#spats [*,*,B,*]
[PQBB]
##[PQBB]
#spats [*,Q,*,*]
[PQBB]
##[PQBB]
#spats [P,*,*,*]
[PQBB]
##[PQBB]
#spats [*,*,*,*]
[PQBB]
##[PQBB]
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
[PC, PQ]
##[PC, PQ]
#spats [*,*]
[PC, PQ]
##[PC, PQ]
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
###103.6.4 Subcas 6D
###!       lp123 = 1  lp12 = l1 = lp123 + 1  l2 > l1 + 1  l3 > lp123 + 1
###!       w1 = PQ  w2 = PQBB  w3 = PCC
###!-------------------------------------------------------------------
###!
#init d6D dicc
###!
#ins PQ
#ins PQBB
#ins PCC
###!
###! Prefixos per PQ
#pre P

##
#pre PQ
PQ
##PQ
#pre ZQ

##
#pre PZ

##
#pre ZQY

##
#pre PZY

##
#pre PQZ
PQ
##PQ
#pre ZQYY

##
#pre PZYY

##
#pre PQZY
PQ
##PQ
###!
###! Prefixos per PQBB
#pre P

##
#pre PQB
PQ
##PQ
#pre PQBB
PQBB
##PQBB
#pre ZQBB

##
#pre PQZB
PQ
##PQ
#pre PQBZ
PQ
##PQ
#pre ZQBBY

##
#pre PQBZY
PQ
##PQ
#pre PQBBZ
PQBB
##PQBB
#pre ZQBBYY

##
#pre PQBZYY
PQ
##PQ
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
###! Matchings per P
#spats [P]
[]
##[]
#spats [*]
[]
##[]
###!
###! Matchings per PQ
#spats [P,Q]
[PQ]
##[PQ]
#spats [*,Q]
[PQ]
##[PQ]
#spats [P,*]
[PQ]
##[PQ]
#spats [*,*]
[PQ]
##[PQ]
###!
###! Matchings per PQZ
#spats [P,Q,Z]
[]
##[]
#spats [*,Q,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,Q,*]
[]
##[]
#spats [*,*,Z]
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
[PQBB]
##[PQBB]
#spats [*,*,*,B]
[PQBB]
##[PQBB]
#spats [*,*,B,*]
[PQBB]
##[PQBB]
#spats [*,Q,*,*]
[PQBB]
##[PQBB]
#spats [P,*,*,*]
[PQBB]
##[PQBB]
#spats [*,*,*,*]
[PQBB]
##[PQBB]
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
[PQ]
##[PQ]
#spats [*,*]
[PQ]
##[PQ]
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
[PQBB]
##[PQBB]
#spats [*,*,*,*]
[PQBB]
##[PQBB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.6.5 Subcas 6E
###!       lp123 = 1  lp12 = l1 > lp123 + 1  l2 = l1 + 1  l3 = lp123 + 1
###!       w1 = PQQ  w2 = PQQB  w3 = PC
###!-------------------------------------------------------------------
###!
#init d6E dicc
###!
#ins PQQ
#ins PQQB
#ins PC
###!
###! Prefixos per PQQ
#pre P

##
#pre PQ

##
#pre PQQ
PQQ
##PQQ
#pre ZQQ

##
#pre PZQ

##
#pre PQZ

##
#pre ZQQY

##
#pre PQZY

##
#pre PQQZ
PQQ
##PQQ
#pre ZQQYY

##
#pre PQZYY

##
#pre PQQZY
PQQ
##PQQ
###!
###! Prefixos per PQQB
#pre P

##
#pre PQQ
PQQ
##PQQ
#pre PQQB
PQQB
##PQQB
#pre ZQQB

##
#pre PQZB

##
#pre PQQZ
PQQ
##PQQ
#pre ZQQBY

##
#pre PQQZY
PQQ
##PQQ
#pre PQQBZ
PQQB
##PQQB
#pre ZQQBYY

##
#pre PQQZYY
PQQ
##PQQ
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
###! Matchings per PQQ
#spats [P,Q,Q]
[PQQ]
##[PQQ]
#spats [*,Q,Q]
[PQQ]
##[PQQ]
#spats [P,*,Q]
[PQQ]
##[PQQ]
#spats [P,Q,*]
[PQQ]
##[PQQ]
#spats [*,*,Q]
[PQQ]
##[PQQ]
#spats [*,Q,*]
[PQQ]
##[PQQ]
#spats [P,*,*]
[PQQ]
##[PQQ]
#spats [*,*,*]
[PQQ]
##[PQQ]
###!
###! Matchings per PQQZ
#spats [P,Q,Q,Z]
[]
##[]
#spats [*,Q,Q,Z]
[]
##[]
#spats [P,*,Q,Z]
[]
##[]
#spats [P,Q,*,Z]
[]
##[]
#spats [P,Q,Q,*]
[PQQB]
##[PQQB]
#spats [*,*,Q,Z]
[]
##[]
#spats [*,Q,*,Z]
[]
##[]
#spats [*,Q,Q,*]
[PQQB]
##[PQQB]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,Q,*]
[PQQB]
##[PQQB]
#spats [P,Q,*,*]
[PQQB]
##[PQQB]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,Q,*]
[PQQB]
##[PQQB]
#spats [*,Q,*,*]
[PQQB]
##[PQQB]
#spats [P,*,*,*]
[PQQB]
##[PQQB]
#spats [*,*,*,*]
[PQQB]
##[PQQB]
###!
###! Matchings per PQQ
#spats [P,Q,Q]
[PQQ]
##[PQQ]
#spats [*,Q,Q]
[PQQ]
##[PQQ]
#spats [P,*,Q]
[PQQ]
##[PQQ]
#spats [P,Q,*]
[PQQ]
##[PQQ]
#spats [*,*,Q]
[PQQ]
##[PQQ]
#spats [*,Q,*]
[PQQ]
##[PQQ]
#spats [P,*,*]
[PQQ]
##[PQQ]
#spats [*,*,*]
[PQQ]
##[PQQ]
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
[PQQB]
##[PQQB]
#spats [*,*,Q,B]
[PQQB]
##[PQQB]
#spats [*,Q,*,B]
[PQQB]
##[PQQB]
#spats [*,Q,Q,*]
[PQQB]
##[PQQB]
#spats [P,*,*,B]
[PQQB]
##[PQQB]
#spats [P,*,Q,*]
[PQQB]
##[PQQB]
#spats [P,Q,*,*]
[PQQB]
##[PQQB]
#spats [*,*,*,B]
[PQQB]
##[PQQB]
#spats [*,*,Q,*]
[PQQB]
##[PQQB]
#spats [*,Q,*,*]
[PQQB]
##[PQQB]
#spats [P,*,*,*]
[PQQB]
##[PQQB]
#spats [*,*,*,*]
[PQQB]
##[PQQB]
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
[PQQ]
##[PQQ]
#spats [*,*,*]
[PQQ]
##[PQQ]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.6.6 Subcas 6F
###!       lp123 = 1  lp12 = l1 > lp123 + 1  l2 = l1 + 1  l3 > lp123 + 1
###!       w1 = PQQ  w2 = PQQB  w3 = PCC
###!-------------------------------------------------------------------
###!
#init d6F dicc
###!
#ins PQQ
#ins PQQB
#ins PCC
###!
###! Prefixos per PQQ
#pre P

##
#pre PQ

##
#pre PQQ
PQQ
##PQQ
#pre ZQQ

##
#pre PZQ

##
#pre PQZ

##
#pre ZQQY

##
#pre PQZY

##
#pre PQQZ
PQQ
##PQQ
#pre ZQQYY

##
#pre PQZYY

##
#pre PQQZY
PQQ
##PQQ
###!
###! Prefixos per PQQB
#pre P

##
#pre PQQ
PQQ
##PQQ
#pre PQQB
PQQB
##PQQB
#pre ZQQB

##
#pre PQZB

##
#pre PQQZ
PQQ
##PQQ
#pre ZQQBY

##
#pre PQQZY
PQQ
##PQQ
#pre PQQBZ
PQQB
##PQQB
#pre ZQQBYY

##
#pre PQQZYY
PQQ
##PQQ
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
###! Matchings per PQQ
#spats [P,Q,Q]
[PQQ]
##[PQQ]
#spats [*,Q,Q]
[PQQ]
##[PQQ]
#spats [P,*,Q]
[PQQ]
##[PQQ]
#spats [P,Q,*]
[PQQ]
##[PQQ]
#spats [*,*,Q]
[PQQ]
##[PQQ]
#spats [*,Q,*]
[PQQ]
##[PQQ]
#spats [P,*,*]
[PCC, PQQ]
##[PCC, PQQ]
#spats [*,*,*]
[PCC, PQQ]
##[PCC, PQQ]
###!
###! Matchings per PQQZ
#spats [P,Q,Q,Z]
[]
##[]
#spats [*,Q,Q,Z]
[]
##[]
#spats [P,*,Q,Z]
[]
##[]
#spats [P,Q,*,Z]
[]
##[]
#spats [P,Q,Q,*]
[PQQB]
##[PQQB]
#spats [*,*,Q,Z]
[]
##[]
#spats [*,Q,*,Z]
[]
##[]
#spats [*,Q,Q,*]
[PQQB]
##[PQQB]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,Q,*]
[PQQB]
##[PQQB]
#spats [P,Q,*,*]
[PQQB]
##[PQQB]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,Q,*]
[PQQB]
##[PQQB]
#spats [*,Q,*,*]
[PQQB]
##[PQQB]
#spats [P,*,*,*]
[PQQB]
##[PQQB]
#spats [*,*,*,*]
[PQQB]
##[PQQB]
###!
###! Matchings per PQQ
#spats [P,Q,Q]
[PQQ]
##[PQQ]
#spats [*,Q,Q]
[PQQ]
##[PQQ]
#spats [P,*,Q]
[PQQ]
##[PQQ]
#spats [P,Q,*]
[PQQ]
##[PQQ]
#spats [*,*,Q]
[PQQ]
##[PQQ]
#spats [*,Q,*]
[PQQ]
##[PQQ]
#spats [P,*,*]
[PCC, PQQ]
##[PCC, PQQ]
#spats [*,*,*]
[PCC, PQQ]
##[PCC, PQQ]
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
[PQQB]
##[PQQB]
#spats [*,*,Q,B]
[PQQB]
##[PQQB]
#spats [*,Q,*,B]
[PQQB]
##[PQQB]
#spats [*,Q,Q,*]
[PQQB]
##[PQQB]
#spats [P,*,*,B]
[PQQB]
##[PQQB]
#spats [P,*,Q,*]
[PQQB]
##[PQQB]
#spats [P,Q,*,*]
[PQQB]
##[PQQB]
#spats [*,*,*,B]
[PQQB]
##[PQQB]
#spats [*,*,Q,*]
[PQQB]
##[PQQB]
#spats [*,Q,*,*]
[PQQB]
##[PQQB]
#spats [P,*,*,*]
[PQQB]
##[PQQB]
#spats [*,*,*,*]
[PQQB]
##[PQQB]
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
[PCC, PQQ]
##[PCC, PQQ]
#spats [*,*,*]
[PCC, PQQ]
##[PCC, PQQ]
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
[PQQB]
##[PQQB]
#spats [*,*,*,*]
[PQQB]
##[PQQB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.6.7 Subcas 6G
###!       lp123 = 1  lp12 = l1 > lp123 + 1  l2 > l1 + 1  l3 = lp123 + 1
###!       w1 = PQQ  w2 = PQQBB  w3 = PC
###!-------------------------------------------------------------------
###!
#init d6G dicc
###!
#ins PQQ
#ins PQQBB
#ins PC
###!
###! Prefixos per PQQ
#pre P

##
#pre PQ

##
#pre PQQ
PQQ
##PQQ
#pre ZQQ

##
#pre PZQ

##
#pre PQZ

##
#pre ZQQY

##
#pre PQZY

##
#pre PQQZ
PQQ
##PQQ
#pre ZQQYY

##
#pre PQZYY

##
#pre PQQZY
PQQ
##PQQ
###!
###! Prefixos per PQQBB
#pre P

##
#pre PQQB
PQQ
##PQQ
#pre PQQBB
PQQBB
##PQQBB
#pre ZQQBB

##
#pre PQQZB
PQQ
##PQQ
#pre PQQBZ
PQQ
##PQQ
#pre ZQQBBY

##
#pre PQQBZY
PQQ
##PQQ
#pre PQQBBZ
PQQBB
##PQQBB
#pre ZQQBBYY

##
#pre PQQBZYY
PQQ
##PQQ
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
###! Matchings per PQQ
#spats [P,Q,Q]
[PQQ]
##[PQQ]
#spats [*,Q,Q]
[PQQ]
##[PQQ]
#spats [P,*,Q]
[PQQ]
##[PQQ]
#spats [P,Q,*]
[PQQ]
##[PQQ]
#spats [*,*,Q]
[PQQ]
##[PQQ]
#spats [*,Q,*]
[PQQ]
##[PQQ]
#spats [P,*,*]
[PQQ]
##[PQQ]
#spats [*,*,*]
[PQQ]
##[PQQ]
###!
###! Matchings per PQQZ
#spats [P,Q,Q,Z]
[]
##[]
#spats [*,Q,Q,Z]
[]
##[]
#spats [P,*,Q,Z]
[]
##[]
#spats [P,Q,*,Z]
[]
##[]
#spats [P,Q,Q,*]
[]
##[]
#spats [*,*,Q,Z]
[]
##[]
#spats [*,Q,*,Z]
[]
##[]
#spats [*,Q,Q,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,Z]
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
[PQQBB]
##[PQQBB]
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
[PQQBB]
##[PQQBB]
#spats [P,*,*,*,B]
[PQQBB]
##[PQQBB]
#spats [P,*,*,B,*]
[PQQBB]
##[PQQBB]
#spats [P,*,Q,*,*]
[PQQBB]
##[PQQBB]
#spats [P,Q,*,*,*]
[PQQBB]
##[PQQBB]
#spats [*,*,*,*,B]
[PQQBB]
##[PQQBB]
#spats [*,*,*,B,*]
[PQQBB]
##[PQQBB]
#spats [*,*,Q,*,*]
[PQQBB]
##[PQQBB]
#spats [*,Q,*,*,*]
[PQQBB]
##[PQQBB]
#spats [P,*,*,*,*]
[PQQBB]
##[PQQBB]
#spats [*,*,*,*,*]
[PQQBB]
##[PQQBB]
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
[PQQ]
##[PQQ]
#spats [*,*,*]
[PQQ]
##[PQQ]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.6.8 Subcas 6H
###!       lp123 = 1  lp12 = l1 < lp123 + 1  l2 > l1 + 1  l3 > lp123 + 1
###!       w1 = PQQ  w2 = PQQBB  w3 = PCC
###!-------------------------------------------------------------------
###!
#init d6H dicc
###!
#ins PQQ
#ins PQQBB
#ins PCC
###!
###! Prefixos per PQQ
#pre P

##
#pre PQ

##
#pre PQQ
PQQ
##PQQ
#pre ZQQ

##
#pre PZQ

##
#pre PQZ

##
#pre ZQQY

##
#pre PQZY

##
#pre PQQZ
PQQ
##PQQ
#pre ZQQYY

##
#pre PQZYY

##
#pre PQQZY
PQQ
##PQQ
###!
###! Prefixos per PQQBB
#pre P

##
#pre PQQB
PQQ
##PQQ
#pre PQQBB
PQQBB
##PQQBB
#pre ZQQBB

##
#pre PQQZB
PQQ
##PQQ
#pre PQQBZ
PQQ
##PQQ
#pre ZQQBBY

##
#pre PQQBZY
PQQ
##PQQ
#pre PQQBBZ
PQQBB
##PQQBB
#pre ZQQBBYY

##
#pre PQQBZYY
PQQ
##PQQ
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
###! Matchings per PQQ
#spats [P,Q,Q]
[PQQ]
##[PQQ]
#spats [*,Q,Q]
[PQQ]
##[PQQ]
#spats [P,*,Q]
[PQQ]
##[PQQ]
#spats [P,Q,*]
[PQQ]
##[PQQ]
#spats [*,*,Q]
[PQQ]
##[PQQ]
#spats [*,Q,*]
[PQQ]
##[PQQ]
#spats [P,*,*]
[PCC, PQQ]
##[PCC, PQQ]
#spats [*,*,*]
[PCC, PQQ]
##[PCC, PQQ]
###!
###! Matchings per PQQZ
#spats [P,Q,Q,Z]
[]
##[]
#spats [*,Q,Q,Z]
[]
##[]
#spats [P,*,Q,Z]
[]
##[]
#spats [P,Q,*,Z]
[]
##[]
#spats [P,Q,Q,*]
[]
##[]
#spats [*,*,Q,Z]
[]
##[]
#spats [*,Q,*,Z]
[]
##[]
#spats [*,Q,Q,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,Z]
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
[PQQBB]
##[PQQBB]
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
[PQQBB]
##[PQQBB]
#spats [P,*,*,*,B]
[PQQBB]
##[PQQBB]
#spats [P,*,*,B,*]
[PQQBB]
##[PQQBB]
#spats [P,*,Q,*,*]
[PQQBB]
##[PQQBB]
#spats [P,Q,*,*,*]
[PQQBB]
##[PQQBB]
#spats [*,*,*,*,B]
[PQQBB]
##[PQQBB]
#spats [*,*,*,B,*]
[PQQBB]
##[PQQBB]
#spats [*,*,Q,*,*]
[PQQBB]
##[PQQBB]
#spats [*,Q,*,*,*]
[PQQBB]
##[PQQBB]
#spats [P,*,*,*,*]
[PQQBB]
##[PQQBB]
#spats [*,*,*,*,*]
[PQQBB]
##[PQQBB]
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
[PCC, PQQ]
##[PCC, PQQ]
#spats [*,*,*]
[PCC, PQQ]
##[PCC, PQQ]
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
###103.6.9 Subcas 6I
###!       lp123 > 1  lp12 = l1 = lp123 + 1  l2 = l1 + 1  l3 = lp123 + 1
###!       w1 = PPQ  w2 = PPQB  w3 = PPC
###!-------------------------------------------------------------------
###!
#init d6I dicc
###!
#ins PPQ
#ins PPQB
#ins PPC
###!
###! Prefixos per PPQ
#pre P

##
#pre PP

##
#pre PPQ
PPQ
##PPQ
#pre ZPQ

##
#pre PZQ

##
#pre PPZ

##
#pre ZPQY

##
#pre PPZY

##
#pre PPQZ
PPQ
##PPQ
#pre ZPQYY

##
#pre PPZYY

##
#pre PPQZY
PPQ
##PPQ
###!
###! Prefixos per PPQB
#pre P

##
#pre PPQ
PPQ
##PPQ
#pre PPQB
PPQB
##PPQB
#pre ZPQB

##
#pre PPZB

##
#pre PPQZ
PPQ
##PPQ
#pre ZPQBY

##
#pre PPQZY
PPQ
##PPQ
#pre PPQBZ
PPQB
##PPQB
#pre ZPQBYY

##
#pre PPQZYY
PPQ
##PPQ
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
###! Matchings per PPQ
#spats [P,P,Q]
[PPQ]
##[PPQ]
#spats [*,P,Q]
[PPQ]
##[PPQ]
#spats [P,*,Q]
[PPQ]
##[PPQ]
#spats [P,P,*]
[PPC, PPQ]
##[PPC, PPQ]
#spats [*,*,Q]
[PPQ]
##[PPQ]
#spats [*,P,*]
[PPC, PPQ]
##[PPC, PPQ]
#spats [P,*,*]
[PPC, PPQ]
##[PPC, PPQ]
#spats [*,*,*]
[PPC, PPQ]
##[PPC, PPQ]
###!
###! Matchings per PPQZ
#spats [P,P,Q,Z]
[]
##[]
#spats [*,P,Q,Z]
[]
##[]
#spats [P,*,Q,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,Q,*]
[PPQB]
##[PPQB]
#spats [*,*,Q,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,Q,*]
[PPQB]
##[PPQB]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,Q,*]
[PPQB]
##[PPQB]
#spats [P,P,*,*]
[PPQB]
##[PPQB]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,Q,*]
[PPQB]
##[PPQB]
#spats [*,P,*,*]
[PPQB]
##[PPQB]
#spats [P,*,*,*]
[PPQB]
##[PPQB]
#spats [*,*,*,*]
[PPQB]
##[PPQB]
###!
###! Matchings per PPQ
#spats [P,P,Q]
[PPQ]
##[PPQ]
#spats [*,P,Q]
[PPQ]
##[PPQ]
#spats [P,*,Q]
[PPQ]
##[PPQ]
#spats [P,P,*]
[PPC, PPQ]
##[PPC, PPQ]
#spats [*,*,Q]
[PPQ]
##[PPQ]
#spats [*,P,*]
[PPC, PPQ]
##[PPC, PPQ]
#spats [P,*,*]
[PPC, PPQ]
##[PPC, PPQ]
#spats [*,*,*]
[PPC, PPQ]
##[PPC, PPQ]
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
[PPQB]
##[PPQB]
#spats [*,*,Q,B]
[PPQB]
##[PPQB]
#spats [*,P,*,B]
[PPQB]
##[PPQB]
#spats [*,P,Q,*]
[PPQB]
##[PPQB]
#spats [P,*,*,B]
[PPQB]
##[PPQB]
#spats [P,*,Q,*]
[PPQB]
##[PPQB]
#spats [P,P,*,*]
[PPQB]
##[PPQB]
#spats [*,*,*,B]
[PPQB]
##[PPQB]
#spats [*,*,Q,*]
[PPQB]
##[PPQB]
#spats [*,P,*,*]
[PPQB]
##[PPQB]
#spats [P,*,*,*]
[PPQB]
##[PPQB]
#spats [*,*,*,*]
[PPQB]
##[PPQB]
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
[PPC, PPQ]
##[PPC, PPQ]
#spats [*,*,C]
[PPC]
##[PPC]
#spats [*,P,*]
[PPC, PPQ]
##[PPC, PPQ]
#spats [P,*,*]
[PPC, PPQ]
##[PPC, PPQ]
#spats [*,*,*]
[PPC, PPQ]
##[PPC, PPQ]
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
[PPQB]
##[PPQB]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
[]
##[]
#spats [*,P,*,*]
[PPQB]
##[PPQB]
#spats [P,*,*,*]
[PPQB]
##[PPQB]
#spats [*,*,*,*]
[PPQB]
##[PPQB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.6.10 Subcas 6J
###!        lp123 > 1  lp12 = l1 = lp123 + 1  l2 = l1 + 1  l3 > lp123 + 1
###!        w1 = PPQ  w2 = PPQB  w3 = PPCC
###!-------------------------------------------------------------------
###!
#init d6J dicc
###!
#ins PPQ
#ins PPQB
#ins PPCC
###!
###! Prefixos per PPQ
#pre P

##
#pre PP

##
#pre PPQ
PPQ
##PPQ
#pre ZPQ

##
#pre PZQ

##
#pre PPZ

##
#pre ZPQY

##
#pre PPZY

##
#pre PPQZ
PPQ
##PPQ
#pre ZPQYY

##
#pre PPZYY

##
#pre PPQZY
PPQ
##PPQ
###!
###! Prefixos per PPQB
#pre P

##
#pre PPQ
PPQ
##PPQ
#pre PPQB
PPQB
##PPQB
#pre ZPQB

##
#pre PPZB

##
#pre PPQZ
PPQ
##PPQ
#pre ZPQBY

##
#pre PPQZY
PPQ
##PPQ
#pre PPQBZ
PPQB
##PPQB
#pre ZPQBYY

##
#pre PPQZYY
PPQ
##PPQ
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
###! Matchings per PPQ
#spats [P,P,Q]
[PPQ]
##[PPQ]
#spats [*,P,Q]
[PPQ]
##[PPQ]
#spats [P,*,Q]
[PPQ]
##[PPQ]
#spats [P,P,*]
[PPQ]
##[PPQ]
#spats [*,*,Q]
[PPQ]
##[PPQ]
#spats [*,P,*]
[PPQ]
##[PPQ]
#spats [P,*,*]
[PPQ]
##[PPQ]
#spats [*,*,*]
[PPQ]
##[PPQ]
###!
###! Matchings per PPQZ
#spats [P,P,Q,Z]
[]
##[]
#spats [*,P,Q,Z]
[]
##[]
#spats [P,*,Q,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,Q,*]
[PPQB]
##[PPQB]
#spats [*,*,Q,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,Q,*]
[PPQB]
##[PPQB]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,Q,*]
[PPQB]
##[PPQB]
#spats [P,P,*,*]
[PPCC, PPQB]
##[PPCC, PPQB]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,Q,*]
[PPQB]
##[PPQB]
#spats [*,P,*,*]
[PPCC, PPQB]
##[PPCC, PPQB]
#spats [P,*,*,*]
[PPCC, PPQB]
##[PPCC, PPQB]
#spats [*,*,*,*]
[PPCC, PPQB]
##[PPCC, PPQB]
###!
###! Matchings per PPQ
#spats [P,P,Q]
[PPQ]
##[PPQ]
#spats [*,P,Q]
[PPQ]
##[PPQ]
#spats [P,*,Q]
[PPQ]
##[PPQ]
#spats [P,P,*]
[PPQ]
##[PPQ]
#spats [*,*,Q]
[PPQ]
##[PPQ]
#spats [*,P,*]
[PPQ]
##[PPQ]
#spats [P,*,*]
[PPQ]
##[PPQ]
#spats [*,*,*]
[PPQ]
##[PPQ]
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
[PPQB]
##[PPQB]
#spats [*,*,Q,B]
[PPQB]
##[PPQB]
#spats [*,P,*,B]
[PPQB]
##[PPQB]
#spats [*,P,Q,*]
[PPQB]
##[PPQB]
#spats [P,*,*,B]
[PPQB]
##[PPQB]
#spats [P,*,Q,*]
[PPQB]
##[PPQB]
#spats [P,P,*,*]
[PPCC, PPQB]
##[PPCC, PPQB]
#spats [*,*,*,B]
[PPQB]
##[PPQB]
#spats [*,*,Q,*]
[PPQB]
##[PPQB]
#spats [*,P,*,*]
[PPCC, PPQB]
##[PPCC, PPQB]
#spats [P,*,*,*]
[PPCC, PPQB]
##[PPCC, PPQB]
#spats [*,*,*,*]
[PPCC, PPQB]
##[PPCC, PPQB]
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
[PPQ]
##[PPQ]
#spats [*,*,C]
[]
##[]
#spats [*,P,*]
[PPQ]
##[PPQ]
#spats [P,*,*]
[PPQ]
##[PPQ]
#spats [*,*,*]
[PPQ]
##[PPQ]
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
[PPCC, PPQB]
##[PPCC, PPQB]
#spats [*,*,*,C]
[PPCC]
##[PPCC]
#spats [*,*,C,*]
[PPCC]
##[PPCC]
#spats [*,P,*,*]
[PPCC, PPQB]
##[PPCC, PPQB]
#spats [P,*,*,*]
[PPCC, PPQB]
##[PPCC, PPQB]
#spats [*,*,*,*]
[PPCC, PPQB]
##[PPCC, PPQB]
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
###103.6.11 Subcas 6K
###!        lp123 > 1  lp12 = l1 = lp123 + 1  l2 > l1 + 1  l3 = lp123 + 1
###!        w1 = PPQ  w2 = PPQBB  w3 = PPC
###!-------------------------------------------------------------------
###!
#init d6K dicc
###!
#ins PPQ
#ins PPQBB
#ins PPC
###!
###! Prefixos per PPQ
#pre P

##
#pre PP

##
#pre PPQ
PPQ
##PPQ
#pre ZPQ

##
#pre PZQ

##
#pre PPZ

##
#pre ZPQY

##
#pre PPZY

##
#pre PPQZ
PPQ
##PPQ
#pre ZPQYY

##
#pre PPZYY

##
#pre PPQZY
PPQ
##PPQ
###!
###! Prefixos per PPQBB
#pre P

##
#pre PPQB
PPQ
##PPQ
#pre PPQBB
PPQBB
##PPQBB
#pre ZPQBB

##
#pre PPQZB
PPQ
##PPQ
#pre PPQBZ
PPQ
##PPQ
#pre ZPQBBY

##
#pre PPQBZY
PPQ
##PPQ
#pre PPQBBZ
PPQBB
##PPQBB
#pre ZPQBBYY

##
#pre PPQBZYY
PPQ
##PPQ
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
###! Matchings per PPQ
#spats [P,P,Q]
[PPQ]
##[PPQ]
#spats [*,P,Q]
[PPQ]
##[PPQ]
#spats [P,*,Q]
[PPQ]
##[PPQ]
#spats [P,P,*]
[PPC, PPQ]
##[PPC, PPQ]
#spats [*,*,Q]
[PPQ]
##[PPQ]
#spats [*,P,*]
[PPC, PPQ]
##[PPC, PPQ]
#spats [P,*,*]
[PPC, PPQ]
##[PPC, PPQ]
#spats [*,*,*]
[PPC, PPQ]
##[PPC, PPQ]
###!
###! Matchings per PPQZ
#spats [P,P,Q,Z]
[]
##[]
#spats [*,P,Q,Z]
[]
##[]
#spats [P,*,Q,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,Q,*]
[]
##[]
#spats [*,*,Q,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,Q,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
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
[PPQBB]
##[PPQBB]
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
[PPQBB]
##[PPQBB]
#spats [P,*,*,*,B]
[PPQBB]
##[PPQBB]
#spats [P,*,*,B,*]
[PPQBB]
##[PPQBB]
#spats [P,*,Q,*,*]
[PPQBB]
##[PPQBB]
#spats [P,P,*,*,*]
[PPQBB]
##[PPQBB]
#spats [*,*,*,*,B]
[PPQBB]
##[PPQBB]
#spats [*,*,*,B,*]
[PPQBB]
##[PPQBB]
#spats [*,*,Q,*,*]
[PPQBB]
##[PPQBB]
#spats [*,P,*,*,*]
[PPQBB]
##[PPQBB]
#spats [P,*,*,*,*]
[PPQBB]
##[PPQBB]
#spats [*,*,*,*,*]
[PPQBB]
##[PPQBB]
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
[PPC, PPQ]
##[PPC, PPQ]
#spats [*,*,C]
[PPC]
##[PPC]
#spats [*,P,*]
[PPC, PPQ]
##[PPC, PPQ]
#spats [P,*,*]
[PPC, PPQ]
##[PPC, PPQ]
#spats [*,*,*]
[PPC, PPQ]
##[PPC, PPQ]
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
###103.6.12 Subcas 6L
###!        lp123 > 1  lp12 = l1 = lp123 + 1  l2 > l1 + 1  l3 > lp123 + 1
###!        w1 = PPQ  w2 = PPQBB  w3 = PPCC
###!-------------------------------------------------------------------
###!
#init d6L dicc
###!
#ins PPQ
#ins PPQBB
#ins PPCC
###!
###! Prefixos per PPQ
#pre P

##
#pre PP

##
#pre PPQ
PPQ
##PPQ
#pre ZPQ

##
#pre PZQ

##
#pre PPZ

##
#pre ZPQY

##
#pre PPZY

##
#pre PPQZ
PPQ
##PPQ
#pre ZPQYY

##
#pre PPZYY

##
#pre PPQZY
PPQ
##PPQ
###!
###! Prefixos per PPQBB
#pre P

##
#pre PPQB
PPQ
##PPQ
#pre PPQBB
PPQBB
##PPQBB
#pre ZPQBB

##
#pre PPQZB
PPQ
##PPQ
#pre PPQBZ
PPQ
##PPQ
#pre ZPQBBY

##
#pre PPQBZY
PPQ
##PPQ
#pre PPQBBZ
PPQBB
##PPQBB
#pre ZPQBBYY

##
#pre PPQBZYY
PPQ
##PPQ
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
###! Matchings per PPQ
#spats [P,P,Q]
[PPQ]
##[PPQ]
#spats [*,P,Q]
[PPQ]
##[PPQ]
#spats [P,*,Q]
[PPQ]
##[PPQ]
#spats [P,P,*]
[PPQ]
##[PPQ]
#spats [*,*,Q]
[PPQ]
##[PPQ]
#spats [*,P,*]
[PPQ]
##[PPQ]
#spats [P,*,*]
[PPQ]
##[PPQ]
#spats [*,*,*]
[PPQ]
##[PPQ]
###!
###! Matchings per PPQZ
#spats [P,P,Q,Z]
[]
##[]
#spats [*,P,Q,Z]
[]
##[]
#spats [P,*,Q,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,Q,*]
[]
##[]
#spats [*,*,Q,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,Q,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,P,*,*]
[PPCC]
##[PPCC]
#spats [*,*,*,Z]
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
[PPQBB]
##[PPQBB]
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
[PPQBB]
##[PPQBB]
#spats [P,*,*,*,B]
[PPQBB]
##[PPQBB]
#spats [P,*,*,B,*]
[PPQBB]
##[PPQBB]
#spats [P,*,Q,*,*]
[PPQBB]
##[PPQBB]
#spats [P,P,*,*,*]
[PPQBB]
##[PPQBB]
#spats [*,*,*,*,B]
[PPQBB]
##[PPQBB]
#spats [*,*,*,B,*]
[PPQBB]
##[PPQBB]
#spats [*,*,Q,*,*]
[PPQBB]
##[PPQBB]
#spats [*,P,*,*,*]
[PPQBB]
##[PPQBB]
#spats [P,*,*,*,*]
[PPQBB]
##[PPQBB]
#spats [*,*,*,*,*]
[PPQBB]
##[PPQBB]
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
[PPQ]
##[PPQ]
#spats [*,*,C]
[]
##[]
#spats [*,P,*]
[PPQ]
##[PPQ]
#spats [P,*,*]
[PPQ]
##[PPQ]
#spats [*,*,*]
[PPQ]
##[PPQ]
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
[PPQBB]
##[PPQBB]
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
[PPQBB]
##[PPQBB]
#spats [P,*,*,*,*]
[PPQBB]
##[PPQBB]
#spats [*,*,*,*,*]
[PPQBB]
##[PPQBB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.6.13 Subcas 6M
###!        lp123 > 1  lp12 = l1 > lp123 + 1  l2 = l1 + 1  l3 = lp123 + 1
###!        w1 = PPQQ  w2 = PPQQB  w3 = PPC
###!-------------------------------------------------------------------
###!
#init d6M dicc
###!
#ins PPQQ
#ins PPQQB
#ins PPC
###!
###! Prefixos per PPQQ
#pre P

##
#pre PPQ

##
#pre PPQQ
PPQQ
##PPQQ
#pre ZPQQ

##
#pre PPZQ

##
#pre PPQZ

##
#pre ZPQQY

##
#pre PPQZY

##
#pre PPQQZ
PPQQ
##PPQQ
#pre ZPQQYY

##
#pre PPQZYY

##
#pre PPQQZY
PPQQ
##PPQQ
###!
###! Prefixos per PPQQB
#pre P

##
#pre PPQQ
PPQQ
##PPQQ
#pre PPQQB
PPQQB
##PPQQB
#pre ZPQQB

##
#pre PPQZB

##
#pre PPQQZ
PPQQ
##PPQQ
#pre ZPQQBY

##
#pre PPQQZY
PPQQ
##PPQQ
#pre PPQQBZ
PPQQB
##PPQQB
#pre ZPQQBYY

##
#pre PPQQZYY
PPQQ
##PPQQ
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
###! Matchings per PPQQ
#spats [P,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,P,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,P,*,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,*]
[PPQQ]
##[PPQQ]
###!
###! Matchings per PPQQZ
#spats [P,P,Q,Q,Z]
[]
##[]
#spats [*,P,Q,Q,Z]
[]
##[]
#spats [P,*,Q,Q,Z]
[]
##[]
#spats [P,P,*,Q,Z]
[]
##[]
#spats [P,P,Q,*,Z]
[]
##[]
#spats [P,P,Q,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,Q,Z]
[]
##[]
#spats [*,P,*,Q,Z]
[]
##[]
#spats [*,P,Q,*,Z]
[]
##[]
#spats [*,P,Q,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,*,*,Q,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,P,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [*,*,*,Q,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,P,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [P,P,*,*,*]
[PPQQB]
##[PPQQB]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [*,P,*,*,*]
[PPQQB]
##[PPQQB]
#spats [P,*,*,*,*]
[PPQQB]
##[PPQQB]
#spats [*,*,*,*,*]
[PPQQB]
##[PPQQB]
###!
###! Matchings per PPQQ
#spats [P,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,P,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,P,*,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,*]
[PPQQ]
##[PPQQ]
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
[PPQQB]
##[PPQQB]
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
[PPQQB]
##[PPQQB]
#spats [P,*,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,P,*,*,B]
[PPQQB]
##[PPQQB]
#spats [P,P,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,P,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [*,*,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,P,*,*,B]
[PPQQB]
##[PPQQB]
#spats [*,P,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,P,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [P,*,*,*,B]
[PPQQB]
##[PPQQB]
#spats [P,*,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [P,P,*,*,*]
[PPQQB]
##[PPQQB]
#spats [*,*,*,*,B]
[PPQQB]
##[PPQQB]
#spats [*,*,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [*,P,*,*,*]
[PPQQB]
##[PPQQB]
#spats [P,*,*,*,*]
[PPQQB]
##[PPQQB]
#spats [*,*,*,*,*]
[PPQQB]
##[PPQQB]
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
[PPQQ]
##[PPQQ]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
[]
##[]
#spats [*,P,*,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,*]
[PPQQ]
##[PPQQ]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.6.14 Subcas 6N
###!        lp123 > 1  lp12 = l1 > lp123 + 1  l2 = l1 + 1  l3 > lp123 + 1
###!        w1 = PPQQ  w2 = PPQQB  w3 = PPCC
###!-------------------------------------------------------------------
###!
#init d6N dicc
###!
#ins PPQQ
#ins PPQQB
#ins PPCC
###!
###! Prefixos per PPQQ
#pre P

##
#pre PPQ

##
#pre PPQQ
PPQQ
##PPQQ
#pre ZPQQ

##
#pre PPZQ

##
#pre PPQZ

##
#pre ZPQQY

##
#pre PPQZY

##
#pre PPQQZ
PPQQ
##PPQQ
#pre ZPQQYY

##
#pre PPQZYY

##
#pre PPQQZY
PPQQ
##PPQQ
###!
###! Prefixos per PPQQB
#pre P

##
#pre PPQQ
PPQQ
##PPQQ
#pre PPQQB
PPQQB
##PPQQB
#pre ZPQQB

##
#pre PPQZB

##
#pre PPQQZ
PPQQ
##PPQQ
#pre ZPQQBY

##
#pre PPQQZY
PPQQ
##PPQQ
#pre PPQQBZ
PPQQB
##PPQQB
#pre ZPQQBYY

##
#pre PPQQZYY
PPQQ
##PPQQ
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
###! Matchings per PPQQ
#spats [P,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,P,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [*,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,P,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [P,*,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [*,*,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
###!
###! Matchings per PPQQZ
#spats [P,P,Q,Q,Z]
[]
##[]
#spats [*,P,Q,Q,Z]
[]
##[]
#spats [P,*,Q,Q,Z]
[]
##[]
#spats [P,P,*,Q,Z]
[]
##[]
#spats [P,P,Q,*,Z]
[]
##[]
#spats [P,P,Q,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,Q,Z]
[]
##[]
#spats [*,P,*,Q,Z]
[]
##[]
#spats [*,P,Q,*,Z]
[]
##[]
#spats [*,P,Q,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,*,*,Q,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,P,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [*,*,*,Q,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,P,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [P,P,*,*,*]
[PPQQB]
##[PPQQB]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [*,P,*,*,*]
[PPQQB]
##[PPQQB]
#spats [P,*,*,*,*]
[PPQQB]
##[PPQQB]
#spats [*,*,*,*,*]
[PPQQB]
##[PPQQB]
###!
###! Matchings per PPQQ
#spats [P,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,P,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [*,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,P,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [P,*,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [*,*,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
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
[PPQQB]
##[PPQQB]
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
[PPQQB]
##[PPQQB]
#spats [P,*,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,P,*,*,B]
[PPQQB]
##[PPQQB]
#spats [P,P,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,P,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [*,*,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,P,*,*,B]
[PPQQB]
##[PPQQB]
#spats [*,P,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,P,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [P,*,*,*,B]
[PPQQB]
##[PPQQB]
#spats [P,*,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [P,P,*,*,*]
[PPQQB]
##[PPQQB]
#spats [*,*,*,*,B]
[PPQQB]
##[PPQQB]
#spats [*,*,*,Q,*]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,*,*]
[PPQQB]
##[PPQQB]
#spats [*,P,*,*,*]
[PPQQB]
##[PPQQB]
#spats [P,*,*,*,*]
[PPQQB]
##[PPQQB]
#spats [*,*,*,*,*]
[PPQQB]
##[PPQQB]
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
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [*,*,*,C]
[PPCC]
##[PPCC]
#spats [*,*,C,*]
[PPCC]
##[PPCC]
#spats [*,P,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [P,*,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [*,*,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
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
[PPQQB]
##[PPQQB]
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
[PPQQB]
##[PPQQB]
#spats [P,*,*,*,*]
[PPQQB]
##[PPQQB]
#spats [*,*,*,*,*]
[PPQQB]
##[PPQQB]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.6.15 Subcas 6O
###!        lp123 > 1  lp12 = l1 > lp123 + 1  l2 > l1 + 1  l3 = lp123 + 1
###!        w1 = PPQQ  w2 = PPQQBB  w3 = PPC
###!-------------------------------------------------------------------
###!
#init d6O dicc
###!
#ins PPQQ
#ins PPQQBB
#ins PPC
###!
###! Prefixos per PPQQ
#pre P

##
#pre PPQ

##
#pre PPQQ
PPQQ
##PPQQ
#pre ZPQQ

##
#pre PPZQ

##
#pre PPQZ

##
#pre ZPQQY

##
#pre PPQZY

##
#pre PPQQZ
PPQQ
##PPQQ
#pre ZPQQYY

##
#pre PPQZYY

##
#pre PPQQZY
PPQQ
##PPQQ
###!
###! Prefixos per PPQQBB
#pre P

##
#pre PPQQB
PPQQ
##PPQQ
#pre PPQQBB
PPQQBB
##PPQQBB
#pre ZPQQBB

##
#pre PPQQZB
PPQQ
##PPQQ
#pre PPQQBZ
PPQQ
##PPQQ
#pre ZPQQBBY

##
#pre PPQQBZY
PPQQ
##PPQQ
#pre PPQQBBZ
PPQQBB
##PPQQBB
#pre ZPQQBBYY

##
#pre PPQQBZYY
PPQQ
##PPQQ
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
###! Matchings per PPQQ
#spats [P,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,P,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,P,*,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,*]
[PPQQ]
##[PPQQ]
###!
###! Matchings per PPQQZ
#spats [P,P,Q,Q,Z]
[]
##[]
#spats [*,P,Q,Q,Z]
[]
##[]
#spats [P,*,Q,Q,Z]
[]
##[]
#spats [P,P,*,Q,Z]
[]
##[]
#spats [P,P,Q,*,Z]
[]
##[]
#spats [P,P,Q,Q,*]
[]
##[]
#spats [*,*,Q,Q,Z]
[]
##[]
#spats [*,P,*,Q,Z]
[]
##[]
#spats [*,P,Q,*,Z]
[]
##[]
#spats [*,P,Q,Q,*]
[]
##[]
#spats [P,*,*,Q,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,Q,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,Q,*]
[]
##[]
#spats [P,P,Q,*,*]
[]
##[]
#spats [*,*,*,Q,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,Q,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,Q,*]
[]
##[]
#spats [*,P,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
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
#spats [*,*,*,*,Z]
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
[PPQQBB]
##[PPQQBB]
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
[PPQQBB]
##[PPQQBB]
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
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,Q,*,*]
[PPQQBB]
##[PPQQBB]
#spats [P,P,Q,*,*,*]
[PPQQBB]
##[PPQQBB]
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
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,Q,*,*]
[PPQQBB]
##[PPQQBB]
#spats [*,P,Q,*,*,*]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,Q,*,*]
[PPQQBB]
##[PPQQBB]
#spats [P,*,Q,*,*,*]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,*,*,*]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,Q,*,*]
[PPQQBB]
##[PPQQBB]
#spats [*,*,Q,*,*,*]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,*,*,*]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,*,*,*]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,*,*,*]
[PPQQBB]
##[PPQQBB]
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
[PPQQ]
##[PPQQ]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
[]
##[]
#spats [*,P,*,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,*]
[PPQQ]
##[PPQQ]
###!
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.6.16 Subcas 6P
###!        lp123 > 1  lp12 = l1 < lp123 + 1  l2 > l1 + 1  l3 > lp123 + 1
###!        w1 = PPQQ  w2 = PPQQBB  w3 = PPCC
###!-------------------------------------------------------------------
###!
#init d6P dicc
###!
#ins PPQQ
#ins PPQQBB
#ins PPCC
###!
###! Prefixos per PPQQ
#pre P

##
#pre PPQ

##
#pre PPQQ
PPQQ
##PPQQ
#pre ZPQQ

##
#pre PPZQ

##
#pre PPQZ

##
#pre ZPQQY

##
#pre PPQZY

##
#pre PPQQZ
PPQQ
##PPQQ
#pre ZPQQYY

##
#pre PPQZYY

##
#pre PPQQZY
PPQQ
##PPQQ
###!
###! Prefixos per PPQQBB
#pre P

##
#pre PPQQB
PPQQ
##PPQQ
#pre PPQQBB
PPQQBB
##PPQQBB
#pre ZPQQBB

##
#pre PPQQZB
PPQQ
##PPQQ
#pre PPQQBZ
PPQQ
##PPQQ
#pre ZPQQBBY

##
#pre PPQQBZY
PPQQ
##PPQQ
#pre PPQQBBZ
PPQQBB
##PPQQBB
#pre ZPQQBBYY

##
#pre PPQQBZYY
PPQQ
##PPQQ
#pre PPQQBBZY
PPQQBB
##PPQQBB
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
###! Matchings per PPQQ
#spats [P,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,P,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [*,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,P,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [P,*,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [*,*,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
###!
###! Matchings per PPQQZ
#spats [P,P,Q,Q,Z]
[]
##[]
#spats [*,P,Q,Q,Z]
[]
##[]
#spats [P,*,Q,Q,Z]
[]
##[]
#spats [P,P,*,Q,Z]
[]
##[]
#spats [P,P,Q,*,Z]
[]
##[]
#spats [P,P,Q,Q,*]
[]
##[]
#spats [*,*,Q,Q,Z]
[]
##[]
#spats [*,P,*,Q,Z]
[]
##[]
#spats [*,P,Q,*,Z]
[]
##[]
#spats [*,P,Q,Q,*]
[]
##[]
#spats [P,*,*,Q,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,Q,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,Q,*]
[]
##[]
#spats [P,P,Q,*,*]
[]
##[]
#spats [*,*,*,Q,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,Q,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,Q,*]
[]
##[]
#spats [*,P,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
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
#spats [*,*,*,*,Z]
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
[PPQQBB]
##[PPQQBB]
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
[PPQQBB]
##[PPQQBB]
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
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,Q,*,*]
[PPQQBB]
##[PPQQBB]
#spats [P,P,Q,*,*,*]
[PPQQBB]
##[PPQQBB]
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
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,Q,*,*]
[PPQQBB]
##[PPQQBB]
#spats [*,P,Q,*,*,*]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,Q,*,*]
[PPQQBB]
##[PPQQBB]
#spats [P,*,Q,*,*,*]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,*,*,*]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,Q,*,*]
[PPQQBB]
##[PPQQBB]
#spats [*,*,Q,*,*,*]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,*,*,*]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,*,*,*]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,*,*,*]
[PPQQBB]
##[PPQQBB]
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
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [*,*,*,C]
[PPCC]
##[PPCC]
#spats [*,*,C,*]
[PPCC]
##[PPCC]
#spats [*,P,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [P,*,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
#spats [*,*,*,*]
[PPCC, PPQQ]
##[PPCC, PPQQ]
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
###103.7 CAS NÚMERO 7
###!     Una d'elles es prefixe de les altres dues (w1 de w2 y w1 de w3)
###!     però aquestes no tenen un prefixe comu més llarg (lp23 = l1):
###!     p123 = p12 = p13 = p23 = w1 = P+    w2 = P+B+    w3 = P+C+
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###103.7.1 Subcas 7A
###!           lp123 = l1 = 1  l2 = lp123 + 1  l3 = lp123 + 1
###!           w1 = P  w2 = PB  w3 = PC
###!-------------------------------------------------------------------
###!
#init d7A dicc
###!
#ins P
#ins PB
#ins PC
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
###! Prefixos per PC
#pre P
P
##P
#pre PC
PC
##PC
#pre ZC

##
#pre PZ
P
##P
#pre ZCY

##
#pre PZY
P
##P
#pre PCZ
PC
##PC
#pre ZCYY

##
#pre PZYY
P
##P
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
[PB, PC]
##[PB, PC]
#spats [*,*]
[PB, PC]
##[PB, PC]
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
[PB, PC]
##[PB, PC]
#spats [*,*]
[PB, PC]
##[PB, PC]
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
[P]
##[P]
#spats [*]
[P]
##[P]
###!
###! Matchings per PC
#spats [P,C]
[PC]
##[PC]
#spats [*,C]
[PC]
##[PC]
#spats [P,*]
[PB, PC]
##[PB, PC]
#spats [*,*]
[PB, PC]
##[PB, PC]
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
###103.7.2 Subcas 7B
###!           lp123 = l1 = 1  l2 > lp123 + 1  l3 > lp123 + 1
###!           w1 = P  w2 = PBB  w3 = PCC
###!-------------------------------------------------------------------
###!
#init d7B dicc
###!
#ins P
#ins PBB
#ins PCC
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
###! Prefixos per PCC
#pre P
P
##P
#pre PC
P
##P
#pre PCC
PCC
##PCC
#pre ZCC

##
#pre PZC
P
##P
#pre PCZ
P
##P
#pre ZCCY

##
#pre PCZY
P
##P
#pre PCCZ
PCC
##PCC
#pre ZCCYY

##
#pre PCZYY
P
##P
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
[PBB, PCC]
##[PBB, PCC]
#spats [*,*,*]
[PBB, PCC]
##[PBB, PCC]
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
[PBB, PCC]
##[PBB, PCC]
#spats [*,*,*]
[PBB, PCC]
##[PBB, PCC]
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
###103.7.3 Subcas 7C
###!           lp123 = l1 > 1  l2 = lp123 + 1  l3 = lp123 + 1
###!           w1 = PP  w2 = PPB  w3 = PPC
###!-------------------------------------------------------------------
###!
#init d7C dicc
###!
#ins PP
#ins PPB
#ins PPC
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
###! Prefixos per PPC
#pre P

##
#pre PP
PP
##PP
#pre PPC
PPC
##PPC
#pre ZPC

##
#pre PZC

##
#pre PPZ
PP
##PP
#pre ZPCY

##
#pre PPZY
PP
##PP
#pre PPCZ
PPC
##PPC
#pre ZPCYY

##
#pre PPZYY
PP
##PP
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
[PPB, PPC]
##[PPB, PPC]
#spats [*,*,Z]
[]
##[]
#spats [*,P,*]
[PPB, PPC]
##[PPB, PPC]
#spats [P,*,*]
[PPB, PPC]
##[PPB, PPC]
#spats [*,*,*]
[PPB, PPC]
##[PPB, PPC]
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
[PPB, PPC]
##[PPB, PPC]
#spats [*,*,B]
[PPB]
##[PPB]
#spats [*,P,*]
[PPB, PPC]
##[PPB, PPC]
#spats [P,*,*]
[PPB, PPC]
##[PPB, PPC]
#spats [*,*,*]
[PPB, PPC]
##[PPB, PPC]
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
[PPB, PPC]
##[PPB, PPC]
#spats [*,*,C]
[PPC]
##[PPC]
#spats [*,P,*]
[PPB, PPC]
##[PPB, PPC]
#spats [P,*,*]
[PPB, PPC]
##[PPB, PPC]
#spats [*,*,*]
[PPB, PPC]
##[PPB, PPC]
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
###103.7.4 Subcas 7D
###!           lp123 = l1 > 1  l2 > lp123 + 1  l3 > lp123 + 1
###!           w1 = PP  w2 = PPBB  w3 = PPCC
###!-------------------------------------------------------------------
###!
#init d7D dicc
###!
#ins PP
#ins PPBB
#ins PPCC
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
###! Prefixos per PPCC
#pre P

##
#pre PPC
PP
##PP
#pre PPCC
PPCC
##PPCC
#pre ZPCC

##
#pre PPZC
PP
##PP
#pre PPCZ
PP
##PP
#pre ZPCCY

##
#pre PPCZY
PP
##PP
#pre PPCCZ
PPCC
##PPCC
#pre ZPCCYY

##
#pre PPCZYY
PP
##PP
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
[PPBB, PPCC]
##[PPBB, PPCC]
#spats [*,*,*,B]
[PPBB]
##[PPBB]
#spats [*,*,B,*]
[PPBB]
##[PPBB]
#spats [*,P,*,*]
[PPBB, PPCC]
##[PPBB, PPCC]
#spats [P,*,*,*]
[PPBB, PPCC]
##[PPBB, PPCC]
#spats [*,*,*,*]
[PPBB, PPCC]
##[PPBB, PPCC]
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
[PPBB, PPCC]
##[PPBB, PPCC]
#spats [*,*,*,C]
[PPCC]
##[PPCC]
#spats [*,*,C,*]
[PPCC]
##[PPCC]
#spats [*,P,*,*]
[PPBB, PPCC]
##[PPBB, PPCC]
#spats [P,*,*,*]
[PPBB, PPCC]
##[PPBB, PPCC]
#spats [*,*,*,*]
[PPBB, PPCC]
##[PPBB, PPCC]
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
###103.8 CAS NÚMERO 8
###!     Una d'elles es prefixe de les altres dos (w1 de w2 y w1 de w3)
###!     i aquestes dues (w2 y w3) tenen un prefixe comu p23 més llarg:
###!     p123 = p12 = p13 = w1 = P+  p23 = P+Q+  w2 = P+Q+B+  w3 = P+Q+C+
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###103.8.1 Subcas 8A
###!       lp123 = l1 = 1  lp23 = lp123 + 1  l2 = lp23 + 1  l3 = lp23 + 1
###!       w1 = P  w2 = PQB  w3 = PQC
###!-------------------------------------------------------------------
###!
#init d8A dicc
###!
#ins P
#ins PQB
#ins PQC
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
###! Prefixos per PQB
#pre P
P
##P
#pre PQ
P
##P
#pre PQB
PQB
##PQB
#pre ZQB

##
#pre PZB
P
##P
#pre PQZ
P
##P
#pre ZQBY

##
#pre PQZY
P
##P
#pre PQBZ
PQB
##PQB
#pre ZQBYY

##
#pre PQZYY
P
##P
#pre PQBZY
PQB
##PQB
###!
###! Prefixos per PQC
#pre P
P
##P
#pre PQ
P
##P
#pre PQC
PQC
##PQC
#pre ZQC

##
#pre PZC
P
##P
#pre PQZ
P
##P
#pre ZQCY

##
#pre PQZY
P
##P
#pre PQCZ
PQC
##PQC
#pre ZQCYY

##
#pre PQZYY
P
##P
#pre PQCZY
PQC
##PQC
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
[PQB, PQC]
##[PQB, PQC]
#spats [*,*,B]
[PQB]
##[PQB]
#spats [*,Q,*]
[PQB, PQC]
##[PQB, PQC]
#spats [P,*,*]
[PQB, PQC]
##[PQB, PQC]
#spats [*,*,*]
[PQB, PQC]
##[PQB, PQC]
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
###! Matchings per PQC
#spats [P,Q,C]
[PQC]
##[PQC]
#spats [*,Q,C]
[PQC]
##[PQC]
#spats [P,*,C]
[PQC]
##[PQC]
#spats [P,Q,*]
[PQB, PQC]
##[PQB, PQC]
#spats [*,*,C]
[PQC]
##[PQC]
#spats [*,Q,*]
[PQB, PQC]
##[PQB, PQC]
#spats [P,*,*]
[PQB, PQC]
##[PQB, PQC]
#spats [*,*,*]
[PQB, PQC]
##[PQB, PQC]
###!
###! Matchings per PQCZ
#spats [P,Q,C,Z]
[]
##[]
#spats [*,Q,C,Z]
[]
##[]
#spats [P,*,C,Z]
[]
##[]
#spats [P,Q,*,Z]
[]
##[]
#spats [P,Q,C,*]
[]
##[]
#spats [*,*,C,Z]
[]
##[]
#spats [*,Q,*,Z]
[]
##[]
#spats [*,Q,C,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,C,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
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
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.8.2 Subcas 8B
###!       lp123 = l1 = 1  lp23 = lp123 + 1  l2 > lp23 + 1  l3 > lp23 + 1
###!       w1 = P  w2 = PQBB  w3 = PQCC
###!-------------------------------------------------------------------
###!
#init d8B dicc
###!
#ins P
#ins PQBB
#ins PQCC
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
###! Prefixos per PQBB
#pre P
P
##P
#pre PQB
P
##P
#pre PQBB
PQBB
##PQBB
#pre ZQBB

##
#pre PQZB
P
##P
#pre PQBZ
P
##P
#pre ZQBBY

##
#pre PQBZY
P
##P
#pre PQBBZ
PQBB
##PQBB
#pre ZQBBYY

##
#pre PQBZYY
P
##P
#pre PQBBZY
PQBB
##PQBB
###!
###! Prefixos per PQCC
#pre P
P
##P
#pre PQC
P
##P
#pre PQCC
PQCC
##PQCC
#pre ZQCC

##
#pre PQZC
P
##P
#pre PQCZ
P
##P
#pre ZQCCY

##
#pre PQCZY
P
##P
#pre PQCCZ
PQCC
##PQCC
#pre ZQCCYY

##
#pre PQCZYY
P
##P
#pre PQCCZY
PQCC
##PQCC
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
[PQBB, PQCC]
##[PQBB, PQCC]
#spats [*,*,*,B]
[PQBB]
##[PQBB]
#spats [*,*,B,*]
[PQBB]
##[PQBB]
#spats [*,Q,*,*]
[PQBB, PQCC]
##[PQBB, PQCC]
#spats [P,*,*,*]
[PQBB, PQCC]
##[PQBB, PQCC]
#spats [*,*,*,*]
[PQBB, PQCC]
##[PQBB, PQCC]
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
###! Matchings per PQC
#spats [P,Q,C]
[]
##[]
#spats [*,Q,C]
[]
##[]
#spats [P,*,C]
[]
##[]
#spats [P,Q,*]
[]
##[]
#spats [*,*,C]
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
###! Matchings per PQCC
#spats [P,Q,C,C]
[PQCC]
##[PQCC]
#spats [*,Q,C,C]
[PQCC]
##[PQCC]
#spats [P,*,C,C]
[PQCC]
##[PQCC]
#spats [P,Q,*,C]
[PQCC]
##[PQCC]
#spats [P,Q,C,*]
[PQCC]
##[PQCC]
#spats [*,*,C,C]
[PQCC]
##[PQCC]
#spats [*,Q,*,C]
[PQCC]
##[PQCC]
#spats [*,Q,C,*]
[PQCC]
##[PQCC]
#spats [P,*,*,C]
[PQCC]
##[PQCC]
#spats [P,*,C,*]
[PQCC]
##[PQCC]
#spats [P,Q,*,*]
[PQBB, PQCC]
##[PQBB, PQCC]
#spats [*,*,*,C]
[PQCC]
##[PQCC]
#spats [*,*,C,*]
[PQCC]
##[PQCC]
#spats [*,Q,*,*]
[PQBB, PQCC]
##[PQBB, PQCC]
#spats [P,*,*,*]
[PQBB, PQCC]
##[PQBB, PQCC]
#spats [*,*,*,*]
[PQBB, PQCC]
##[PQBB, PQCC]
###!
###! Matchings per PQCCZ
#spats [P,Q,C,C,Z]
[]
##[]
#spats [*,Q,C,C,Z]
[]
##[]
#spats [P,*,C,C,Z]
[]
##[]
#spats [P,Q,*,C,Z]
[]
##[]
#spats [P,Q,C,*,Z]
[]
##[]
#spats [P,Q,C,C,*]
[]
##[]
#spats [*,*,C,C,Z]
[]
##[]
#spats [*,Q,*,C,Z]
[]
##[]
#spats [*,Q,C,*,Z]
[]
##[]
#spats [*,Q,C,C,*]
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
#spats [P,Q,*,*,Z]
[]
##[]
#spats [P,Q,*,C,*]
[]
##[]
#spats [P,Q,C,*,*]
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
#spats [*,Q,*,*,Z]
[]
##[]
#spats [*,Q,*,C,*]
[]
##[]
#spats [*,Q,C,*,*]
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
#spats [P,Q,*,*,*]
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
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.8.3 Subcas 8C
###!       lp123 = l1 = 1  lp23 > lp123 + 1  l2 = lp23 + 1  l3 = lp23 + 1
###!       w1 = P  w2 = PQQB  w3 = PQQC
###!-------------------------------------------------------------------
###!
#init d8C dicc
###!
#ins P
#ins PQQB
#ins PQQC
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
###! Prefixos per PQQB
#pre P
P
##P
#pre PQQ
P
##P
#pre PQQB
PQQB
##PQQB
#pre ZQQB

##
#pre PQZB
P
##P
#pre PQQZ
P
##P
#pre ZQQBY

##
#pre PQQZY
P
##P
#pre PQQBZ
PQQB
##PQQB
#pre ZQQBYY

##
#pre PQQZYY
P
##P
#pre PQQBZY
PQQB
##PQQB
###!
###! Prefixos per PQQC
#pre P
P
##P
#pre PQQ
P
##P
#pre PQQC
PQQC
##PQQC
#pre ZQQC

##
#pre PQZC
P
##P
#pre PQQZ
P
##P
#pre ZQQCY

##
#pre PQQZY
P
##P
#pre PQQCZ
PQQC
##PQQC
#pre ZQQCYY

##
#pre PQQZYY
P
##P
#pre PQQCZY
PQQC
##PQQC
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
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [*,*,Q,B]
[PQQB]
##[PQQB]
#spats [*,Q,*,B]
[PQQB]
##[PQQB]
#spats [*,Q,Q,*]
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [P,*,*,B]
[PQQB]
##[PQQB]
#spats [P,*,Q,*]
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [P,Q,*,*]
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [*,*,*,B]
[PQQB]
##[PQQB]
#spats [*,*,Q,*]
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [*,Q,*,*]
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [P,*,*,*]
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [*,*,*,*]
[PQQB, PQQC]
##[PQQB, PQQC]
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
###! Matchings per PQQC
#spats [P,Q,Q,C]
[PQQC]
##[PQQC]
#spats [*,Q,Q,C]
[PQQC]
##[PQQC]
#spats [P,*,Q,C]
[PQQC]
##[PQQC]
#spats [P,Q,*,C]
[PQQC]
##[PQQC]
#spats [P,Q,Q,*]
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [*,*,Q,C]
[PQQC]
##[PQQC]
#spats [*,Q,*,C]
[PQQC]
##[PQQC]
#spats [*,Q,Q,*]
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [P,*,*,C]
[PQQC]
##[PQQC]
#spats [P,*,Q,*]
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [P,Q,*,*]
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [*,*,*,C]
[PQQC]
##[PQQC]
#spats [*,*,Q,*]
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [*,Q,*,*]
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [P,*,*,*]
[PQQB, PQQC]
##[PQQB, PQQC]
#spats [*,*,*,*]
[PQQB, PQQC]
##[PQQB, PQQC]
###!
###! Matchings per PQQCZ
#spats [P,Q,Q,C,Z]
[]
##[]
#spats [*,Q,Q,C,Z]
[]
##[]
#spats [P,*,Q,C,Z]
[]
##[]
#spats [P,Q,*,C,Z]
[]
##[]
#spats [P,Q,Q,*,Z]
[]
##[]
#spats [P,Q,Q,C,*]
[]
##[]
#spats [*,*,Q,C,Z]
[]
##[]
#spats [*,Q,*,C,Z]
[]
##[]
#spats [*,Q,Q,*,Z]
[]
##[]
#spats [*,Q,Q,C,*]
[]
##[]
#spats [P,*,*,C,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,C,*]
[]
##[]
#spats [P,Q,*,*,Z]
[]
##[]
#spats [P,Q,*,C,*]
[]
##[]
#spats [P,Q,Q,*,*]
[]
##[]
#spats [*,*,*,C,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,C,*]
[]
##[]
#spats [*,Q,*,*,Z]
[]
##[]
#spats [*,Q,*,C,*]
[]
##[]
#spats [*,Q,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,C,*]
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
#spats [*,*,*,C,*]
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
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.8.4 Subcas 8D
###!       lp123 = l1 = 1  lp23 > lp123 + 1  l2 > lp23 + 1  l3 > lp23 + 1
###!       w1 = P  w2 = PQQBB  w3 = PQQCC
###!-------------------------------------------------------------------
###!
#init d8D dicc
###!
#ins P
#ins PQQBB
#ins PQQCC
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
###! Prefixos per PQQBB
#pre P
P
##P
#pre PQQB
P
##P
#pre PQQBB
PQQBB
##PQQBB
#pre ZQQBB

##
#pre PQQZB
P
##P
#pre PQQBZ
P
##P
#pre ZQQBBY

##
#pre PQQBZY
P
##P
#pre PQQBBZ
PQQBB
##PQQBB
#pre ZQQBBYY

##
#pre PQQBZYY
P
##P
#pre PQQBBZY
PQQBB
##PQQBB
###!
###! Prefixos per PQQCC
#pre P
P
##P
#pre PQQC
P
##P
#pre PQQCC
PQQCC
##PQQCC
#pre ZQQCC

##
#pre PQQZC
P
##P
#pre PQQCZ
P
##P
#pre ZQQCCY

##
#pre PQQCZY
P
##P
#pre PQQCCZ
PQQCC
##PQQCC
#pre ZQQCCYY

##
#pre PQQCZYY
P
##P
#pre PQQCCZY
PQQCC
##PQQCC
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
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
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
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
#spats [P,*,*,*,B]
[PQQBB]
##[PQQBB]
#spats [P,*,*,B,*]
[PQQBB]
##[PQQBB]
#spats [P,*,Q,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
#spats [P,Q,*,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
#spats [*,*,*,*,B]
[PQQBB]
##[PQQBB]
#spats [*,*,*,B,*]
[PQQBB]
##[PQQBB]
#spats [*,*,Q,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
#spats [*,Q,*,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
#spats [P,*,*,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
#spats [*,*,*,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
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
###! Matchings per PQQC
#spats [P,Q,Q,C]
[]
##[]
#spats [*,Q,Q,C]
[]
##[]
#spats [P,*,Q,C]
[]
##[]
#spats [P,Q,*,C]
[]
##[]
#spats [P,Q,Q,*]
[]
##[]
#spats [*,*,Q,C]
[]
##[]
#spats [*,Q,*,C]
[]
##[]
#spats [*,Q,Q,*]
[]
##[]
#spats [P,*,*,C]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,C]
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
###! Matchings per PQQCC
#spats [P,Q,Q,C,C]
[PQQCC]
##[PQQCC]
#spats [*,Q,Q,C,C]
[PQQCC]
##[PQQCC]
#spats [P,*,Q,C,C]
[PQQCC]
##[PQQCC]
#spats [P,Q,*,C,C]
[PQQCC]
##[PQQCC]
#spats [P,Q,Q,*,C]
[PQQCC]
##[PQQCC]
#spats [P,Q,Q,C,*]
[PQQCC]
##[PQQCC]
#spats [*,*,Q,C,C]
[PQQCC]
##[PQQCC]
#spats [*,Q,*,C,C]
[PQQCC]
##[PQQCC]
#spats [*,Q,Q,*,C]
[PQQCC]
##[PQQCC]
#spats [*,Q,Q,C,*]
[PQQCC]
##[PQQCC]
#spats [P,*,*,C,C]
[PQQCC]
##[PQQCC]
#spats [P,*,Q,*,C]
[PQQCC]
##[PQQCC]
#spats [P,*,Q,C,*]
[PQQCC]
##[PQQCC]
#spats [P,Q,*,*,C]
[PQQCC]
##[PQQCC]
#spats [P,Q,*,C,*]
[PQQCC]
##[PQQCC]
#spats [P,Q,Q,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
#spats [*,*,*,C,C]
[PQQCC]
##[PQQCC]
#spats [*,*,Q,*,C]
[PQQCC]
##[PQQCC]
#spats [*,*,Q,C,*]
[PQQCC]
##[PQQCC]
#spats [*,Q,*,*,C]
[PQQCC]
##[PQQCC]
#spats [*,Q,*,C,*]
[PQQCC]
##[PQQCC]
#spats [*,Q,Q,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
#spats [P,*,*,*,C]
[PQQCC]
##[PQQCC]
#spats [P,*,*,C,*]
[PQQCC]
##[PQQCC]
#spats [P,*,Q,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
#spats [P,Q,*,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
#spats [*,*,*,*,C]
[PQQCC]
##[PQQCC]
#spats [*,*,*,C,*]
[PQQCC]
##[PQQCC]
#spats [*,*,Q,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
#spats [*,Q,*,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
#spats [P,*,*,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
#spats [*,*,*,*,*]
[PQQBB, PQQCC]
##[PQQBB, PQQCC]
###!
###! Matchings per PQQCCZ
#spats [P,Q,Q,C,C,Z]
[]
##[]
#spats [*,Q,Q,C,C,Z]
[]
##[]
#spats [P,*,Q,C,C,Z]
[]
##[]
#spats [P,Q,*,C,C,Z]
[]
##[]
#spats [P,Q,Q,*,C,Z]
[]
##[]
#spats [P,Q,Q,C,*,Z]
[]
##[]
#spats [P,Q,Q,C,C,*]
[]
##[]
#spats [*,*,Q,C,C,Z]
[]
##[]
#spats [*,Q,*,C,C,Z]
[]
##[]
#spats [*,Q,Q,*,C,Z]
[]
##[]
#spats [*,Q,Q,C,*,Z]
[]
##[]
#spats [*,Q,Q,C,C,*]
[]
##[]
#spats [P,*,*,C,C,Z]
[]
##[]
#spats [P,*,Q,*,C,Z]
[]
##[]
#spats [P,*,Q,C,*,Z]
[]
##[]
#spats [P,*,Q,C,C,*]
[]
##[]
#spats [P,Q,*,*,C,Z]
[]
##[]
#spats [P,Q,*,C,*,Z]
[]
##[]
#spats [P,Q,*,C,C,*]
[]
##[]
#spats [P,Q,Q,*,*,Z]
[]
##[]
#spats [P,Q,Q,*,C,*]
[]
##[]
#spats [P,Q,Q,C,*,*]
[]
##[]
#spats [*,*,*,C,C,Z]
[]
##[]
#spats [*,*,Q,*,C,Z]
[]
##[]
#spats [*,*,Q,C,*,Z]
[]
##[]
#spats [*,*,Q,C,C,*]
[]
##[]
#spats [*,Q,*,*,C,Z]
[]
##[]
#spats [*,Q,*,C,*,Z]
[]
##[]
#spats [*,Q,*,C,C,*]
[]
##[]
#spats [*,Q,Q,*,*,Z]
[]
##[]
#spats [*,Q,Q,*,C,*]
[]
##[]
#spats [*,Q,Q,C,*,*]
[]
##[]
#spats [P,*,*,*,C,Z]
[]
##[]
#spats [P,*,*,C,*,Z]
[]
##[]
#spats [P,*,*,C,C,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,C,*]
[]
##[]
#spats [P,*,Q,C,*,*]
[]
##[]
#spats [P,Q,*,*,*,Z]
[]
##[]
#spats [P,Q,*,*,C,*]
[]
##[]
#spats [P,Q,*,C,*,*]
[]
##[]
#spats [P,Q,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,C,Z]
[]
##[]
#spats [*,*,*,C,*,Z]
[]
##[]
#spats [*,*,*,C,C,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,C,*]
[]
##[]
#spats [*,*,Q,C,*,*]
[]
##[]
#spats [*,Q,*,*,*,Z]
[]
##[]
#spats [*,Q,*,*,C,*]
[]
##[]
#spats [*,Q,*,C,*,*]
[]
##[]
#spats [*,Q,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,C,*]
[]
##[]
#spats [P,*,*,C,*,*]
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
#spats [*,*,*,*,C,*]
[]
##[]
#spats [*,*,*,C,*,*]
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
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.8.5 Subcas 8E
###!       lp123 = l1 > 1  lp23 = lp123 + 1  l2 = lp23 + 1  l3 = lp23 + 1
###!       w1 = PP  w2 = PPQB  w3 = PPQC
###!-------------------------------------------------------------------
###!
#init d8E dicc
###!
#ins PP
#ins PPQB
#ins PPQC
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
###! Prefixos per PPQB
#pre P

##
#pre PPQ
PP
##PP
#pre PPQB
PPQB
##PPQB
#pre ZPQB

##
#pre PPZB
PP
##PP
#pre PPQZ
PP
##PP
#pre ZPQBY

##
#pre PPQZY
PP
##PP
#pre PPQBZ
PPQB
##PPQB
#pre ZPQBYY

##
#pre PPQZYY
PP
##PP
#pre PPQBZY
PPQB
##PPQB
###!
###! Prefixos per PPQC
#pre P

##
#pre PPQ
PP
##PP
#pre PPQC
PPQC
##PPQC
#pre ZPQC

##
#pre PPZC
PP
##PP
#pre PPQZ
PP
##PP
#pre ZPQCY

##
#pre PPQZY
PP
##PP
#pre PPQCZ
PPQC
##PPQC
#pre ZPQCYY

##
#pre PPQZYY
PP
##PP
#pre PPQCZY
PPQC
##PPQC
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
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [*,*,Q,B]
[PPQB]
##[PPQB]
#spats [*,P,*,B]
[PPQB]
##[PPQB]
#spats [*,P,Q,*]
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [P,*,*,B]
[PPQB]
##[PPQB]
#spats [P,*,Q,*]
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [P,P,*,*]
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [*,*,*,B]
[PPQB]
##[PPQB]
#spats [*,*,Q,*]
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [*,P,*,*]
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [P,*,*,*]
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [*,*,*,*]
[PPQB, PPQC]
##[PPQB, PPQC]
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
###! Matchings per PPQC
#spats [P,P,Q,C]
[PPQC]
##[PPQC]
#spats [*,P,Q,C]
[PPQC]
##[PPQC]
#spats [P,*,Q,C]
[PPQC]
##[PPQC]
#spats [P,P,*,C]
[PPQC]
##[PPQC]
#spats [P,P,Q,*]
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [*,*,Q,C]
[PPQC]
##[PPQC]
#spats [*,P,*,C]
[PPQC]
##[PPQC]
#spats [*,P,Q,*]
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [P,*,*,C]
[PPQC]
##[PPQC]
#spats [P,*,Q,*]
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [P,P,*,*]
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [*,*,*,C]
[PPQC]
##[PPQC]
#spats [*,*,Q,*]
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [*,P,*,*]
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [P,*,*,*]
[PPQB, PPQC]
##[PPQB, PPQC]
#spats [*,*,*,*]
[PPQB, PPQC]
##[PPQB, PPQC]
###!
###! Matchings per PPQCZ
#spats [P,P,Q,C,Z]
[]
##[]
#spats [*,P,Q,C,Z]
[]
##[]
#spats [P,*,Q,C,Z]
[]
##[]
#spats [P,P,*,C,Z]
[]
##[]
#spats [P,P,Q,*,Z]
[]
##[]
#spats [P,P,Q,C,*]
[]
##[]
#spats [*,*,Q,C,Z]
[]
##[]
#spats [*,P,*,C,Z]
[]
##[]
#spats [*,P,Q,*,Z]
[]
##[]
#spats [*,P,Q,C,*]
[]
##[]
#spats [P,*,*,C,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,C,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,C,*]
[]
##[]
#spats [P,P,Q,*,*]
[]
##[]
#spats [*,*,*,C,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,C,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,C,*]
[]
##[]
#spats [*,P,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,C,*]
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
#spats [*,*,*,C,*]
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
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.8.6 Subcas 8F
###!       lp123 = l1 > 1  lp23 = lp123 + 1  l2 > lp23 + 1  l3 > lp23 + 1
###!       w1 = PP  w2 = PPQBB  w3 = PPQCC
###!-------------------------------------------------------------------
###!
#init d8F dicc
###!
#ins PP
#ins PPQBB
#ins PPQCC
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
###! Prefixos per PPQBB
#pre P

##
#pre PPQB
PP
##PP
#pre PPQBB
PPQBB
##PPQBB
#pre ZPQBB

##
#pre PPQZB
PP
##PP
#pre PPQBZ
PP
##PP
#pre ZPQBBY

##
#pre PPQBZY
PP
##PP
#pre PPQBBZ
PPQBB
##PPQBB
#pre ZPQBBYY

##
#pre PPQBZYY
PP
##PP
#pre PPQBBZY
PPQBB
##PPQBB
###!
###! Prefixos per PPQCC
#pre P

##
#pre PPQC
PP
##PP
#pre PPQCC
PPQCC
##PPQCC
#pre ZPQCC

##
#pre PPQZC
PP
##PP
#pre PPQCZ
PP
##PP
#pre ZPQCCY

##
#pre PPQCZY
PP
##PP
#pre PPQCCZ
PPQCC
##PPQCC
#pre ZPQCCYY

##
#pre PPQCZYY
PP
##PP
#pre PPQCCZY
PPQCC
##PPQCC
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
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
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
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
#spats [P,*,*,*,B]
[PPQBB]
##[PPQBB]
#spats [P,*,*,B,*]
[PPQBB]
##[PPQBB]
#spats [P,*,Q,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
#spats [P,P,*,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
#spats [*,*,*,*,B]
[PPQBB]
##[PPQBB]
#spats [*,*,*,B,*]
[PPQBB]
##[PPQBB]
#spats [*,*,Q,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
#spats [*,P,*,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
#spats [P,*,*,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
#spats [*,*,*,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
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
###! Matchings per PPQC
#spats [P,P,Q,C]
[]
##[]
#spats [*,P,Q,C]
[]
##[]
#spats [P,*,Q,C]
[]
##[]
#spats [P,P,*,C]
[]
##[]
#spats [P,P,Q,*]
[]
##[]
#spats [*,*,Q,C]
[]
##[]
#spats [*,P,*,C]
[]
##[]
#spats [*,P,Q,*]
[]
##[]
#spats [P,*,*,C]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,C]
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
###! Matchings per PPQCC
#spats [P,P,Q,C,C]
[PPQCC]
##[PPQCC]
#spats [*,P,Q,C,C]
[PPQCC]
##[PPQCC]
#spats [P,*,Q,C,C]
[PPQCC]
##[PPQCC]
#spats [P,P,*,C,C]
[PPQCC]
##[PPQCC]
#spats [P,P,Q,*,C]
[PPQCC]
##[PPQCC]
#spats [P,P,Q,C,*]
[PPQCC]
##[PPQCC]
#spats [*,*,Q,C,C]
[PPQCC]
##[PPQCC]
#spats [*,P,*,C,C]
[PPQCC]
##[PPQCC]
#spats [*,P,Q,*,C]
[PPQCC]
##[PPQCC]
#spats [*,P,Q,C,*]
[PPQCC]
##[PPQCC]
#spats [P,*,*,C,C]
[PPQCC]
##[PPQCC]
#spats [P,*,Q,*,C]
[PPQCC]
##[PPQCC]
#spats [P,*,Q,C,*]
[PPQCC]
##[PPQCC]
#spats [P,P,*,*,C]
[PPQCC]
##[PPQCC]
#spats [P,P,*,C,*]
[PPQCC]
##[PPQCC]
#spats [P,P,Q,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
#spats [*,*,*,C,C]
[PPQCC]
##[PPQCC]
#spats [*,*,Q,*,C]
[PPQCC]
##[PPQCC]
#spats [*,*,Q,C,*]
[PPQCC]
##[PPQCC]
#spats [*,P,*,*,C]
[PPQCC]
##[PPQCC]
#spats [*,P,*,C,*]
[PPQCC]
##[PPQCC]
#spats [*,P,Q,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
#spats [P,*,*,*,C]
[PPQCC]
##[PPQCC]
#spats [P,*,*,C,*]
[PPQCC]
##[PPQCC]
#spats [P,*,Q,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
#spats [P,P,*,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
#spats [*,*,*,*,C]
[PPQCC]
##[PPQCC]
#spats [*,*,*,C,*]
[PPQCC]
##[PPQCC]
#spats [*,*,Q,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
#spats [*,P,*,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
#spats [P,*,*,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
#spats [*,*,*,*,*]
[PPQBB, PPQCC]
##[PPQBB, PPQCC]
###!
###! Matchings per PPQCCZ
#spats [P,P,Q,C,C,Z]
[]
##[]
#spats [*,P,Q,C,C,Z]
[]
##[]
#spats [P,*,Q,C,C,Z]
[]
##[]
#spats [P,P,*,C,C,Z]
[]
##[]
#spats [P,P,Q,*,C,Z]
[]
##[]
#spats [P,P,Q,C,*,Z]
[]
##[]
#spats [P,P,Q,C,C,*]
[]
##[]
#spats [*,*,Q,C,C,Z]
[]
##[]
#spats [*,P,*,C,C,Z]
[]
##[]
#spats [*,P,Q,*,C,Z]
[]
##[]
#spats [*,P,Q,C,*,Z]
[]
##[]
#spats [*,P,Q,C,C,*]
[]
##[]
#spats [P,*,*,C,C,Z]
[]
##[]
#spats [P,*,Q,*,C,Z]
[]
##[]
#spats [P,*,Q,C,*,Z]
[]
##[]
#spats [P,*,Q,C,C,*]
[]
##[]
#spats [P,P,*,*,C,Z]
[]
##[]
#spats [P,P,*,C,*,Z]
[]
##[]
#spats [P,P,*,C,C,*]
[]
##[]
#spats [P,P,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,*,C,*]
[]
##[]
#spats [P,P,Q,C,*,*]
[]
##[]
#spats [*,*,*,C,C,Z]
[]
##[]
#spats [*,*,Q,*,C,Z]
[]
##[]
#spats [*,*,Q,C,*,Z]
[]
##[]
#spats [*,*,Q,C,C,*]
[]
##[]
#spats [*,P,*,*,C,Z]
[]
##[]
#spats [*,P,*,C,*,Z]
[]
##[]
#spats [*,P,*,C,C,*]
[]
##[]
#spats [*,P,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,*,C,*]
[]
##[]
#spats [*,P,Q,C,*,*]
[]
##[]
#spats [P,*,*,*,C,Z]
[]
##[]
#spats [P,*,*,C,*,Z]
[]
##[]
#spats [P,*,*,C,C,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,C,*]
[]
##[]
#spats [P,*,Q,C,*,*]
[]
##[]
#spats [P,P,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,C,*]
[]
##[]
#spats [P,P,*,C,*,*]
[]
##[]
#spats [P,P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,C,Z]
[]
##[]
#spats [*,*,*,C,*,Z]
[]
##[]
#spats [*,*,*,C,C,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,C,*]
[]
##[]
#spats [*,*,Q,C,*,*]
[]
##[]
#spats [*,P,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,C,*]
[]
##[]
#spats [*,P,*,C,*,*]
[]
##[]
#spats [*,P,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,C,*]
[]
##[]
#spats [P,*,*,C,*,*]
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
#spats [*,*,*,*,C,*]
[]
##[]
#spats [*,*,*,C,*,*]
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
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.8.7 Subcas 8G
###!       lp123 = l1 > 1  lp23 > lp123 + 1  l2 = lp23 + 1  l3 = lp23 + 1
###!       w1 = PP  w2 = PPQQB  w3 = PPQQC
###!-------------------------------------------------------------------
###!
#init d8G dicc
###!
#ins PP
#ins PPQQB
#ins PPQQC
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
###! Prefixos per PPQQB
#pre P

##
#pre PPQQ
PP
##PP
#pre PPQQB
PPQQB
##PPQQB
#pre ZPQQB

##
#pre PPQZB
PP
##PP
#pre PPQQZ
PP
##PP
#pre ZPQQBY

##
#pre PPQQZY
PP
##PP
#pre PPQQBZ
PPQQB
##PPQQB
#pre ZPQQBYY

##
#pre PPQQZYY
PP
##PP
#pre PPQQBZY
PPQQB
##PPQQB
###!
###! Prefixos per PPQQC
#pre P

##
#pre PPQQ
PP
##PP
#pre PPQQC
PPQQC
##PPQQC
#pre ZPQQC

##
#pre PPQZC
PP
##PP
#pre PPQQZ
PP
##PP
#pre ZPQQCY

##
#pre PPQQZY
PP
##PP
#pre PPQQCZ
PPQQC
##PPQQC
#pre ZPQQCYY

##
#pre PPQQZYY
PP
##PP
#pre PPQQCZY
PPQQC
##PPQQC
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
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
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
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,*,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [P,*,Q,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,P,*,*,B]
[PPQQB]
##[PPQQB]
#spats [P,P,*,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,P,Q,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,*,*,Q,B]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,*,B]
[PPQQB]
##[PPQQB]
#spats [*,*,Q,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,P,*,*,B]
[PPQQB]
##[PPQQB]
#spats [*,P,*,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,P,Q,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,*,*,*,B]
[PPQQB]
##[PPQQB]
#spats [P,*,*,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,*,Q,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,P,*,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,*,*,*,B]
[PPQQB]
##[PPQQB]
#spats [*,*,*,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,*,Q,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,P,*,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,*,*,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,*,*,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
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
###! Matchings per PPQQC
#spats [P,P,Q,Q,C]
[PPQQC]
##[PPQQC]
#spats [*,P,Q,Q,C]
[PPQQC]
##[PPQQC]
#spats [P,*,Q,Q,C]
[PPQQC]
##[PPQQC]
#spats [P,P,*,Q,C]
[PPQQC]
##[PPQQC]
#spats [P,P,Q,*,C]
[PPQQC]
##[PPQQC]
#spats [P,P,Q,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,*,Q,Q,C]
[PPQQC]
##[PPQQC]
#spats [*,P,*,Q,C]
[PPQQC]
##[PPQQC]
#spats [*,P,Q,*,C]
[PPQQC]
##[PPQQC]
#spats [*,P,Q,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,*,*,Q,C]
[PPQQC]
##[PPQQC]
#spats [P,*,Q,*,C]
[PPQQC]
##[PPQQC]
#spats [P,*,Q,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,P,*,*,C]
[PPQQC]
##[PPQQC]
#spats [P,P,*,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,P,Q,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,*,*,Q,C]
[PPQQC]
##[PPQQC]
#spats [*,*,Q,*,C]
[PPQQC]
##[PPQQC]
#spats [*,*,Q,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,P,*,*,C]
[PPQQC]
##[PPQQC]
#spats [*,P,*,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,P,Q,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,*,*,*,C]
[PPQQC]
##[PPQQC]
#spats [P,*,*,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,*,Q,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,P,*,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,*,*,*,C]
[PPQQC]
##[PPQQC]
#spats [*,*,*,Q,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,*,Q,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,P,*,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [P,*,*,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
#spats [*,*,*,*,*]
[PPQQB, PPQQC]
##[PPQQB, PPQQC]
###!
###! Matchings per PPQQCZ
#spats [P,P,Q,Q,C,Z]
[]
##[]
#spats [*,P,Q,Q,C,Z]
[]
##[]
#spats [P,*,Q,Q,C,Z]
[]
##[]
#spats [P,P,*,Q,C,Z]
[]
##[]
#spats [P,P,Q,*,C,Z]
[]
##[]
#spats [P,P,Q,Q,*,Z]
[]
##[]
#spats [P,P,Q,Q,C,*]
[]
##[]
#spats [*,*,Q,Q,C,Z]
[]
##[]
#spats [*,P,*,Q,C,Z]
[]
##[]
#spats [*,P,Q,*,C,Z]
[]
##[]
#spats [*,P,Q,Q,*,Z]
[]
##[]
#spats [*,P,Q,Q,C,*]
[]
##[]
#spats [P,*,*,Q,C,Z]
[]
##[]
#spats [P,*,Q,*,C,Z]
[]
##[]
#spats [P,*,Q,Q,*,Z]
[]
##[]
#spats [P,*,Q,Q,C,*]
[]
##[]
#spats [P,P,*,*,C,Z]
[]
##[]
#spats [P,P,*,Q,*,Z]
[]
##[]
#spats [P,P,*,Q,C,*]
[]
##[]
#spats [P,P,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,*,C,*]
[]
##[]
#spats [P,P,Q,Q,*,*]
[]
##[]
#spats [*,*,*,Q,C,Z]
[]
##[]
#spats [*,*,Q,*,C,Z]
[]
##[]
#spats [*,*,Q,Q,*,Z]
[]
##[]
#spats [*,*,Q,Q,C,*]
[]
##[]
#spats [*,P,*,*,C,Z]
[]
##[]
#spats [*,P,*,Q,*,Z]
[]
##[]
#spats [*,P,*,Q,C,*]
[]
##[]
#spats [*,P,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,*,C,*]
[]
##[]
#spats [*,P,Q,Q,*,*]
[]
##[]
#spats [P,*,*,*,C,Z]
[]
##[]
#spats [P,*,*,Q,*,Z]
[]
##[]
#spats [P,*,*,Q,C,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,C,*]
[]
##[]
#spats [P,*,Q,Q,*,*]
[]
##[]
#spats [P,P,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,C,*]
[]
##[]
#spats [P,P,*,Q,*,*]
[]
##[]
#spats [P,P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,C,Z]
[]
##[]
#spats [*,*,*,Q,*,Z]
[]
##[]
#spats [*,*,*,Q,C,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,C,*]
[]
##[]
#spats [*,*,Q,Q,*,*]
[]
##[]
#spats [*,P,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,C,*]
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
#spats [P,*,*,*,C,*]
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
#spats [*,*,*,*,C,*]
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
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.8.8 Subcas 8H
###!       lp123 = l1 > 1  lp23 > lp123 + 1  l2 > lp23 + 1  l3 > lp23 + 1
###!       w1 = PP  w2 = PPQQBB  w3 = PPQQCC
###!-------------------------------------------------------------------
###!
#init d8H dicc
###!
#ins PP
#ins PPQQBB
#ins PPQQCC
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
###! Prefixos per PPQQBB
#pre P

##
#pre PPQQB
PP
##PP
#pre PPQQBB
PPQQBB
##PPQQBB
#pre ZPQQBB

##
#pre PPQQZB
PP
##PP
#pre PPQQBZ
PP
##PP
#pre ZPQQBBY

##
#pre PPQQBZY
PP
##PP
#pre PPQQBBZ
PPQQBB
##PPQQBB
#pre ZPQQBBYY

##
#pre PPQQBZYY
PP
##PP
#pre PPQQBBZY
PPQQBB
##PPQQBB
###!
###! Prefixos per PPQQCC
#pre P

##
#pre PPQQC
PP
##PP
#pre PPQQCC
PPQQCC
##PPQQCC
#pre ZPQQCC

##
#pre PPQQZC
PP
##PP
#pre PPQQCZ
PP
##PP
#pre ZPQQCCY

##
#pre PPQQCZY
PP
##PP
#pre PPQQCCZ
PPQQCC
##PPQQCC
#pre ZPQQCCYY

##
#pre PPQQCZYY
PP
##PP
#pre PPQQCCZY
PPQQCC
##PPQQCC
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
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
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
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
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
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [P,P,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,P,*,Q,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [P,P,Q,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
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
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,P,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,P,*,Q,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,P,Q,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [P,*,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [P,*,*,Q,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [P,*,Q,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [P,P,*,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,*,*,*,*,B]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,*,B,*]
[PPQQBB]
##[PPQQBB]
#spats [*,*,*,Q,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,*,Q,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,P,*,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [P,*,*,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,*,*,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
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
[]
##[]
###!
###! Matchings per PPQQC
#spats [P,P,Q,Q,C]
[]
##[]
#spats [*,P,Q,Q,C]
[]
##[]
#spats [P,*,Q,Q,C]
[]
##[]
#spats [P,P,*,Q,C]
[]
##[]
#spats [P,P,Q,*,C]
[]
##[]
#spats [P,P,Q,Q,*]
[]
##[]
#spats [*,*,Q,Q,C]
[]
##[]
#spats [*,P,*,Q,C]
[]
##[]
#spats [*,P,Q,*,C]
[]
##[]
#spats [*,P,Q,Q,*]
[]
##[]
#spats [P,*,*,Q,C]
[]
##[]
#spats [P,*,Q,*,C]
[]
##[]
#spats [P,*,Q,Q,*]
[]
##[]
#spats [P,P,*,*,C]
[]
##[]
#spats [P,P,*,Q,*]
[]
##[]
#spats [P,P,Q,*,*]
[]
##[]
#spats [*,*,*,Q,C]
[]
##[]
#spats [*,*,Q,*,C]
[]
##[]
#spats [*,*,Q,Q,*]
[]
##[]
#spats [*,P,*,*,C]
[]
##[]
#spats [*,P,*,Q,*]
[]
##[]
#spats [*,P,Q,*,*]
[]
##[]
#spats [P,*,*,*,C]
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
#spats [*,*,*,*,C]
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
###! Matchings per PPQQCC
#spats [P,P,Q,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,Q,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,Q,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,Q,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,*,*,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,P,Q,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,Q,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,P,Q,Q,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,*,*,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,Q,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [P,*,*,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,*,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,*,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,Q,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [P,P,*,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,Q,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [P,P,Q,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,*,*,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,*,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,*,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,Q,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,P,*,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,Q,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,P,Q,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [P,*,*,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,*,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,*,*,Q,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [P,*,Q,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [P,P,*,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,*,*,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,*,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,*,*,Q,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,*,Q,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,P,*,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [P,*,*,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
#spats [*,*,*,*,*,*]
[PPQQBB, PPQQCC]
##[PPQQBB, PPQQCC]
###!
###! Matchings per PPQQCCZ
#spats [P,P,Q,Q,C,C,Z]
[]
##[]
#spats [*,P,Q,Q,C,C,Z]
[]
##[]
#spats [P,*,Q,Q,C,C,Z]
[]
##[]
#spats [P,P,*,Q,C,C,Z]
[]
##[]
#spats [P,P,Q,*,C,C,Z]
[]
##[]
#spats [P,P,Q,Q,*,C,Z]
[]
##[]
#spats [P,P,Q,Q,C,*,Z]
[]
##[]
#spats [P,P,Q,Q,C,C,*]
[]
##[]
#spats [*,*,Q,Q,C,C,Z]
[]
##[]
#spats [*,P,*,Q,C,C,Z]
[]
##[]
#spats [*,P,Q,*,C,C,Z]
[]
##[]
#spats [*,P,Q,Q,*,C,Z]
[]
##[]
#spats [*,P,Q,Q,C,*,Z]
[]
##[]
#spats [*,P,Q,Q,C,C,*]
[]
##[]
#spats [P,*,*,Q,C,C,Z]
[]
##[]
#spats [P,*,Q,*,C,C,Z]
[]
##[]
#spats [P,*,Q,Q,*,C,Z]
[]
##[]
#spats [P,*,Q,Q,C,*,Z]
[]
##[]
#spats [P,*,Q,Q,C,C,*]
[]
##[]
#spats [P,P,*,*,C,C,Z]
[]
##[]
#spats [P,P,*,Q,*,C,Z]
[]
##[]
#spats [P,P,*,Q,C,*,Z]
[]
##[]
#spats [P,P,*,Q,C,C,*]
[]
##[]
#spats [P,P,Q,*,*,C,Z]
[]
##[]
#spats [P,P,Q,*,C,*,Z]
[]
##[]
#spats [P,P,Q,*,C,C,*]
[]
##[]
#spats [P,P,Q,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,Q,*,C,*]
[]
##[]
#spats [P,P,Q,Q,C,*,*]
[]
##[]
#spats [*,*,*,Q,C,C,Z]
[]
##[]
#spats [*,*,Q,*,C,C,Z]
[]
##[]
#spats [*,*,Q,Q,*,C,Z]
[]
##[]
#spats [*,*,Q,Q,C,*,Z]
[]
##[]
#spats [*,*,Q,Q,C,C,*]
[]
##[]
#spats [*,P,*,*,C,C,Z]
[]
##[]
#spats [*,P,*,Q,*,C,Z]
[]
##[]
#spats [*,P,*,Q,C,*,Z]
[]
##[]
#spats [*,P,*,Q,C,C,*]
[]
##[]
#spats [*,P,Q,*,*,C,Z]
[]
##[]
#spats [*,P,Q,*,C,*,Z]
[]
##[]
#spats [*,P,Q,*,C,C,*]
[]
##[]
#spats [*,P,Q,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,Q,*,C,*]
[]
##[]
#spats [*,P,Q,Q,C,*,*]
[]
##[]
#spats [P,*,*,*,C,C,Z]
[]
##[]
#spats [P,*,*,Q,*,C,Z]
[]
##[]
#spats [P,*,*,Q,C,*,Z]
[]
##[]
#spats [P,*,*,Q,C,C,*]
[]
##[]
#spats [P,*,Q,*,*,C,Z]
[]
##[]
#spats [P,*,Q,*,C,*,Z]
[]
##[]
#spats [P,*,Q,*,C,C,*]
[]
##[]
#spats [P,*,Q,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,Q,*,C,*]
[]
##[]
#spats [P,*,Q,Q,C,*,*]
[]
##[]
#spats [P,P,*,*,*,C,Z]
[]
##[]
#spats [P,P,*,*,C,*,Z]
[]
##[]
#spats [P,P,*,*,C,C,*]
[]
##[]
#spats [P,P,*,Q,*,*,Z]
[]
##[]
#spats [P,P,*,Q,*,C,*]
[]
##[]
#spats [P,P,*,Q,C,*,*]
[]
##[]
#spats [P,P,Q,*,*,*,Z]
[]
##[]
#spats [P,P,Q,*,*,C,*]
[]
##[]
#spats [P,P,Q,*,C,*,*]
[]
##[]
#spats [P,P,Q,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,C,C,Z]
[]
##[]
#spats [*,*,*,Q,*,C,Z]
[]
##[]
#spats [*,*,*,Q,C,*,Z]
[]
##[]
#spats [*,*,*,Q,C,C,*]
[]
##[]
#spats [*,*,Q,*,*,C,Z]
[]
##[]
#spats [*,*,Q,*,C,*,Z]
[]
##[]
#spats [*,*,Q,*,C,C,*]
[]
##[]
#spats [*,*,Q,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,Q,*,C,*]
[]
##[]
#spats [*,*,Q,Q,C,*,*]
[]
##[]
#spats [*,P,*,*,*,C,Z]
[]
##[]
#spats [*,P,*,*,C,*,Z]
[]
##[]
#spats [*,P,*,*,C,C,*]
[]
##[]
#spats [*,P,*,Q,*,*,Z]
[]
##[]
#spats [*,P,*,Q,*,C,*]
[]
##[]
#spats [*,P,*,Q,C,*,*]
[]
##[]
#spats [*,P,Q,*,*,*,Z]
[]
##[]
#spats [*,P,Q,*,*,C,*]
[]
##[]
#spats [*,P,Q,*,C,*,*]
[]
##[]
#spats [*,P,Q,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,C,Z]
[]
##[]
#spats [P,*,*,*,C,*,Z]
[]
##[]
#spats [P,*,*,*,C,C,*]
[]
##[]
#spats [P,*,*,Q,*,*,Z]
[]
##[]
#spats [P,*,*,Q,*,C,*]
[]
##[]
#spats [P,*,*,Q,C,*,*]
[]
##[]
#spats [P,*,Q,*,*,*,Z]
[]
##[]
#spats [P,*,Q,*,*,C,*]
[]
##[]
#spats [P,*,Q,*,C,*,*]
[]
##[]
#spats [P,*,Q,Q,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,*,C,*]
[]
##[]
#spats [P,P,*,*,C,*,*]
[]
##[]
#spats [P,P,*,Q,*,*,*]
[]
##[]
#spats [P,P,Q,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,C,Z]
[]
##[]
#spats [*,*,*,*,C,*,Z]
[]
##[]
#spats [*,*,*,*,C,C,*]
[]
##[]
#spats [*,*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,*,Q,*,C,*]
[]
##[]
#spats [*,*,*,Q,C,*,*]
[]
##[]
#spats [*,*,Q,*,*,*,Z]
[]
##[]
#spats [*,*,Q,*,*,C,*]
[]
##[]
#spats [*,*,Q,*,C,*,*]
[]
##[]
#spats [*,*,Q,Q,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,*,C,*]
[]
##[]
#spats [*,P,*,*,C,*,*]
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
#spats [P,*,*,*,*,C,*]
[]
##[]
#spats [P,*,*,*,C,*,*]
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
#spats [*,*,*,*,*,C,*]
[]
##[]
#spats [*,*,*,*,C,*,*]
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
###!
#destroy
###!
###!
###!-------------------------------------------------------------------
###103.9 CAS NÚMERO 9
###!     Una d'elles es prefixe d'un altre (w1 de w2) i aquesta
###!     es prefixe de la tercera (w2 de w3):
###!     p123 = p12 = p13 = w1 = P+    p23 = w2 = P+Q+    w3 = P+Q+C+
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###103.9.1 Subcas 9A
###!           lp123 = l1 = 1  l2 = l1 + 1  l3 = l2 + 1
###!           w1 = P  w2 = PQ  w3 = PQC
###!-------------------------------------------------------------------
###!
#init d9A dicc
###!
#ins P
#ins PQ
#ins PQC
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
###! Prefixos per PQ
#pre P
P
##P
#pre PQ
PQ
##PQ
#pre ZQ

##
#pre PZ
P
##P
#pre ZQY

##
#pre PZY
P
##P
#pre PQZ
PQ
##PQ
#pre ZQYY

##
#pre PZYY
P
##P
#pre PQZY
PQ
##PQ
###!
###! Prefixos per PQC
#pre P
P
##P
#pre PQ
PQ
##PQ
#pre PQC
PQC
##PQC
#pre ZQC

##
#pre PZC
P
##P
#pre PQZ
PQ
##PQ
#pre ZQCY

##
#pre PQZY
PQ
##PQ
#pre PQCZ
PQC
##PQC
#pre ZQCYY

##
#pre PQZYY
PQ
##PQ
#pre PQCZY
PQC
##PQC
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
[PQ]
##[PQ]
#spats [*,*]
[PQ]
##[PQ]
###!
###! Matchings per P
#spats [P]
[P]
##[P]
#spats [*]
[P]
##[P]
###!
###! Matchings per PQ
#spats [P,Q]
[PQ]
##[PQ]
#spats [*,Q]
[PQ]
##[PQ]
#spats [P,*]
[PQ]
##[PQ]
#spats [*,*]
[PQ]
##[PQ]
###!
###! Matchings per PQZ
#spats [P,Q,Z]
[]
##[]
#spats [*,Q,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,Q,*]
[PQC]
##[PQC]
#spats [*,*,Z]
[]
##[]
#spats [*,Q,*]
[PQC]
##[PQC]
#spats [P,*,*]
[PQC]
##[PQC]
#spats [*,*,*]
[PQC]
##[PQC]
###!
###! Matchings per PQ
#spats [P,Q]
[PQ]
##[PQ]
#spats [*,Q]
[PQ]
##[PQ]
#spats [P,*]
[PQ]
##[PQ]
#spats [*,*]
[PQ]
##[PQ]
###!
###! Matchings per PQC
#spats [P,Q,C]
[PQC]
##[PQC]
#spats [*,Q,C]
[PQC]
##[PQC]
#spats [P,*,C]
[PQC]
##[PQC]
#spats [P,Q,*]
[PQC]
##[PQC]
#spats [*,*,C]
[PQC]
##[PQC]
#spats [*,Q,*]
[PQC]
##[PQC]
#spats [P,*,*]
[PQC]
##[PQC]
#spats [*,*,*]
[PQC]
##[PQC]
###!
###! Matchings per PQCZ
#spats [P,Q,C,Z]
[]
##[]
#spats [*,Q,C,Z]
[]
##[]
#spats [P,*,C,Z]
[]
##[]
#spats [P,Q,*,Z]
[]
##[]
#spats [P,Q,C,*]
[]
##[]
#spats [*,*,C,Z]
[]
##[]
#spats [*,Q,*,Z]
[]
##[]
#spats [*,Q,C,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,C,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,C,*]
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
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.9.2 Subcas 9B
###!           lp123 = l1 = 1  l2 = l1 + 1  l3 > l2 + 1
###!           w1 = P  w2 = PQ  w3 = PQCC
###!-------------------------------------------------------------------
###!
#init d9B dicc
###!
#ins P
#ins PQ
#ins PQCC
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
###! Prefixos per PQ
#pre P
P
##P
#pre PQ
PQ
##PQ
#pre ZQ

##
#pre PZ
P
##P
#pre ZQY

##
#pre PZY
P
##P
#pre PQZ
PQ
##PQ
#pre ZQYY

##
#pre PZYY
P
##P
#pre PQZY
PQ
##PQ
###!
###! Prefixos per PQCC
#pre P
P
##P
#pre PQC
PQ
##PQ
#pre PQCC
PQCC
##PQCC
#pre ZQCC

##
#pre PQZC
PQ
##PQ
#pre PQCZ
PQ
##PQ
#pre ZQCCY

##
#pre PQCZY
PQ
##PQ
#pre PQCCZ
PQCC
##PQCC
#pre ZQCCYY

##
#pre PQCZYY
PQ
##PQ
#pre PQCCZY
PQCC
##PQCC
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
[PQ]
##[PQ]
#spats [*,*]
[PQ]
##[PQ]
###!
###! Matchings per P
#spats [P]
[P]
##[P]
#spats [*]
[P]
##[P]
###!
###! Matchings per PQ
#spats [P,Q]
[PQ]
##[PQ]
#spats [*,Q]
[PQ]
##[PQ]
#spats [P,*]
[PQ]
##[PQ]
#spats [*,*]
[PQ]
##[PQ]
###!
###! Matchings per PQZ
#spats [P,Q,Z]
[]
##[]
#spats [*,Q,Z]
[]
##[]
#spats [P,*,Z]
[]
##[]
#spats [P,Q,*]
[]
##[]
#spats [*,*,Z]
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
###! Matchings per PQC
#spats [P,Q,C]
[]
##[]
#spats [*,Q,C]
[]
##[]
#spats [P,*,C]
[]
##[]
#spats [P,Q,*]
[]
##[]
#spats [*,*,C]
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
###! Matchings per PQCC
#spats [P,Q,C,C]
[PQCC]
##[PQCC]
#spats [*,Q,C,C]
[PQCC]
##[PQCC]
#spats [P,*,C,C]
[PQCC]
##[PQCC]
#spats [P,Q,*,C]
[PQCC]
##[PQCC]
#spats [P,Q,C,*]
[PQCC]
##[PQCC]
#spats [*,*,C,C]
[PQCC]
##[PQCC]
#spats [*,Q,*,C]
[PQCC]
##[PQCC]
#spats [*,Q,C,*]
[PQCC]
##[PQCC]
#spats [P,*,*,C]
[PQCC]
##[PQCC]
#spats [P,*,C,*]
[PQCC]
##[PQCC]
#spats [P,Q,*,*]
[PQCC]
##[PQCC]
#spats [*,*,*,C]
[PQCC]
##[PQCC]
#spats [*,*,C,*]
[PQCC]
##[PQCC]
#spats [*,Q,*,*]
[PQCC]
##[PQCC]
#spats [P,*,*,*]
[PQCC]
##[PQCC]
#spats [*,*,*,*]
[PQCC]
##[PQCC]
###!
###! Matchings per PQCCZ
#spats [P,Q,C,C,Z]
[]
##[]
#spats [*,Q,C,C,Z]
[]
##[]
#spats [P,*,C,C,Z]
[]
##[]
#spats [P,Q,*,C,Z]
[]
##[]
#spats [P,Q,C,*,Z]
[]
##[]
#spats [P,Q,C,C,*]
[]
##[]
#spats [*,*,C,C,Z]
[]
##[]
#spats [*,Q,*,C,Z]
[]
##[]
#spats [*,Q,C,*,Z]
[]
##[]
#spats [*,Q,C,C,*]
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
#spats [P,Q,*,*,Z]
[]
##[]
#spats [P,Q,*,C,*]
[]
##[]
#spats [P,Q,C,*,*]
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
#spats [*,Q,*,*,Z]
[]
##[]
#spats [*,Q,*,C,*]
[]
##[]
#spats [*,Q,C,*,*]
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
#spats [P,Q,*,*,*]
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
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.9.3 Subcas 9C
###!           lp123 = l1 = 1  l2 > l1 + 1  l3 = l2 + 1
###!           w1 = P  w2 = PQQ  w3 = PQQC
###!-------------------------------------------------------------------
###!
#init d9C dicc
###!
#ins P
#ins PQQ
#ins PQQC
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
###! Prefixos per PQQ
#pre P
P
##P
#pre PQ
P
##P
#pre PQQ
PQQ
##PQQ
#pre ZQQ

##
#pre PZQ
P
##P
#pre PQZ
P
##P
#pre ZQQY

##
#pre PQZY
P
##P
#pre PQQZ
PQQ
##PQQ
#pre ZQQYY

##
#pre PQZYY
P
##P
#pre PQQZY
PQQ
##PQQ
###!
###! Prefixos per PQQC
#pre P
P
##P
#pre PQQ
PQQ
##PQQ
#pre PQQC
PQQC
##PQQC
#pre ZQQC

##
#pre PQZC
P
##P
#pre PQQZ
PQQ
##PQQ
#pre ZQQCY

##
#pre PQQZY
PQQ
##PQQ
#pre PQQCZ
PQQC
##PQQC
#pre ZQQCYY

##
#pre PQQZYY
PQQ
##PQQ
#pre PQQCZY
PQQC
##PQQC
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
###! Matchings per PQQ
#spats [P,Q,Q]
[PQQ]
##[PQQ]
#spats [*,Q,Q]
[PQQ]
##[PQQ]
#spats [P,*,Q]
[PQQ]
##[PQQ]
#spats [P,Q,*]
[PQQ]
##[PQQ]
#spats [*,*,Q]
[PQQ]
##[PQQ]
#spats [*,Q,*]
[PQQ]
##[PQQ]
#spats [P,*,*]
[PQQ]
##[PQQ]
#spats [*,*,*]
[PQQ]
##[PQQ]
###!
###! Matchings per PQQZ
#spats [P,Q,Q,Z]
[]
##[]
#spats [*,Q,Q,Z]
[]
##[]
#spats [P,*,Q,Z]
[]
##[]
#spats [P,Q,*,Z]
[]
##[]
#spats [P,Q,Q,*]
[PQQC]
##[PQQC]
#spats [*,*,Q,Z]
[]
##[]
#spats [*,Q,*,Z]
[]
##[]
#spats [*,Q,Q,*]
[PQQC]
##[PQQC]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,Q,*]
[PQQC]
##[PQQC]
#spats [P,Q,*,*]
[PQQC]
##[PQQC]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,Q,*]
[PQQC]
##[PQQC]
#spats [*,Q,*,*]
[PQQC]
##[PQQC]
#spats [P,*,*,*]
[PQQC]
##[PQQC]
#spats [*,*,*,*]
[PQQC]
##[PQQC]
###!
###! Matchings per PQQ
#spats [P,Q,Q]
[PQQ]
##[PQQ]
#spats [*,Q,Q]
[PQQ]
##[PQQ]
#spats [P,*,Q]
[PQQ]
##[PQQ]
#spats [P,Q,*]
[PQQ]
##[PQQ]
#spats [*,*,Q]
[PQQ]
##[PQQ]
#spats [*,Q,*]
[PQQ]
##[PQQ]
#spats [P,*,*]
[PQQ]
##[PQQ]
#spats [*,*,*]
[PQQ]
##[PQQ]
###!
###! Matchings per PQQC
#spats [P,Q,Q,C]
[PQQC]
##[PQQC]
#spats [*,Q,Q,C]
[PQQC]
##[PQQC]
#spats [P,*,Q,C]
[PQQC]
##[PQQC]
#spats [P,Q,*,C]
[PQQC]
##[PQQC]
#spats [P,Q,Q,*]
[PQQC]
##[PQQC]
#spats [*,*,Q,C]
[PQQC]
##[PQQC]
#spats [*,Q,*,C]
[PQQC]
##[PQQC]
#spats [*,Q,Q,*]
[PQQC]
##[PQQC]
#spats [P,*,*,C]
[PQQC]
##[PQQC]
#spats [P,*,Q,*]
[PQQC]
##[PQQC]
#spats [P,Q,*,*]
[PQQC]
##[PQQC]
#spats [*,*,*,C]
[PQQC]
##[PQQC]
#spats [*,*,Q,*]
[PQQC]
##[PQQC]
#spats [*,Q,*,*]
[PQQC]
##[PQQC]
#spats [P,*,*,*]
[PQQC]
##[PQQC]
#spats [*,*,*,*]
[PQQC]
##[PQQC]
###!
###! Matchings per PQQCZ
#spats [P,Q,Q,C,Z]
[]
##[]
#spats [*,Q,Q,C,Z]
[]
##[]
#spats [P,*,Q,C,Z]
[]
##[]
#spats [P,Q,*,C,Z]
[]
##[]
#spats [P,Q,Q,*,Z]
[]
##[]
#spats [P,Q,Q,C,*]
[]
##[]
#spats [*,*,Q,C,Z]
[]
##[]
#spats [*,Q,*,C,Z]
[]
##[]
#spats [*,Q,Q,*,Z]
[]
##[]
#spats [*,Q,Q,C,*]
[]
##[]
#spats [P,*,*,C,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,C,*]
[]
##[]
#spats [P,Q,*,*,Z]
[]
##[]
#spats [P,Q,*,C,*]
[]
##[]
#spats [P,Q,Q,*,*]
[]
##[]
#spats [*,*,*,C,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,C,*]
[]
##[]
#spats [*,Q,*,*,Z]
[]
##[]
#spats [*,Q,*,C,*]
[]
##[]
#spats [*,Q,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,C,*]
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
#spats [*,*,*,C,*]
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
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.9.4 Subcas 9D
###!           lp123 = l1 = 1  l2 > l1 + 1  l3 > l2 + 1
###!           w1 = P  w2 = PQQ  w3 = PQQCC
###!-------------------------------------------------------------------
###!
#init d9D dicc
###!
#ins P
#ins PQQ
#ins PQQCC
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
###! Prefixos per PQQ
#pre P
P
##P
#pre PQ
P
##P
#pre PQQ
PQQ
##PQQ
#pre ZQQ

##
#pre PZQ
P
##P
#pre PQZ
P
##P
#pre ZQQY

##
#pre PQZY
P
##P
#pre PQQZ
PQQ
##PQQ
#pre ZQQYY

##
#pre PQZYY
P
##P
#pre PQQZY
PQQ
##PQQ
###!
###! Prefixos per PQQCC
#pre P
P
##P
#pre PQQC
PQQ
##PQQ
#pre PQQCC
PQQCC
##PQQCC
#pre ZQQCC

##
#pre PQQZC
PQQ
##PQQ
#pre PQQCZ
PQQ
##PQQ
#pre ZQQCCY

##
#pre PQQCZY
PQQ
##PQQ
#pre PQQCCZ
PQQCC
##PQQCC
#pre ZQQCCYY

##
#pre PQQCZYY
PQQ
##PQQ
#pre PQQCCZY
PQQCC
##PQQCC
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
###! Matchings per PQQ
#spats [P,Q,Q]
[PQQ]
##[PQQ]
#spats [*,Q,Q]
[PQQ]
##[PQQ]
#spats [P,*,Q]
[PQQ]
##[PQQ]
#spats [P,Q,*]
[PQQ]
##[PQQ]
#spats [*,*,Q]
[PQQ]
##[PQQ]
#spats [*,Q,*]
[PQQ]
##[PQQ]
#spats [P,*,*]
[PQQ]
##[PQQ]
#spats [*,*,*]
[PQQ]
##[PQQ]
###!
###! Matchings per PQQZ
#spats [P,Q,Q,Z]
[]
##[]
#spats [*,Q,Q,Z]
[]
##[]
#spats [P,*,Q,Z]
[]
##[]
#spats [P,Q,*,Z]
[]
##[]
#spats [P,Q,Q,*]
[]
##[]
#spats [*,*,Q,Z]
[]
##[]
#spats [*,Q,*,Z]
[]
##[]
#spats [*,Q,Q,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,Z]
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
###! Matchings per PQQC
#spats [P,Q,Q,C]
[]
##[]
#spats [*,Q,Q,C]
[]
##[]
#spats [P,*,Q,C]
[]
##[]
#spats [P,Q,*,C]
[]
##[]
#spats [P,Q,Q,*]
[]
##[]
#spats [*,*,Q,C]
[]
##[]
#spats [*,Q,*,C]
[]
##[]
#spats [*,Q,Q,*]
[]
##[]
#spats [P,*,*,C]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,Q,*,*]
[]
##[]
#spats [*,*,*,C]
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
###! Matchings per PQQCC
#spats [P,Q,Q,C,C]
[PQQCC]
##[PQQCC]
#spats [*,Q,Q,C,C]
[PQQCC]
##[PQQCC]
#spats [P,*,Q,C,C]
[PQQCC]
##[PQQCC]
#spats [P,Q,*,C,C]
[PQQCC]
##[PQQCC]
#spats [P,Q,Q,*,C]
[PQQCC]
##[PQQCC]
#spats [P,Q,Q,C,*]
[PQQCC]
##[PQQCC]
#spats [*,*,Q,C,C]
[PQQCC]
##[PQQCC]
#spats [*,Q,*,C,C]
[PQQCC]
##[PQQCC]
#spats [*,Q,Q,*,C]
[PQQCC]
##[PQQCC]
#spats [*,Q,Q,C,*]
[PQQCC]
##[PQQCC]
#spats [P,*,*,C,C]
[PQQCC]
##[PQQCC]
#spats [P,*,Q,*,C]
[PQQCC]
##[PQQCC]
#spats [P,*,Q,C,*]
[PQQCC]
##[PQQCC]
#spats [P,Q,*,*,C]
[PQQCC]
##[PQQCC]
#spats [P,Q,*,C,*]
[PQQCC]
##[PQQCC]
#spats [P,Q,Q,*,*]
[PQQCC]
##[PQQCC]
#spats [*,*,*,C,C]
[PQQCC]
##[PQQCC]
#spats [*,*,Q,*,C]
[PQQCC]
##[PQQCC]
#spats [*,*,Q,C,*]
[PQQCC]
##[PQQCC]
#spats [*,Q,*,*,C]
[PQQCC]
##[PQQCC]
#spats [*,Q,*,C,*]
[PQQCC]
##[PQQCC]
#spats [*,Q,Q,*,*]
[PQQCC]
##[PQQCC]
#spats [P,*,*,*,C]
[PQQCC]
##[PQQCC]
#spats [P,*,*,C,*]
[PQQCC]
##[PQQCC]
#spats [P,*,Q,*,*]
[PQQCC]
##[PQQCC]
#spats [P,Q,*,*,*]
[PQQCC]
##[PQQCC]
#spats [*,*,*,*,C]
[PQQCC]
##[PQQCC]
#spats [*,*,*,C,*]
[PQQCC]
##[PQQCC]
#spats [*,*,Q,*,*]
[PQQCC]
##[PQQCC]
#spats [*,Q,*,*,*]
[PQQCC]
##[PQQCC]
#spats [P,*,*,*,*]
[PQQCC]
##[PQQCC]
#spats [*,*,*,*,*]
[PQQCC]
##[PQQCC]
###!
###! Matchings per PQQCCZ
#spats [P,Q,Q,C,C,Z]
[]
##[]
#spats [*,Q,Q,C,C,Z]
[]
##[]
#spats [P,*,Q,C,C,Z]
[]
##[]
#spats [P,Q,*,C,C,Z]
[]
##[]
#spats [P,Q,Q,*,C,Z]
[]
##[]
#spats [P,Q,Q,C,*,Z]
[]
##[]
#spats [P,Q,Q,C,C,*]
[]
##[]
#spats [*,*,Q,C,C,Z]
[]
##[]
#spats [*,Q,*,C,C,Z]
[]
##[]
#spats [*,Q,Q,*,C,Z]
[]
##[]
#spats [*,Q,Q,C,*,Z]
[]
##[]
#spats [*,Q,Q,C,C,*]
[]
##[]
#spats [P,*,*,C,C,Z]
[]
##[]
#spats [P,*,Q,*,C,Z]
[]
##[]
#spats [P,*,Q,C,*,Z]
[]
##[]
#spats [P,*,Q,C,C,*]
[]
##[]
#spats [P,Q,*,*,C,Z]
[]
##[]
#spats [P,Q,*,C,*,Z]
[]
##[]
#spats [P,Q,*,C,C,*]
[]
##[]
#spats [P,Q,Q,*,*,Z]
[]
##[]
#spats [P,Q,Q,*,C,*]
[]
##[]
#spats [P,Q,Q,C,*,*]
[]
##[]
#spats [*,*,*,C,C,Z]
[]
##[]
#spats [*,*,Q,*,C,Z]
[]
##[]
#spats [*,*,Q,C,*,Z]
[]
##[]
#spats [*,*,Q,C,C,*]
[]
##[]
#spats [*,Q,*,*,C,Z]
[]
##[]
#spats [*,Q,*,C,*,Z]
[]
##[]
#spats [*,Q,*,C,C,*]
[]
##[]
#spats [*,Q,Q,*,*,Z]
[]
##[]
#spats [*,Q,Q,*,C,*]
[]
##[]
#spats [*,Q,Q,C,*,*]
[]
##[]
#spats [P,*,*,*,C,Z]
[]
##[]
#spats [P,*,*,C,*,Z]
[]
##[]
#spats [P,*,*,C,C,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,C,*]
[]
##[]
#spats [P,*,Q,C,*,*]
[]
##[]
#spats [P,Q,*,*,*,Z]
[]
##[]
#spats [P,Q,*,*,C,*]
[]
##[]
#spats [P,Q,*,C,*,*]
[]
##[]
#spats [P,Q,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,C,Z]
[]
##[]
#spats [*,*,*,C,*,Z]
[]
##[]
#spats [*,*,*,C,C,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,C,*]
[]
##[]
#spats [*,*,Q,C,*,*]
[]
##[]
#spats [*,Q,*,*,*,Z]
[]
##[]
#spats [*,Q,*,*,C,*]
[]
##[]
#spats [*,Q,*,C,*,*]
[]
##[]
#spats [*,Q,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,C,*]
[]
##[]
#spats [P,*,*,C,*,*]
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
#spats [*,*,*,*,C,*]
[]
##[]
#spats [*,*,*,C,*,*]
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
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.9.5 Subcas 9E
###!           lp123 = l1 > 1  l2 = l1 + 1  l3 = l2 + 1
###!           w1 = PP  w2 = PPQ  w3 = PPQC
###!-------------------------------------------------------------------
###!
#init d9E dicc
###!
#ins PP
#ins PPQ
#ins PPQC
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
###! Prefixos per PPQ
#pre P

##
#pre PP
PP
##PP
#pre PPQ
PPQ
##PPQ
#pre ZPQ

##
#pre PZQ

##
#pre PPZ
PP
##PP
#pre ZPQY

##
#pre PPZY
PP
##PP
#pre PPQZ
PPQ
##PPQ
#pre ZPQYY

##
#pre PPZYY
PP
##PP
#pre PPQZY
PPQ
##PPQ
###!
###! Prefixos per PPQC
#pre P

##
#pre PPQ
PPQ
##PPQ
#pre PPQC
PPQC
##PPQC
#pre ZPQC

##
#pre PPZC
PP
##PP
#pre PPQZ
PPQ
##PPQ
#pre ZPQCY

##
#pre PPQZY
PPQ
##PPQ
#pre PPQCZ
PPQC
##PPQC
#pre ZPQCYY

##
#pre PPQZYY
PPQ
##PPQ
#pre PPQCZY
PPQC
##PPQC
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
[PPQ]
##[PPQ]
#spats [*,*,Z]
[]
##[]
#spats [*,P,*]
[PPQ]
##[PPQ]
#spats [P,*,*]
[PPQ]
##[PPQ]
#spats [*,*,*]
[PPQ]
##[PPQ]
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
###! Matchings per PPQ
#spats [P,P,Q]
[PPQ]
##[PPQ]
#spats [*,P,Q]
[PPQ]
##[PPQ]
#spats [P,*,Q]
[PPQ]
##[PPQ]
#spats [P,P,*]
[PPQ]
##[PPQ]
#spats [*,*,Q]
[PPQ]
##[PPQ]
#spats [*,P,*]
[PPQ]
##[PPQ]
#spats [P,*,*]
[PPQ]
##[PPQ]
#spats [*,*,*]
[PPQ]
##[PPQ]
###!
###! Matchings per PPQZ
#spats [P,P,Q,Z]
[]
##[]
#spats [*,P,Q,Z]
[]
##[]
#spats [P,*,Q,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,Q,*]
[PPQC]
##[PPQC]
#spats [*,*,Q,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,Q,*]
[PPQC]
##[PPQC]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,Q,*]
[PPQC]
##[PPQC]
#spats [P,P,*,*]
[PPQC]
##[PPQC]
#spats [*,*,*,Z]
[]
##[]
#spats [*,*,Q,*]
[PPQC]
##[PPQC]
#spats [*,P,*,*]
[PPQC]
##[PPQC]
#spats [P,*,*,*]
[PPQC]
##[PPQC]
#spats [*,*,*,*]
[PPQC]
##[PPQC]
###!
###! Matchings per PPQ
#spats [P,P,Q]
[PPQ]
##[PPQ]
#spats [*,P,Q]
[PPQ]
##[PPQ]
#spats [P,*,Q]
[PPQ]
##[PPQ]
#spats [P,P,*]
[PPQ]
##[PPQ]
#spats [*,*,Q]
[PPQ]
##[PPQ]
#spats [*,P,*]
[PPQ]
##[PPQ]
#spats [P,*,*]
[PPQ]
##[PPQ]
#spats [*,*,*]
[PPQ]
##[PPQ]
###!
###! Matchings per PPQC
#spats [P,P,Q,C]
[PPQC]
##[PPQC]
#spats [*,P,Q,C]
[PPQC]
##[PPQC]
#spats [P,*,Q,C]
[PPQC]
##[PPQC]
#spats [P,P,*,C]
[PPQC]
##[PPQC]
#spats [P,P,Q,*]
[PPQC]
##[PPQC]
#spats [*,*,Q,C]
[PPQC]
##[PPQC]
#spats [*,P,*,C]
[PPQC]
##[PPQC]
#spats [*,P,Q,*]
[PPQC]
##[PPQC]
#spats [P,*,*,C]
[PPQC]
##[PPQC]
#spats [P,*,Q,*]
[PPQC]
##[PPQC]
#spats [P,P,*,*]
[PPQC]
##[PPQC]
#spats [*,*,*,C]
[PPQC]
##[PPQC]
#spats [*,*,Q,*]
[PPQC]
##[PPQC]
#spats [*,P,*,*]
[PPQC]
##[PPQC]
#spats [P,*,*,*]
[PPQC]
##[PPQC]
#spats [*,*,*,*]
[PPQC]
##[PPQC]
###!
###! Matchings per PPQCZ
#spats [P,P,Q,C,Z]
[]
##[]
#spats [*,P,Q,C,Z]
[]
##[]
#spats [P,*,Q,C,Z]
[]
##[]
#spats [P,P,*,C,Z]
[]
##[]
#spats [P,P,Q,*,Z]
[]
##[]
#spats [P,P,Q,C,*]
[]
##[]
#spats [*,*,Q,C,Z]
[]
##[]
#spats [*,P,*,C,Z]
[]
##[]
#spats [*,P,Q,*,Z]
[]
##[]
#spats [*,P,Q,C,*]
[]
##[]
#spats [P,*,*,C,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,C,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,C,*]
[]
##[]
#spats [P,P,Q,*,*]
[]
##[]
#spats [*,*,*,C,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,C,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,C,*]
[]
##[]
#spats [*,P,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,C,*]
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
#spats [*,*,*,C,*]
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
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.9.6 Subcas 9F
###!           lp123 = l1 > 1  l2 = l1 + 1  l3 > l2 + 1
###!           w1 = PP  w2 = PPQ  w3 = PPQCC
###!-------------------------------------------------------------------
###!
#init d9F dicc
###!
#ins PP
#ins PPQ
#ins PPQCC
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
###! Prefixos per PPQ
#pre P

##
#pre PP
PP
##PP
#pre PPQ
PPQ
##PPQ
#pre ZPQ

##
#pre PZQ

##
#pre PPZ
PP
##PP
#pre ZPQY

##
#pre PPZY
PP
##PP
#pre PPQZ
PPQ
##PPQ
#pre ZPQYY

##
#pre PPZYY
PP
##PP
#pre PPQZY
PPQ
##PPQ
###!
###! Prefixos per PPQCC
#pre P

##
#pre PPQC
PPQ
##PPQ
#pre PPQCC
PPQCC
##PPQCC
#pre ZPQCC

##
#pre PPQZC
PPQ
##PPQ
#pre PPQCZ
PPQ
##PPQ
#pre ZPQCCY

##
#pre PPQCZY
PPQ
##PPQ
#pre PPQCCZ
PPQCC
##PPQCC
#pre ZPQCCYY

##
#pre PPQCZYY
PPQ
##PPQ
#pre PPQCCZY
PPQCC
##PPQCC
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
[PPQ]
##[PPQ]
#spats [*,*,Z]
[]
##[]
#spats [*,P,*]
[PPQ]
##[PPQ]
#spats [P,*,*]
[PPQ]
##[PPQ]
#spats [*,*,*]
[PPQ]
##[PPQ]
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
###! Matchings per PPQ
#spats [P,P,Q]
[PPQ]
##[PPQ]
#spats [*,P,Q]
[PPQ]
##[PPQ]
#spats [P,*,Q]
[PPQ]
##[PPQ]
#spats [P,P,*]
[PPQ]
##[PPQ]
#spats [*,*,Q]
[PPQ]
##[PPQ]
#spats [*,P,*]
[PPQ]
##[PPQ]
#spats [P,*,*]
[PPQ]
##[PPQ]
#spats [*,*,*]
[PPQ]
##[PPQ]
###!
###! Matchings per PPQZ
#spats [P,P,Q,Z]
[]
##[]
#spats [*,P,Q,Z]
[]
##[]
#spats [P,*,Q,Z]
[]
##[]
#spats [P,P,*,Z]
[]
##[]
#spats [P,P,Q,*]
[]
##[]
#spats [*,*,Q,Z]
[]
##[]
#spats [*,P,*,Z]
[]
##[]
#spats [*,P,Q,*]
[]
##[]
#spats [P,*,*,Z]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,Z]
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
###! Matchings per PPQC
#spats [P,P,Q,C]
[]
##[]
#spats [*,P,Q,C]
[]
##[]
#spats [P,*,Q,C]
[]
##[]
#spats [P,P,*,C]
[]
##[]
#spats [P,P,Q,*]
[]
##[]
#spats [*,*,Q,C]
[]
##[]
#spats [*,P,*,C]
[]
##[]
#spats [*,P,Q,*]
[]
##[]
#spats [P,*,*,C]
[]
##[]
#spats [P,*,Q,*]
[]
##[]
#spats [P,P,*,*]
[]
##[]
#spats [*,*,*,C]
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
###! Matchings per PPQCC
#spats [P,P,Q,C,C]
[PPQCC]
##[PPQCC]
#spats [*,P,Q,C,C]
[PPQCC]
##[PPQCC]
#spats [P,*,Q,C,C]
[PPQCC]
##[PPQCC]
#spats [P,P,*,C,C]
[PPQCC]
##[PPQCC]
#spats [P,P,Q,*,C]
[PPQCC]
##[PPQCC]
#spats [P,P,Q,C,*]
[PPQCC]
##[PPQCC]
#spats [*,*,Q,C,C]
[PPQCC]
##[PPQCC]
#spats [*,P,*,C,C]
[PPQCC]
##[PPQCC]
#spats [*,P,Q,*,C]
[PPQCC]
##[PPQCC]
#spats [*,P,Q,C,*]
[PPQCC]
##[PPQCC]
#spats [P,*,*,C,C]
[PPQCC]
##[PPQCC]
#spats [P,*,Q,*,C]
[PPQCC]
##[PPQCC]
#spats [P,*,Q,C,*]
[PPQCC]
##[PPQCC]
#spats [P,P,*,*,C]
[PPQCC]
##[PPQCC]
#spats [P,P,*,C,*]
[PPQCC]
##[PPQCC]
#spats [P,P,Q,*,*]
[PPQCC]
##[PPQCC]
#spats [*,*,*,C,C]
[PPQCC]
##[PPQCC]
#spats [*,*,Q,*,C]
[PPQCC]
##[PPQCC]
#spats [*,*,Q,C,*]
[PPQCC]
##[PPQCC]
#spats [*,P,*,*,C]
[PPQCC]
##[PPQCC]
#spats [*,P,*,C,*]
[PPQCC]
##[PPQCC]
#spats [*,P,Q,*,*]
[PPQCC]
##[PPQCC]
#spats [P,*,*,*,C]
[PPQCC]
##[PPQCC]
#spats [P,*,*,C,*]
[PPQCC]
##[PPQCC]
#spats [P,*,Q,*,*]
[PPQCC]
##[PPQCC]
#spats [P,P,*,*,*]
[PPQCC]
##[PPQCC]
#spats [*,*,*,*,C]
[PPQCC]
##[PPQCC]
#spats [*,*,*,C,*]
[PPQCC]
##[PPQCC]
#spats [*,*,Q,*,*]
[PPQCC]
##[PPQCC]
#spats [*,P,*,*,*]
[PPQCC]
##[PPQCC]
#spats [P,*,*,*,*]
[PPQCC]
##[PPQCC]
#spats [*,*,*,*,*]
[PPQCC]
##[PPQCC]
###!
###! Matchings per PPQCCZ
#spats [P,P,Q,C,C,Z]
[]
##[]
#spats [*,P,Q,C,C,Z]
[]
##[]
#spats [P,*,Q,C,C,Z]
[]
##[]
#spats [P,P,*,C,C,Z]
[]
##[]
#spats [P,P,Q,*,C,Z]
[]
##[]
#spats [P,P,Q,C,*,Z]
[]
##[]
#spats [P,P,Q,C,C,*]
[]
##[]
#spats [*,*,Q,C,C,Z]
[]
##[]
#spats [*,P,*,C,C,Z]
[]
##[]
#spats [*,P,Q,*,C,Z]
[]
##[]
#spats [*,P,Q,C,*,Z]
[]
##[]
#spats [*,P,Q,C,C,*]
[]
##[]
#spats [P,*,*,C,C,Z]
[]
##[]
#spats [P,*,Q,*,C,Z]
[]
##[]
#spats [P,*,Q,C,*,Z]
[]
##[]
#spats [P,*,Q,C,C,*]
[]
##[]
#spats [P,P,*,*,C,Z]
[]
##[]
#spats [P,P,*,C,*,Z]
[]
##[]
#spats [P,P,*,C,C,*]
[]
##[]
#spats [P,P,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,*,C,*]
[]
##[]
#spats [P,P,Q,C,*,*]
[]
##[]
#spats [*,*,*,C,C,Z]
[]
##[]
#spats [*,*,Q,*,C,Z]
[]
##[]
#spats [*,*,Q,C,*,Z]
[]
##[]
#spats [*,*,Q,C,C,*]
[]
##[]
#spats [*,P,*,*,C,Z]
[]
##[]
#spats [*,P,*,C,*,Z]
[]
##[]
#spats [*,P,*,C,C,*]
[]
##[]
#spats [*,P,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,*,C,*]
[]
##[]
#spats [*,P,Q,C,*,*]
[]
##[]
#spats [P,*,*,*,C,Z]
[]
##[]
#spats [P,*,*,C,*,Z]
[]
##[]
#spats [P,*,*,C,C,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,C,*]
[]
##[]
#spats [P,*,Q,C,*,*]
[]
##[]
#spats [P,P,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,C,*]
[]
##[]
#spats [P,P,*,C,*,*]
[]
##[]
#spats [P,P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,C,Z]
[]
##[]
#spats [*,*,*,C,*,Z]
[]
##[]
#spats [*,*,*,C,C,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,C,*]
[]
##[]
#spats [*,*,Q,C,*,*]
[]
##[]
#spats [*,P,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,C,*]
[]
##[]
#spats [*,P,*,C,*,*]
[]
##[]
#spats [*,P,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,Z]
[]
##[]
#spats [P,*,*,*,C,*]
[]
##[]
#spats [P,*,*,C,*,*]
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
#spats [*,*,*,*,C,*]
[]
##[]
#spats [*,*,*,C,*,*]
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
###!
#destroy
###!
###!-------------------------------------------------------------------
###103.9.7 Subcas 9G
###!           lp123 = l1 > 1  l2 > l1 + 1  l3 = l2 + 1
###!           w1 = PP  w2 = PPQQ  w3 = PPQQC
###!-------------------------------------------------------------------
###!
#init d9G dicc
###!
#ins PP
#ins PPQQ
#ins PPQQC
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
###! Prefixos per PPQQ
#pre P

##
#pre PPQ
PP
##PP
#pre PPQQ
PPQQ
##PPQQ
#pre ZPQQ

##
#pre PPZQ
PP
##PP
#pre PPQZ
PP
##PP
#pre ZPQQY

##
#pre PPQZY
PP
##PP
#pre PPQQZ
PPQQ
##PPQQ
#pre ZPQQYY

##
#pre PPQZYY
PP
##PP
#pre PPQQZY
PPQQ
##PPQQ
###!
###! Prefixos per PPQQC
#pre P

##
#pre PPQQ
PPQQ
##PPQQ
#pre PPQQC
PPQQC
##PPQQC
#pre ZPQQC

##
#pre PPQZC
PP
##PP
#pre PPQQZ
PPQQ
##PPQQ
#pre ZPQQCY

##
#pre PPQQZY
PPQQ
##PPQQ
#pre PPQQCZ
PPQQC
##PPQQC
#pre ZPQQCYY

##
#pre PPQQZYY
PPQQ
##PPQQ
#pre PPQQCZY
PPQQC
##PPQQC
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
###! Matchings per PPQQ
#spats [P,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,P,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,P,*,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,*]
[PPQQ]
##[PPQQ]
###!
###! Matchings per PPQQZ
#spats [P,P,Q,Q,Z]
[]
##[]
#spats [*,P,Q,Q,Z]
[]
##[]
#spats [P,*,Q,Q,Z]
[]
##[]
#spats [P,P,*,Q,Z]
[]
##[]
#spats [P,P,Q,*,Z]
[]
##[]
#spats [P,P,Q,Q,*]
[PPQQC]
##[PPQQC]
#spats [*,*,Q,Q,Z]
[]
##[]
#spats [*,P,*,Q,Z]
[]
##[]
#spats [*,P,Q,*,Z]
[]
##[]
#spats [*,P,Q,Q,*]
[PPQQC]
##[PPQQC]
#spats [P,*,*,Q,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,Q,*]
[PPQQC]
##[PPQQC]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,Q,*]
[PPQQC]
##[PPQQC]
#spats [P,P,Q,*,*]
[PPQQC]
##[PPQQC]
#spats [*,*,*,Q,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,Q,*]
[PPQQC]
##[PPQQC]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,Q,*]
[PPQQC]
##[PPQQC]
#spats [*,P,Q,*,*]
[PPQQC]
##[PPQQC]
#spats [P,*,*,*,Z]
[]
##[]
#spats [P,*,*,Q,*]
[PPQQC]
##[PPQQC]
#spats [P,*,Q,*,*]
[PPQQC]
##[PPQQC]
#spats [P,P,*,*,*]
[PPQQC]
##[PPQQC]
#spats [*,*,*,*,Z]
[]
##[]
#spats [*,*,*,Q,*]
[PPQQC]
##[PPQQC]
#spats [*,*,Q,*,*]
[PPQQC]
##[PPQQC]
#spats [*,P,*,*,*]
[PPQQC]
##[PPQQC]
#spats [P,*,*,*,*]
[PPQQC]
##[PPQQC]
#spats [*,*,*,*,*]
[PPQQC]
##[PPQQC]
###!
###! Matchings per PPQQ
#spats [P,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,P,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,P,*,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,*]
[PPQQ]
##[PPQQ]
###!
###! Matchings per PPQQC
#spats [P,P,Q,Q,C]
[PPQQC]
##[PPQQC]
#spats [*,P,Q,Q,C]
[PPQQC]
##[PPQQC]
#spats [P,*,Q,Q,C]
[PPQQC]
##[PPQQC]
#spats [P,P,*,Q,C]
[PPQQC]
##[PPQQC]
#spats [P,P,Q,*,C]
[PPQQC]
##[PPQQC]
#spats [P,P,Q,Q,*]
[PPQQC]
##[PPQQC]
#spats [*,*,Q,Q,C]
[PPQQC]
##[PPQQC]
#spats [*,P,*,Q,C]
[PPQQC]
##[PPQQC]
#spats [*,P,Q,*,C]
[PPQQC]
##[PPQQC]
#spats [*,P,Q,Q,*]
[PPQQC]
##[PPQQC]
#spats [P,*,*,Q,C]
[PPQQC]
##[PPQQC]
#spats [P,*,Q,*,C]
[PPQQC]
##[PPQQC]
#spats [P,*,Q,Q,*]
[PPQQC]
##[PPQQC]
#spats [P,P,*,*,C]
[PPQQC]
##[PPQQC]
#spats [P,P,*,Q,*]
[PPQQC]
##[PPQQC]
#spats [P,P,Q,*,*]
[PPQQC]
##[PPQQC]
#spats [*,*,*,Q,C]
[PPQQC]
##[PPQQC]
#spats [*,*,Q,*,C]
[PPQQC]
##[PPQQC]
#spats [*,*,Q,Q,*]
[PPQQC]
##[PPQQC]
#spats [*,P,*,*,C]
[PPQQC]
##[PPQQC]
#spats [*,P,*,Q,*]
[PPQQC]
##[PPQQC]
#spats [*,P,Q,*,*]
[PPQQC]
##[PPQQC]
#spats [P,*,*,*,C]
[PPQQC]
##[PPQQC]
#spats [P,*,*,Q,*]
[PPQQC]
##[PPQQC]
#spats [P,*,Q,*,*]
[PPQQC]
##[PPQQC]
#spats [P,P,*,*,*]
[PPQQC]
##[PPQQC]
#spats [*,*,*,*,C]
[PPQQC]
##[PPQQC]
#spats [*,*,*,Q,*]
[PPQQC]
##[PPQQC]
#spats [*,*,Q,*,*]
[PPQQC]
##[PPQQC]
#spats [*,P,*,*,*]
[PPQQC]
##[PPQQC]
#spats [P,*,*,*,*]
[PPQQC]
##[PPQQC]
#spats [*,*,*,*,*]
[PPQQC]
##[PPQQC]
###!
###! Matchings per PPQQCZ
#spats [P,P,Q,Q,C,Z]
[]
##[]
#spats [*,P,Q,Q,C,Z]
[]
##[]
#spats [P,*,Q,Q,C,Z]
[]
##[]
#spats [P,P,*,Q,C,Z]
[]
##[]
#spats [P,P,Q,*,C,Z]
[]
##[]
#spats [P,P,Q,Q,*,Z]
[]
##[]
#spats [P,P,Q,Q,C,*]
[]
##[]
#spats [*,*,Q,Q,C,Z]
[]
##[]
#spats [*,P,*,Q,C,Z]
[]
##[]
#spats [*,P,Q,*,C,Z]
[]
##[]
#spats [*,P,Q,Q,*,Z]
[]
##[]
#spats [*,P,Q,Q,C,*]
[]
##[]
#spats [P,*,*,Q,C,Z]
[]
##[]
#spats [P,*,Q,*,C,Z]
[]
##[]
#spats [P,*,Q,Q,*,Z]
[]
##[]
#spats [P,*,Q,Q,C,*]
[]
##[]
#spats [P,P,*,*,C,Z]
[]
##[]
#spats [P,P,*,Q,*,Z]
[]
##[]
#spats [P,P,*,Q,C,*]
[]
##[]
#spats [P,P,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,*,C,*]
[]
##[]
#spats [P,P,Q,Q,*,*]
[]
##[]
#spats [*,*,*,Q,C,Z]
[]
##[]
#spats [*,*,Q,*,C,Z]
[]
##[]
#spats [*,*,Q,Q,*,Z]
[]
##[]
#spats [*,*,Q,Q,C,*]
[]
##[]
#spats [*,P,*,*,C,Z]
[]
##[]
#spats [*,P,*,Q,*,Z]
[]
##[]
#spats [*,P,*,Q,C,*]
[]
##[]
#spats [*,P,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,*,C,*]
[]
##[]
#spats [*,P,Q,Q,*,*]
[]
##[]
#spats [P,*,*,*,C,Z]
[]
##[]
#spats [P,*,*,Q,*,Z]
[]
##[]
#spats [P,*,*,Q,C,*]
[]
##[]
#spats [P,*,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,*,C,*]
[]
##[]
#spats [P,*,Q,Q,*,*]
[]
##[]
#spats [P,P,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,C,*]
[]
##[]
#spats [P,P,*,Q,*,*]
[]
##[]
#spats [P,P,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,C,Z]
[]
##[]
#spats [*,*,*,Q,*,Z]
[]
##[]
#spats [*,*,*,Q,C,*]
[]
##[]
#spats [*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,*,C,*]
[]
##[]
#spats [*,*,Q,Q,*,*]
[]
##[]
#spats [*,P,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,C,*]
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
#spats [P,*,*,*,C,*]
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
#spats [*,*,*,*,C,*]
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
###!
#destroy
###!
###!------------------------------------------------------
###103.9.8 Subcas 9H
###!           lp123 = l1 > 1  l2 > l1 + 1  l3 > l2 + 1
###!           w1 = PP  w2 = PPQQ  w3 = PPQQCC
###!---------------------------------------------------
###!
#init d9H dicc
###!
#ins PP
#ins PPQQ
#ins PPQQCC
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
###! Prefixos per PPQQ
#pre P

##
#pre PPQ
PP
##PP
#pre PPQQ
PPQQ
##PPQQ
#pre ZPQQ

##
#pre PPZQ
PP
##PP
#pre PPQZ
PP
##PP
#pre ZPQQY

##
#pre PPQZY
PP
##PP
#pre PPQQZ
PPQQ
##PPQQ
#pre ZPQQYY

##
#pre PPQZYY
PP
##PP
#pre PPQQZY
PPQQ
##PPQQ
###!
###! Prefixos per PPQQCC
#pre P

##
#pre PPQQC
PPQQ
##PPQQ
#pre PPQQCC
PPQQCC
##PPQQCC
#pre ZPQQCC

##
#pre PPQQZC
PPQQ
##PPQQ
#pre PPQQCZ
PPQQ
##PPQQ
#pre ZPQQCCY

##
#pre PPQQCZY
PPQQ
##PPQQ
#pre PPQQCCZ
PPQQCC
##PPQQCC
#pre ZPQQCCYY

##
#pre PPQQCZYY
PPQQ
##PPQQ
#pre PPQQCCZY
PPQQCC
##PPQQCC
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
###! Matchings per PPQQ
#spats [P,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,P,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [P,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [P,P,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,Q]
[PPQQ]
##[PPQQ]
#spats [*,*,Q,*]
[PPQQ]
##[PPQQ]
#spats [*,P,*,*]
[PPQQ]
##[PPQQ]
#spats [P,*,*,*]
[PPQQ]
##[PPQQ]
#spats [*,*,*,*]
[PPQQ]
##[PPQQ]
###!
###! Matchings per PPQQZ
#spats [P,P,Q,Q,Z]
[]
##[]
#spats [*,P,Q,Q,Z]
[]
##[]
#spats [P,*,Q,Q,Z]
[]
##[]
#spats [P,P,*,Q,Z]
[]
##[]
#spats [P,P,Q,*,Z]
[]
##[]
#spats [P,P,Q,Q,*]
[]
##[]
#spats [*,*,Q,Q,Z]
[]
##[]
#spats [*,P,*,Q,Z]
[]
##[]
#spats [*,P,Q,*,Z]
[]
##[]
#spats [*,P,Q,Q,*]
[]
##[]
#spats [P,*,*,Q,Z]
[]
##[]
#spats [P,*,Q,*,Z]
[]
##[]
#spats [P,*,Q,Q,*]
[]
##[]
#spats [P,P,*,*,Z]
[]
##[]
#spats [P,P,*,Q,*]
[]
##[]
#spats [P,P,Q,*,*]
[]
##[]
#spats [*,*,*,Q,Z]
[]
##[]
#spats [*,*,Q,*,Z]
[]
##[]
#spats [*,*,Q,Q,*]
[]
##[]
#spats [*,P,*,*,Z]
[]
##[]
#spats [*,P,*,Q,*]
[]
##[]
#spats [*,P,Q,*,*]
[]
##[]
#spats [P,*,*,*,Z]
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
#spats [*,*,*,*,Z]
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
###! Matchings per PPQQC
#spats [P,P,Q,Q,C]
[]
##[]
#spats [*,P,Q,Q,C]
[]
##[]
#spats [P,*,Q,Q,C]
[]
##[]
#spats [P,P,*,Q,C]
[]
##[]
#spats [P,P,Q,*,C]
[]
##[]
#spats [P,P,Q,Q,*]
[]
##[]
#spats [*,*,Q,Q,C]
[]
##[]
#spats [*,P,*,Q,C]
[]
##[]
#spats [*,P,Q,*,C]
[]
##[]
#spats [*,P,Q,Q,*]
[]
##[]
#spats [P,*,*,Q,C]
[]
##[]
#spats [P,*,Q,*,C]
[]
##[]
#spats [P,*,Q,Q,*]
[]
##[]
#spats [P,P,*,*,C]
[]
##[]
#spats [P,P,*,Q,*]
[]
##[]
#spats [P,P,Q,*,*]
[]
##[]
#spats [*,*,*,Q,C]
[]
##[]
#spats [*,*,Q,*,C]
[]
##[]
#spats [*,*,Q,Q,*]
[]
##[]
#spats [*,P,*,*,C]
[]
##[]
#spats [*,P,*,Q,*]
[]
##[]
#spats [*,P,Q,*,*]
[]
##[]
#spats [P,*,*,*,C]
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
#spats [*,*,*,*,C]
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
###! Matchings per PPQQCC
#spats [P,P,Q,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,Q,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,Q,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,Q,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,*,*,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,P,Q,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,Q,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,P,Q,Q,*,*]
[PPQQCC]
##[PPQQCC]
#spats [*,*,*,Q,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,Q,*,*]
[PPQQCC]
##[PPQQCC]
#spats [P,*,*,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,*,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,*,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,Q,*,*]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,Q,*,*]
[PPQQCC]
##[PPQQCC]
#spats [P,P,Q,*,*,*]
[PPQQCC]
##[PPQQCC]
#spats [*,*,*,*,C,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,*,Q,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,*,Q,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,Q,*,*]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,Q,*,*]
[PPQQCC]
##[PPQQCC]
#spats [*,P,Q,*,*,*]
[PPQQCC]
##[PPQQCC]
#spats [P,*,*,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [P,*,*,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [P,*,*,Q,*,*]
[PPQQCC]
##[PPQQCC]
#spats [P,*,Q,*,*,*]
[PPQQCC]
##[PPQQCC]
#spats [P,P,*,*,*,*]
[PPQQCC]
##[PPQQCC]
#spats [*,*,*,*,*,C]
[PPQQCC]
##[PPQQCC]
#spats [*,*,*,*,C,*]
[PPQQCC]
##[PPQQCC]
#spats [*,*,*,Q,*,*]
[PPQQCC]
##[PPQQCC]
#spats [*,*,Q,*,*,*]
[PPQQCC]
##[PPQQCC]
#spats [*,P,*,*,*,*]
[PPQQCC]
##[PPQQCC]
#spats [P,*,*,*,*,*]
[PPQQCC]
##[PPQQCC]
#spats [*,*,*,*,*,*]
[PPQQCC]
##[PPQQCC]
###!
###! Matchings per PPQQCCZ
#spats [P,P,Q,Q,C,C,Z]
[]
##[]
#spats [*,P,Q,Q,C,C,Z]
[]
##[]
#spats [P,*,Q,Q,C,C,Z]
[]
##[]
#spats [P,P,*,Q,C,C,Z]
[]
##[]
#spats [P,P,Q,*,C,C,Z]
[]
##[]
#spats [P,P,Q,Q,*,C,Z]
[]
##[]
#spats [P,P,Q,Q,C,*,Z]
[]
##[]
#spats [P,P,Q,Q,C,C,*]
[]
##[]
#spats [*,*,Q,Q,C,C,Z]
[]
##[]
#spats [*,P,*,Q,C,C,Z]
[]
##[]
#spats [*,P,Q,*,C,C,Z]
[]
##[]
#spats [*,P,Q,Q,*,C,Z]
[]
##[]
#spats [*,P,Q,Q,C,*,Z]
[]
##[]
#spats [*,P,Q,Q,C,C,*]
[]
##[]
#spats [P,*,*,Q,C,C,Z]
[]
##[]
#spats [P,*,Q,*,C,C,Z]
[]
##[]
#spats [P,*,Q,Q,*,C,Z]
[]
##[]
#spats [P,*,Q,Q,C,*,Z]
[]
##[]
#spats [P,*,Q,Q,C,C,*]
[]
##[]
#spats [P,P,*,*,C,C,Z]
[]
##[]
#spats [P,P,*,Q,*,C,Z]
[]
##[]
#spats [P,P,*,Q,C,*,Z]
[]
##[]
#spats [P,P,*,Q,C,C,*]
[]
##[]
#spats [P,P,Q,*,*,C,Z]
[]
##[]
#spats [P,P,Q,*,C,*,Z]
[]
##[]
#spats [P,P,Q,*,C,C,*]
[]
##[]
#spats [P,P,Q,Q,*,*,Z]
[]
##[]
#spats [P,P,Q,Q,*,C,*]
[]
##[]
#spats [P,P,Q,Q,C,*,*]
[]
##[]
#spats [*,*,*,Q,C,C,Z]
[]
##[]
#spats [*,*,Q,*,C,C,Z]
[]
##[]
#spats [*,*,Q,Q,*,C,Z]
[]
##[]
#spats [*,*,Q,Q,C,*,Z]
[]
##[]
#spats [*,*,Q,Q,C,C,*]
[]
##[]
#spats [*,P,*,*,C,C,Z]
[]
##[]
#spats [*,P,*,Q,*,C,Z]
[]
##[]
#spats [*,P,*,Q,C,*,Z]
[]
##[]
#spats [*,P,*,Q,C,C,*]
[]
##[]
#spats [*,P,Q,*,*,C,Z]
[]
##[]
#spats [*,P,Q,*,C,*,Z]
[]
##[]
#spats [*,P,Q,*,C,C,*]
[]
##[]
#spats [*,P,Q,Q,*,*,Z]
[]
##[]
#spats [*,P,Q,Q,*,C,*]
[]
##[]
#spats [*,P,Q,Q,C,*,*]
[]
##[]
#spats [P,*,*,*,C,C,Z]
[]
##[]
#spats [P,*,*,Q,*,C,Z]
[]
##[]
#spats [P,*,*,Q,C,*,Z]
[]
##[]
#spats [P,*,*,Q,C,C,*]
[]
##[]
#spats [P,*,Q,*,*,C,Z]
[]
##[]
#spats [P,*,Q,*,C,*,Z]
[]
##[]
#spats [P,*,Q,*,C,C,*]
[]
##[]
#spats [P,*,Q,Q,*,*,Z]
[]
##[]
#spats [P,*,Q,Q,*,C,*]
[]
##[]
#spats [P,*,Q,Q,C,*,*]
[]
##[]
#spats [P,P,*,*,*,C,Z]
[]
##[]
#spats [P,P,*,*,C,*,Z]
[]
##[]
#spats [P,P,*,*,C,C,*]
[]
##[]
#spats [P,P,*,Q,*,*,Z]
[]
##[]
#spats [P,P,*,Q,*,C,*]
[]
##[]
#spats [P,P,*,Q,C,*,*]
[]
##[]
#spats [P,P,Q,*,*,*,Z]
[]
##[]
#spats [P,P,Q,*,*,C,*]
[]
##[]
#spats [P,P,Q,*,C,*,*]
[]
##[]
#spats [P,P,Q,Q,*,*,*]
[]
##[]
#spats [*,*,*,*,C,C,Z]
[]
##[]
#spats [*,*,*,Q,*,C,Z]
[]
##[]
#spats [*,*,*,Q,C,*,Z]
[]
##[]
#spats [*,*,*,Q,C,C,*]
[]
##[]
#spats [*,*,Q,*,*,C,Z]
[]
##[]
#spats [*,*,Q,*,C,*,Z]
[]
##[]
#spats [*,*,Q,*,C,C,*]
[]
##[]
#spats [*,*,Q,Q,*,*,Z]
[]
##[]
#spats [*,*,Q,Q,*,C,*]
[]
##[]
#spats [*,*,Q,Q,C,*,*]
[]
##[]
#spats [*,P,*,*,*,C,Z]
[]
##[]
#spats [*,P,*,*,C,*,Z]
[]
##[]
#spats [*,P,*,*,C,C,*]
[]
##[]
#spats [*,P,*,Q,*,*,Z]
[]
##[]
#spats [*,P,*,Q,*,C,*]
[]
##[]
#spats [*,P,*,Q,C,*,*]
[]
##[]
#spats [*,P,Q,*,*,*,Z]
[]
##[]
#spats [*,P,Q,*,*,C,*]
[]
##[]
#spats [*,P,Q,*,C,*,*]
[]
##[]
#spats [*,P,Q,Q,*,*,*]
[]
##[]
#spats [P,*,*,*,*,C,Z]
[]
##[]
#spats [P,*,*,*,C,*,Z]
[]
##[]
#spats [P,*,*,*,C,C,*]
[]
##[]
#spats [P,*,*,Q,*,*,Z]
[]
##[]
#spats [P,*,*,Q,*,C,*]
[]
##[]
#spats [P,*,*,Q,C,*,*]
[]
##[]
#spats [P,*,Q,*,*,*,Z]
[]
##[]
#spats [P,*,Q,*,*,C,*]
[]
##[]
#spats [P,*,Q,*,C,*,*]
[]
##[]
#spats [P,*,Q,Q,*,*,*]
[]
##[]
#spats [P,P,*,*,*,*,Z]
[]
##[]
#spats [P,P,*,*,*,C,*]
[]
##[]
#spats [P,P,*,*,C,*,*]
[]
##[]
#spats [P,P,*,Q,*,*,*]
[]
##[]
#spats [P,P,Q,*,*,*,*]
[]
##[]
#spats [*,*,*,*,*,C,Z]
[]
##[]
#spats [*,*,*,*,C,*,Z]
[]
##[]
#spats [*,*,*,*,C,C,*]
[]
##[]
#spats [*,*,*,Q,*,*,Z]
[]
##[]
#spats [*,*,*,Q,*,C,*]
[]
##[]
#spats [*,*,*,Q,C,*,*]
[]
##[]
#spats [*,*,Q,*,*,*,Z]
[]
##[]
#spats [*,*,Q,*,*,C,*]
[]
##[]
#spats [*,*,Q,*,C,*,*]
[]
##[]
#spats [*,*,Q,Q,*,*,*]
[]
##[]
#spats [*,P,*,*,*,*,Z]
[]
##[]
#spats [*,P,*,*,*,C,*]
[]
##[]
#spats [*,P,*,*,C,*,*]
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
#spats [P,*,*,*,*,C,*]
[]
##[]
#spats [P,*,*,*,C,*,*]
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
#spats [*,*,*,*,*,C,*]
[]
##[]
#spats [*,*,*,*,C,*,*]
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
###!
#destroy
###!
###!
###!
###!-------------------------------------------------------------------
###104           INSERCIONS  MULTIPLES
###!           EN DICCIONARIS PETITS
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###104.0 diccionari amb 0 paraules
###!-------------------------------------------------------------------
###!
#init d0 dicc
###!
#ins ""
###!
#pre ""

##
###!
#pre A

##
###!
#spats [""]
[]
##[]
###!
#spats [A]
[]
##[]
###!
#spats [*]
[]
##[]
###!
#destroy
###!
###!
###!
###!-------------------------------------------------------------------
###104.1.1 diccionari amb 1 paraula A
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###104.1.1.1 doble insercio de ""
###!-------------------------------------------------------------------
###!
#init d11 dicc
###!
#ins A
#ins ""
###!
#pre ""

##
###!
#pre Z

##
###!
#pre A
A
##A
###!
#spats [""]
[]
##[]
###!
#spats [Z]
[]
##[]
###!
#spats [*]
[A]
##[A]
###!
#destroy
###!
###!-------------------------------------------------------------------
###104.1.1.2 doble insercio de A
###!-------------------------------------------------------------------
###!
#init d12 dicc
###!
#ins A
#ins A
###!
#pre ""

##
###!
#pre Z

##
###!
#pre A
A
##A
###!
#spats [""]
[]
##[]
###!
#spats [Z]
[]
##[]
###!
#spats [*]
[A]
##[A]
###!
#destroy
###!
###!-------------------------------------------------------------------
###104.1.2 diccionari amb 1 paraula ABCD
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###104.1.2.1 doble insercio de ""
###!-------------------------------------------------------------------
###!
#init d13 dicc
###!
#ins ABCD
#ins ""
###!
#pre ""

##
###!
#pre Z

##
###!
#pre ABCD
ABCD
##ABCD
###!
#spats [""]
[]
##[]
###!
#spats [Z]
[]
##[]
###!
#spats [*,*,*,*]
[ABCD]
##[ABCD]
###!
#destroy
###!
###!-------------------------------------------------------------------
###104.1.2.2 doble insercio de ABCD
###!-------------------------------------------------------------------
###!
#init d14 dicc
###!
#ins ABCD
#ins ABCD
###!
#pre ""

##
###!
#pre Z

##
###!
#pre ABCD
ABCD
##ABCD
###!
#spats [""]
[]
##[]
###!
#spats [Z]
[]
##[]
###!
#spats [*,*,*,*]
[ABCD]
##[ABCD]
###!
#destroy
###!
###!
###!-------------------------------------------------------------------
###104.2.1 diccionari amb 2 paraules ABCD i EFGH
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###104.2.1.1 doble insercio de ""
###!-------------------------------------------------------------------
###!
#init d21 dicc
###!
#ins ABCD
#ins EFGH
#ins ""
###!
#pre ""

##
###!
#pre Z

##
###!
#pre ABCD
ABCD
##ABCD
###!
#pre EFGH
EFGH
##EFGH
###!
#spats [""]
[]
##[]
###!
#spats [Z]
[]
##[]
###!
#spats [*,*,*,*]
[ABCD, EFGH]
##[ABCD, EFGH]
###!
#destroy
###!
###!-------------------------------------------------------------------
###104.2.1.2 doble insercio de ABCD
###!-------------------------------------------------------------------
###!
#init d22 dicc
###!
#ins ABCD
#ins EFGH
#ins ABCD
###!
#pre ""

##
###!
#pre Z

##
###!
#pre ABCD
ABCD
##ABCD
###!
#pre EFGH
EFGH
##EFGH
###!
#spats [""]
[]
##[]
###!
#spats [Z]
[]
##[]
###!
#spats [*,*,*,*]
[ABCD, EFGH]
##[ABCD, EFGH]
###!
#destroy
###!
###!-------------------------------------------------------------------
###104.2.1.3 doble insercio de EFGH
###!-------------------------------------------------------------------
###!
#init d23 dicc
###!
#ins ABCD
#ins EFGH
#ins ""
###!
#pre ""

##
###!
#pre Z

##
###!
#pre ABCD
ABCD
##ABCD
###!
#pre EFGH
EFGH
##EFGH
###!
#spats [""]
[]
##[]
###!
#spats [Z]
[]
##[]
###!
#spats [*,*,*,*]
[ABCD, EFGH]
##[ABCD, EFGH]
###!
#destroy
###!
###!
###!-------------------------------------------------------------------
###104.2.2 diccionari amb 2 paraules A i ABCD
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###104.2.2.1 doble insercio de ""
###!-------------------------------------------------------------------
###!
#init d24 dicc
###!
#ins A
#ins ABCD
#ins ""
###!
#pre ""

##
###!
#pre Z

##
###!
#pre A
A
##A
###!
#pre ABC
A
##A
###!
#pre ABCD
ABCD
##ABCD
###!
#pre ABCDE
ABCD
##ABCD
###!
#spats [""]
[]
##[]
###!
#spats [Z]
[]
##[]
###!
#spats [*]
[A]
##[A]
###!
#spats [*,*,*,*]
[ABCD]
##[ABCD]
###!
#destroy
###!
###!-------------------------------------------------------------------
###104.2.2.2 doble insercio de A
###!-------------------------------------------------------------------
###!
#init d25 dicc
###!
#ins A
#ins ABCD
#ins A
###!
#pre ""

##
###!
#pre Z

##
###!
#pre A
A
##A
###!
#pre ABC
A
##A
###!
#pre ABCD
ABCD
##ABCD
###!
#pre ABCDE
ABCD
##ABCD
###!
#spats [""]
[]
##[]
###!
#spats [Z]
[]
##[]
###!
#spats [*]
[A]
##[A]
###!
#spats [*,*,*,*]
[ABCD]
##[ABCD]
###!
#destroy
###!
###!-------------------------------------------------------------------
###104.2.2.3 doble insercio de ABCD
###!-------------------------------------------------------------------
###!
#init d26 dicc
###!
#ins A
#ins ABCD
#ins ABCD
###!
#pre ""

##
###!
#pre Z

##
###!
#pre A
A
##A
###!
#pre ABC
A
##A
###!
#pre ABCD
ABCD
##ABCD
###!
#pre ABCDE
ABCD
##ABCD
###!
#spats [""]
[]
##[]
###!
#spats [Z]
[]
##[]
###!
#spats [*]
[A]
##[A]
###!
#spats [*,*,*,*]
[ABCD]
##[ABCD]
###!
#destroy
###!
###!
###!
###!-------------------------------------------------------------------
###105 Diccionari amb varies (1..9) paraules per cada lletra
###!   de l'abecedari. (mitjana = 4)
###!-------------------------------------------------------------------
###!
###!-------------------------------------------------------------------
###105.1 Diccionari amb varies (1..9) paraules per cada lletra
###!   de l'abecedari. (mitjana = 4)
###!   quasi ordenades en ordre alfabeticament creixent
###!-------------------------------------------------------------------
###!
#init d105A dicc
###!
#load dic75.in
#ins ABAD
#ins ANTERIOR
#ins AUTENTICO
#ins AMASAR
#ins AMASA
#ins AMAS
#ins ASAR
#ins B
#ins BE
#ins BECA
#ins BECAR
#ins BECARIO
#ins BREVA
#ins BREBAJE
#ins BREVE
#ins BREVEDAD
#ins CASA
#ins CASADA
#ins DO
#ins DON
#ins DONACION
#ins DONAR
#ins ENTRE
#ins ENTREVER
#ins ENTREVISTA
#ins FINAL
#ins GANA
#ins GANARSE
#ins HIELO
#ins IDIOMA
#ins IDIOLOGIA
#ins JIGOTE
#ins JUEGO
#ins KART
#ins KERMESSE
#ins LA
#ins LABOR
#ins LABORIOSO
#ins LABRIEGO
#ins M
#ins MASA
#ins MI
#ins MISA
#ins MISAL
#ins MISAL
#ins NADIE
#ins ODIO
#ins ODIOSO
#ins PENA
#ins PENADO
#ins QUE
#ins QUEJA
#ins QUEJARSE
#ins RADIO
#ins RADIOGRAFIA
#ins SACA
#ins SACADO
#ins SACAR
#ins TRIBU
#ins TRIBUNA
#ins TRIBUNAL
#ins ULTERIOR
#ins VARA
#ins VARADERA
#ins VARADERO
#ins VARAL
#ins VARAPALO
#ins VARAR
#ins WAT
#ins WATER
#ins XILOFONO
#ins YA
#ins YACIJA
#ins ZAQUE
#ins ZAQUEAR
###!
###! Diverses comprovacions amb el metodes prefix i satisfan_patro
###!
#pre ABADESA
ABAD
##ABAD
###!
#spats [*,B,A,D,E,S]
[]
##[]
#spats [A,*,A,D,E,S]
[]
##[]
#spats [A,B,*,D,E,S]
[]
##[]
#spats [A,B,A,*,E,S]
[]
##[]
#spats [A,B,A,D,*,S]
[]
##[]
#spats [A,B,A,D,E,*]
[]
##[]
#spats [*,*,*,D,E,S]
[]
##[]
#spats [*,*,A,*,E,S]
[]
##[]
#spats [*,*,A,D,*,S]
[]
##[]
#spats [*,*,A,D,E,*]
[]
##[]
#spats [*,B,*,*,E,S]
[]
##[]
#spats [*,B,*,D,*,S]
[]
##[]
#spats [*,B,*,D,E,*]
[]
##[]
#spats [*,B,A,*,*,S]
[]
##[]
#spats [*,B,A,*,E,*]
[]
##[]
#spats [*,B,A,D,*,*]
[]
##[]
#spats [A,*,*,*,E,S]
[]
##[]
#spats [A,*,*,D,*,S]
[]
##[]
#spats [A,*,*,D,E,*]
[]
##[]
#spats [A,*,A,*,*,S]
[]
##[]
#spats [A,*,A,*,E,*]
[]
##[]
#spats [A,*,A,D,*,*]
[]
##[]
#spats [A,B,*,*,*,S]
[]
##[]
#spats [A,B,*,*,E,*]
[]
##[]
#spats [A,B,*,D,*,*]
[]
##[]
#spats [A,B,A,*,*,*]
[]
##[]
#spats [*,*,*,*,*,S]
[]
##[]
#spats [*,*,*,*,E,*]
[]
##[]
#spats [*,*,*,D,*,*]
[]
##[]
#spats [*,*,A,*,*,*]
[AMASAR]
##[AMASAR]
#spats [*,B,*,*,*,*]
[]
##[]
#spats [A,*,*,*,*,*]
[AMASAR]
##[AMASAR]
#spats [*,*,*,*,*,*]
[AMASAR, CASADA, IDIOMA, JIGOTE, ODIOSO, PENADO, SACADO, YACIJA]
##[AMASAR, CASADA, IDIOMA, JIGOTE, ODIOSO, PENADO, SACADO, YACIJA]
###!
#spats [*,B,A,D,E,S,A]
[]
##[]
#spats [A,*,A,D,E,S,A]
[]
##[]
#spats [A,B,*,D,E,S,A]
[]
##[]
#spats [A,B,A,*,E,S,A]
[]
##[]
#spats [A,B,A,D,*,S,A]
[]
##[]
#spats [A,B,A,D,E,*,A]
[]
##[]
#spats [A,B,A,D,E,S,*]
[]
##[]
#spats [*,*,A,D,E,S,A]
[]
##[]
#spats [*,B,*,D,E,S,A]
[]
##[]
#spats [*,B,A,*,E,S,A]
[]
##[]
#spats [*,B,A,D,*,S,A]
[]
##[]
#spats [*,B,A,D,E,*,A]
[]
##[]
#spats [*,B,A,D,E,S,*]
[]
##[]
#spats [A,*,*,D,E,S,A]
[]
##[]
#spats [A,*,A,*,E,S,A]
[]
##[]
#spats [A,*,A,D,*,S,A]
[]
##[]
#spats [A,*,A,D,E,*,A]
[]
##[]
#spats [A,*,A,D,E,S,*]
[]
##[]
#spats [A,B,*,*,E,S,A]
[]
##[]
#spats [A,B,*,D,*,S,A]
[]
##[]
#spats [A,B,*,D,E,*,A]
[]
##[]
#spats [A,B,*,D,E,S,*]
[]
##[]
#spats [A,B,A,*,*,S,A]
[]
##[]
#spats [A,B,A,*,E,*,A]
[]
##[]
#spats [A,B,A,*,E,S,*]
[]
##[]
#spats [A,B,A,D,*,*,A]
[]
##[]
#spats [A,B,A,D,*,S,*]
[]
##[]
#spats [A,B,A,D,E,*,*]
[]
##[]
#spats [*,*,*,*,*,*,A]
