% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

divisores(N) :- divisores(N, 1). %divisores es true, si se cumplen las condiciones que implica divisores(N,1).

/** Se llama a divisores desde la query,y se le entrega un numero N, 
y 1 se lo entrega desde la base de 
conocimientos */

%funtores recursivos en la base de conocimiento
%si I es menor o igual que X, y si x mod i es 0, escriba el numero I,y deje un espacio ' ', despues asigna I + 1 a NI,y hace un llamado recursivo a divisores.
divisores(X, I) :- I =< X, 0 is mod(X,I), write(I), write(' '), NI is I + 1, divisores(X, NI).
% si resulta false, entonces pregunta si es I todavia es menor que X, si lo es, no escribe nada y vuelve a hacer llamado recursivo para encontrar posibles divisores.
divisores(X, I) :- I =< X, not(0 is mod(X,I)), NI is I + 1, divisores(X, NI).
%si este tambien resulta en false, entonces ya llega al caso base para que se termine la recursion.
divisores(_,_).  %caso base que siempre arrojara true usando las variables anonimas.

%ejemplo de la query: divisores(12).