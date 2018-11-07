homem(vitor).
homem(igor).
homem(alcenor).

mulher(lorena).
mulher(amanda).

namorado(vitor, amanda).

mae(lorena, igor).
mae(lorena, vitor).
mae(carla, amanda).
mae(carla, camilla).
mae(cledna, lorena).
mae(carol, luiza).
mae(edna, cledna).

pai(alcenor, camilla).
pai(alcenor, amanda).
pai(fernando, lorena).
pai(fernando, tovar).
pai(tovar, luiza).

filho(X,Y) :- pai(Y,X).
irmao(X,Y) :- mae(P,X), mae(P,Y), X\=Y.
tio(X,Y) :- pai(P,X), pai(P,Z), pai(Z,Y), X\=Z.
avô(X,Y) :- pai(X,Z), pai(Z,Y).
avó(X,Y) :- mae(X,Z), mae(Z,Y).

cidade(campina, pais(brasil)).
cidade(berlim, pais(alemanha)).
cidade(madrid, pais(espanha)).

pessoa(vitor, data(14,agosto,96)).
pessoa(amanda, data(28,maio,97)).
pessoa(igor, data(22,fevereiro,99)).
pessoa(bruna, data(12,junho,96)).

aniversario(Nome, Dia, Mes, Ano) :- pessoa(Nome, data(Dia,Mes,Ano)), Ano < 99.
