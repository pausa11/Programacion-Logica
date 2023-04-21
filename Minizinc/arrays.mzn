%array de 20 posiciones de tipo float de parametros con nombre "notas"
array [1..20] of float: notas;

%array de 100 posiciones de enteros entre 1 10 llamado abc que contiene el resultado de una minimizacion
array [1..100] of var 1..10: abc;

%definir un array que el usuario puede modificar
array [1..100] of var 1..10: abc;

%array de tamaño N donde es ingresado por el usuario
0..1000: N;
array [1..N] of var 1..10: abc;

%recorrer un array
forall(varname in <type>(....))

constraint forall(i in 1..9)(x[i]>[i+1]);

%array de 10 posiciones con la tabla del 9
array [1..10] of var 1..10: tabla9;
constraint forall(i in 1..9)(tabla9[i]>tabla9[9*i]);
