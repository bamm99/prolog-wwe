% Nombre, POW,TGM,SPD,CHa,clase,nivel
beast(aidenEnglish,10919,11277,11098,10979,0,0).
beast(ajStyles,11634,11217,11754,11396,0,0).
beast(apolloCrews,11366,11128,11247,11009,0,0).
beast(baronCorbin,11456,11575,11038,11217,0,0).
beast(bigCass,11456,11336,10919,11098,0,0).
beast(bigE,11605,11486,11068,11247,0,0).
beast(bigShow,11426,11307,10889,11068,0,0).
beast(bobbyRoode,11426,11009,11187,11545,0,0).
beast(boDallas,10860,11038,11277,11396,0,0).
beast(braunStrowman,11783,11664,11307,11247,0,0).
beast(brayWyatt,11336,11217,11098,11456,0,0).
beast(brockLesnar,11843,11605,11456,11247,0,0).
beast(cedricAlexander,11068,11307,11426,11869,0,0).
beast(cesaro,11396,11456,11217,11158,0,0).
beast(chrisJericho,11098,11217,11575,11456,0,0).
beast(curtHawkins,11038,10740,10919,11217,0,0).
beast(curtisAxel,11098,11217,10979,11336,0,0).
beast(deanambrose,11128,11605,11545,11247,0,0).
beast(dolphZiggler,11068,11247,11426,11366,0,0).
beast(enzoAmore,11128,11187,11307,11485,0,0).
beast(erickRowan,11307,11187,11068,10949,0,0).
beast(fandango,11277,11038,11158,11396,0,0).
beast(finnBalor,11456,11336,11575,11217,0,0).
beast(goldust,10860,11262,11024,11366,0,0).
beast(granMetalik,10979,10800,11336,11217,0,0).
beast(heathSlater,10964,11083,11202,11262,0,0).
beast(jeffHardy,11068,11366,11545,11247,0,0).
beast(jinderMahal,11694,11575,11217,11336,0,0).
beast(johnCena,11634,11426,11277,11813,0,0).
beast(kevinOwens,11634,11575,11277,11456,0,0).

:- dynamic aux/7.
aux(1,0,0,0,0,0,0).
:- dynamic aux2/7.
aux2(2,0,0,0,0,0,0).
:- dynamic aux3/7.
aux3(3,0,0,0,0,0,0).
:- dynamic aux4/7.
aux4(4,0,0,0,0,0,0).

:- dynamic equipo1/5.
equipo1(1,0,0,0,0).

:- dynamic equipo2/5.
equipo2(2,0,0,0,0).


:- dynamic contador/1.
contador(0).
    powerup1(Z,L,N):-
    
        L=0 ->(N>60 ->  aumento1(Z,L,60) ;aumento1(Z,L,N)) % - 60 niveles max
        ;L=1->(N>65 ->  aumento1(Z,L,65);aumento1(Z,L,N)) % - 65 niveles max
        ;L=2->(N>70 ->  aumento1(Z,L,70);aumento1(Z,L,N)) % - 70 niveles max
        ;L=3->(N>75 ->  aumento1(Z,L,75);aumento1(Z,L,N)) % - 75 niveles max
        ;L=4->(N>80 ->  aumento1(Z,L,80);aumento1(Z,L,N)).% - 80 niveles max

    aumento1(Z,L,N):-
        aux(Z,A,B,C,D,_,_),
        E is ((A * 1.15^L)+((A * 1.15^L)*0.05*N)),
        F is ((B * 1.15^L)+((B * 1.15^L)*0.05*N)),
        G is ((C * 1.15^L)+((C * 1.15^L)*0.05*N)),
        H is ((D * 1.15^L)+((D * 1.15^L)*0.05*N)),
        retractall(aux(_,_,_,_,_,_,_)),
        assert(aux(Z,E,F,G,H,L,N)).

    powerup2(Z,L,N):-
    
        L=0 ->(N>60 ->  aumento2(Z,L,60);aumento2(Z,L,N)) % - 60 niveles max
        ;L=1->(N>65 ->  aumento2(Z,L,65);aumento2(Z,L,N)) % - 65 niveles max
        ;L=2->(N>70 ->  aumento2(Z,L,70);aumento2(Z,L,N)) % - 70 niveles max
        ;L=3->(N>75 ->  aumento2(Z,L,75);aumento2(Z,L,N)) % - 75 niveles max
        ;L=4->(N>80 ->  aumento2(Z,L,80);aumento2(Z,L,N)).% - 80 niveles max

    aumento2(Z,L,N):-
        aux2(Z,A,B,C,D,_,_),
        E is ((A * 1.15^L)+((A * 1.15^L)*0.05*N)),
        F is ((B * 1.15^L)+((B * 1.15^L)*0.05*N)),
        G is ((C * 1.15^L)+((C * 1.15^L)*0.05*N)),
        H is ((D * 1.15^L)+((D * 1.15^L)*0.05*N)),
        retractall(aux2(_,_,_,_,_,_,_)),
        assert(aux2(Z,E,F,G,H,L,N)).

    powerup3(Z,L,N):-
    
        L=0 ->(N>60 ->  aumento3(Z,L,60);aumento3(Z,L,N)) % - 60 niveles max
        ;L=1->(N>65 ->  aumento3(Z,L,65);aumento3(Z,L,N)) % - 65 niveles max
        ;L=2->(N>70 ->  aumento3(Z,L,70);aumento3(Z,L,N)) % - 70 niveles max
        ;L=3->(N>75 ->  aumento3(Z,L,75);aumento3(Z,L,N)) % - 75 niveles max
        ;L=4->(N>80 ->  aumento3(Z,L,80);aumento3(Z,L,N)).% - 80 niveles max

    aumento3(Z,L,N):-
        aux3(Z,A,B,C,D,_,_),
        E is ((A * 1.15^L)+((A * 1.15^L)*0.05*N)),
        F is ((B * 1.15^L)+((B * 1.15^L)*0.05*N)),
        G is ((C * 1.15^L)+((C * 1.15^L)*0.05*N)),
        H is ((D * 1.15^L)+((D * 1.15^L)*0.05*N)),
        retractall(aux3(_,_,_,_,_,_,_)),
        assert(aux3(Z,E,F,G,H,L,N)).

    powerup4(Z,L,N):-
    
        L=0 ->(N>60 ->  aumento4(Z,L,60);aumento4(Z,L,N)) % - 60 niveles max
        ;L=1->(N>65 ->  aumento4(Z,L,65);aumento4(Z,L,N)) % - 65 niveles max
        ;L=2->(N>70 ->  aumento4(Z,L,70);aumento4(Z,L,N)) % - 70 niveles max
        ;L=3->(N>75 ->  aumento4(Z,L,75);aumento4(Z,L,N)) % - 75 niveles max
        ;L=4->(N>80 ->  aumento4(Z,L,80);aumento4(Z,L,N)).% - 80 niveles max

    aumento4(Z,L,N):-
        aux4(Z,A,B,C,D,_,_),
        E is ((A * 1.15^L)+((A * 1.15^L)*0.05*N)),
        F is ((B * 1.15^L)+((B * 1.15^L)*0.05*N)),
        G is ((C * 1.15^L)+((C * 1.15^L)*0.05*N)),
        H is ((D * 1.15^L)+((D * 1.15^L)*0.05*N)),
        retractall(aux4(_,_,_,_,_,_,_)),
        assert(aux4(Z,E,F,G,H,L,N)).
ganapow(X,Y):-
    aux(X,A,_,_,_,_,_),
    aux2(Y,B,_,_,_,_,_),
    A@>B ->
    write(X),
    write(' gano en pow'),
    nl.
ganatgm(X,Y):-
    aux(X,_,A,_,_,_,_),
    aux2(Y,_,B,_,_,_,_),
    A@>B->
    write(X),
    write(' gano en tgm'),
    nl.
ganaspd(X,Y):-
    aux(X,_,_,A,_,_,_),
    aux2(Y,_,_,B,_,_,_),
    A@>B->
    write(X),
    write(' gano en spd'),
    nl.
ganacha(X,Y):-
    aux(X,_,_,_,A,_,_),
    aux2(Y,_,_,_,B,_,_),
    A@>B->
    write(X),
    write(' gano en cha'),
    nl.
ganapowtgm(X,Y):-
    aux(X,A,C,_,_,_,_),K is A + C,
    aux2(Y,B,D,_,_,_,_),L is B + D,
    K@>L,
    write(X),
    write(' gano en pow+tgm'),
    nl.
ganapowspd(X,Y):-
    aux(X,A,_,C,_,_,_),K is A + C,
    aux2(Y,B,_,D,_,_,_),L is B + D,
    K@>L,
    write(X),
    write(' gano en pow+spd'),
    nl.
ganapowcha(X,Y):-
    aux(X,A,_,_,C,_,_),K is A + C,
    aux2(Y,B,_,_,D,_,_),L is B + D,
    K@>L,
    write(X),
    write(' gano en pow+cha'),
    nl.
ganatgmspd(X,Y):-
    aux(X,_,A,C,_,_,_),K is A + C,
    aux2(Y,_,B,D,_,_,_),L is B + D,
    K@>L,
    write(X),
    write(' gano en tgm+spd'),
    nl.
ganatgmcha(X,Y):-
    aux(X,_,A,_,C,_,_),K is A + C,
    aux2(Y,_,B,_,D,_,_),L is B + D,
    K@>L,
    write(X),
    write(' gano en tgm+cha'),
    nl.
ganaspdcha(X,Y):-
    aux(X,_,_,A,C,_,_),K is A + C,
    aux2(Y,_,_,B,D,_,_),L is B + D,
    K@>L,
    write(X),
    write(' gano en spd+cha'),
    nl.
aumconta:-
    contador(X),
    Y is X + 1,
    retractall(contador(_)),
    assert(contador(Y)).

grabaraux(X,X1):-
    beast(X,A,B,C,D,E,F),
    aux(X1,_,_,_,_,_,_),
    A1 is A,
    B1 is B,
    C1 is C,
    D1 is D,
    E1 is E,
    F1 is F,
    retractall(aux(_,_,_,_,_,_,_)),
    assert(aux(X,A1,B1,C1,D1,E1,F1)).
grabaraux2(Y,Y1):-
    beast(Y,A,B,C,D,E,F),
    aux2(Y1,_,_,_,_,_,_),
    A1 is A,
    B1 is B,
    C1 is C,
    D1 is D,
    E1 is E,
    F1 is F,
    retractall(aux2(_,_,_,_,_,_,_)),
    assert(aux2(Y,A1,B1,C1,D1,E1,F1)).

grabaraux3(Y,Y1):-
    beast(Y,A,B,C,D,E,F),
    aux3(Y1,_,_,_,_,_,_),
    A1 is A,
    B1 is B,
    C1 is C,
    D1 is D,
    E1 is E,
    F1 is F,
    retractall(aux3(_,_,_,_,_,_,_)),
    assert(aux3(Y,A1,B1,C1,D1,E1,F1)).
grabaraux4(Y,Y1):-
    beast(Y,A,B,C,D,E,F),
    aux4(Y1,_,_,_,_,_,_),
    A1 is A,
    B1 is B,
    C1 is C,
    D1 is D,
    E1 is E,
    F1 is F,
    retractall(aux4(_,_,_,_,_,_,_)),
    assert(aux4(Y,A1,B1,C1,D1,E1,F1)).


% Nombre, POW,TGM,SPD,CHa
peleaconaumento(X,CX,NX,Y,CY,NY):-
    grabaraux(X,1),grabaraux2(Y,2),
    powerup1(X,CX,NX),
    powerup2(Y,CY,NY),
    pelea(X,Y).

pelea(X,Y):-
    
    (ganapow(X,Y)-> aumconta;write(' pierde en pow'),nl),
    (ganatgm(X,Y)-> aumconta;write('pierde en tgm'),nl),
    (ganaspd(X,Y)-> aumconta;write('pierde spd'),nl),
    (ganacha(X,Y)-> aumconta;write('pierde en cha'),nl),
    (ganapowtgm(X,Y)-> aumconta;write('pierde en pow+tgm'),nl),
	(ganapowspd(X,Y)-> aumconta;write('pierde en pow+spd'),nl),
    (ganapowcha(X,Y)-> aumconta;write('pierde en pow+cha'),nl),
    (ganatgmspd(X,Y)-> aumconta;write('pierde en tgm+spd'),nl),
    (ganatgmcha(X,Y)-> aumconta;write('pierde en tgm+cha'),nl),
    (ganaspdcha(X,Y)-> aumconta;write('pierde en spd+cha'),nl),
    contador(T), U is T,U@>5 ->  
    		write(X), write(' gano la pelea');write(X),write(' perdio la pelea'),nl.

ganaequipopow(E1,E2):-
    equipo1(E1,AE1,_,_,_),
    equipo2(E2,AE2,_,_,_),
    AE1@>AE2->
        write('Equipo 1 gano en pow'),
        nl.
ganaequipotgm(E1,E2):-
    equipo1(E1,_,BE1,_,_),
    equipo2(E2,_,BE2,_,_),
    BE1@>BE2->
        write('Equipo 1 gano en tgm'),
        nl.
ganaequipospd(E1,E2):-
    equipo1(E1,_,_,CE1,_),
    equipo2(E2,_,_,CE2,_),
    CE1@>CE2->
        write('Equipo 1 gano en spd'),
        nl.
ganaequipocha(E1,E2):-
    equipo1(E1,_,_,_,DE1),
    equipo2(E2,_,_,_,DE2),
    DE1@>DE2->
        write('Equipo 1 gano en cha'),
        nl.
ganaequipopowtgm(E1,E2):-
    equipo1(E1,AE1,BE1,_,_),K is AE1 + BE1,
    equipo2(E2,AE2,BE2,_,_),L is AE2 + BE2,
    K@>L,
        write('Equipo 1 gano en pow+tgm'),
        nl.
ganaequipopowspd(E1,E2):-
    equipo1(E1,AE1,_,CE1,_),K is AE1 + CE1,
    equipo2(E2,AE2,_,CE2,_),L is AE2 + CE2,
    K@>L,
        write('Equipo 1 gano en pow+spd'),
        nl.
ganaequipopowcha(E1,E2):-
    equipo1(E1,AE1,_,_,DE1),K is AE1 + DE1,
    equipo2(E2,AE2,_,_,DE2),L is AE2 + DE2,
    K@>L,
        write('Equipo 1 gano en pow+cha'),
        nl.
ganaequipotgmspd(E1,E2):-
    equipo1(E1,_,BE1,CE1,_),K is BE1 + CE1,
    equipo2(E2,_,BE2,CE2,_),L is BE2 + CE2,
    K@>L,
        write('Equipo 1 gano en tgm+spd'),
        nl.
ganaequipotgmcha(E1,E2):-
    equipo1(E1,_,AB1,_,DE1),K is AB1 + DE1,
    equipo2(E2,_,AB2,_,DE2),L is AB2 + DE2,
    K@>L,
        write('Equipo 1 gano en tgm+cha'),
        nl.
ganaequipospdcha(E1,E2):-
    equipo1(E1,_,_,CE1,DE1),K is CE1 + DE1,
    equipo2(E2,_,_,CE2,DE2),L is CE2 + DE2,
    K@>L,
        write('Equipo 1 gano en tgm+cha'),
        nl.


formarequipo1(X,CX,NX,Y,CY,NY):-
	grabaraux(X,1),grabaraux2(Y,2),
    powerup1(X,CX,NX),
    powerup2(Y,CY,NY),
    aux(X,A1,B1,C1,D1,_,_),
    aux2(Y,A2,B2,C2,D2,_,_),
    equipo1(1,_,_,_,_),
    A is A1+A2,
    B is B1+B2,
    C is C1+C2,
    D is D1+D2,
    retractall(equipo1(1,_,_,_,_)),
    assert(equipo1(1,A,B,C,D)).

formarequipo2(X,CX,NX,Y,CY,NY):-
	grabaraux3(X,3),grabaraux4(Y,4),
    powerup3(X,CX,NX),
    powerup4(Y,CY,NY),
    aux3(X,A1,B1,C1,D1,_,_),
    aux4(Y,A2,B2,C2,D2,_,_),
    equipo2(2,_,_,_,_),
    A is A1+A2,
    B is B1+B2,
    C is C1+C2,
    D is D1+D2,
    retractall(equipo2(2,_,_,_,_)),
    assert(equipo2(2,A,B,C,D)).
    
peleaconequipo(X,XC,XN,Y,YC,YN,X2,XC2,XN2,Y2,YC2,YN2):-
    formarequipo1(X,XC,XN,Y,YC,YN),
    formarequipo2(X2,XC2,XN2,Y2,YC2,YN2),
    equipo1(E1,_,_,_,_),
    equipo2(E2,_,_,_,_),
    (ganaequipopow(E1,E2)-> aumconta;write(' pierde en pow'),nl),
    (ganaequipotgm(E1,E2)-> aumconta;write('pierde en tgm'),nl),
    (ganaequipospd(E1,E2)-> aumconta;write('pierde spd'),nl),
    (ganaequipocha(E1,E2)-> aumconta;write('pierde en cha'),nl),
    (ganaequipopowtgm(E1,E2)-> aumconta;write('pierde en pow+tgm'),nl),
	(ganaequipopowspd(E1,E2)-> aumconta;write('pierde en pow+spd'),nl),
    (ganaequipopowcha(E1,E2)-> aumconta;write('pierde en pow+cha'),nl),
    (ganaequipotgmspd(E1,E2)-> aumconta;write('pierde en tgm+spd'),nl),
    (ganaequipotgmcha(E1,E2)-> aumconta;write('pierde en tgm+cha'),nl),
    (ganaequipospdcha(E1,E2)-> aumconta;write('pierde en spd+cha'),nl),
    
    contador(T), U is T,U@>5 ->  
    		write('el equipo'), write(E1), write(' gano la pelea');write('el equipo 1 perdio la pelea'),nl.    
