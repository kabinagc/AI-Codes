value(1). value(2). value(3).
value(4). value(5). value(6).
value(7). value(8). value(9).
value(0).

solve(S,M,E,O,N,R,D,Y):-
M is 1, O is 0,

value(S), S>=8,
value(Y),
value(D),
value(R),
value(N),
value(E),

S\=M,S\=E,S\=O,S\=N,S\=R,S\=R,S\=D,S\=Y,
M\=E,M\=O,M\=N,M\=R,M\=D,M\=Y,
E\=O,E\=N,E\=R,E\=D,E\=Y,
O\=N,O\=R,O\=D,O\=Y,
N\=R,N\=D,N\=Y,
R\=D,R\=Y,
D\=Y,

Y is (D+E)mod 10,
C1 is truncate((D+E)/10),
E is (C1+N+R)mod 10,
C2 is truncate((C1+N+R)/10),
N is (C2+E+O)mod 10,
C3 is truncate((C2+E+O)/10),
O is(C3+S+M)mod 10.