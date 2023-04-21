% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space



multiplo3(X,R):-0 is mod(X,R).%funcion para saber si es multiplo de 3.

mult3([], 0).% caso base cuando el contador comienza en 0; para que termine la recursion y entrege los resultados.
%este toma la H y la T de una lista, y la H de la lista la evalua para ver si es multiplo de 3.
% si lo es, entra a la sentencia true del operador condicional  ->, si es false entra a la otra parte de las condiciones que es ;.
%así que esto seria un ciclo recursivo hasta que termina de recorrer la lista y llega al caso base,donde la lista está vacia.
%cuando es true al contador count le dice que count1 + 1 para que vaya guardando los que si son multiplo
%cuando es false el contador estaria en cero y le sigue dando el llamado recursivo sin aumentar el contador.
mult3([H|T], Count) :- (   multiplo3(H, 3) ->  mult3(T, Count1), Count is Count1 + 1;   mult3(T, Count)).

