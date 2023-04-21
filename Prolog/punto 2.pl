% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

potencia(X,Y):-potencia(X,Y,1,X).% es true si el llamado pontencia(X,Y,1,X) es arroja true.

% potencia recibe un numero,una potencia,un contador y una variable para guardar el valor del dato original.
% se pregunta si R es igual a 1, por ser el caso especifico de que x^1 es el mismo x,y lo imprime en pantalla y hace el llamdo recursivo dandole a x el valor de la operacion
% con lo que contiene la vatriable T,Y sigue siendo Y, H es es contador de potencias operadas.
potencia(X,Y,R,O):- R=1,T is X*1,H is R + 1,write(T),write(' '), potencia(T,Y,H,O).
% este deficion por si R es diferente de 1 pero menor o igual que la potencia escrita, por lo que multiplica el acumulado del numero de nuevo por el numero inicial.
potencia(X,Y,R,O):- R=<Y, T is X*O, H is R + 1, write(T), write(' '), potencia(T,Y,H,O).
potencia(_,_,_,_).%caso para que salga true y termine la recursion.

/** <examples> Your example queries go here, e.g.
?- potencia(4,3).
*/
