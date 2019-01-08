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
