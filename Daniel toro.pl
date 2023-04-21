% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here

padre(alberto,simon).
padre(alberto,james).
padre(alberto,carlos).
padre(alberto,ines).
padre(clara,andres).
padre(ines,ana).
padre(ines,juan).
padre(ines,clara).
padre(pedro,vanessa).
padre(pedro,alex).
padre(carlos,pedro).
padre(simon,david).
padre(simon,anabelle).
padre(simon,elisa).
padre(david,brian).

abuelo(X,Z):-padre(Y,X),padre(Z,Y).
                        
hermano(X,Z):-padre(Y,X),padre(Y,Z),X\=Z.

tio(X,Z):-padre(Y,X),hermano(Y,Z).

primos(X,Z):-padre(Y,X),hermano(Y,T),padre(T,Z).

tatarabuelo(X,Z):-padre(Y,X),padre(T,Y),padre(Z,T).

/** <examples> Your example queries go here, e.g.
?- padre(alberto,Hijo)
   hermano(simon,Hermano)
   tio(david,Tios)}
   primos(andres,Primo)
   tatarabuelo(brian,Tatarabuelo)
   abuelo(alex,Abuelo)
*/
