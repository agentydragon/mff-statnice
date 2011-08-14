
% dotaz: first(A,[1,2,3,4,5,6]).
first(F,[F|_]).


% dotaz: last(A,[1,2,3,4,5,6]).
last(X,[X]).
last(X,[_|Z]) :- last(X,Z).


% dotaz: inverse([1,2,3,4,5,6],X).
inverse(X,Y) :- inverse(X,Y,[]).

inverse([],Y,Y).
inverse([X|Z],Y,Inv) :- inverse(Z,Y,[X|Inv]).
