% Use this editor as a MiniZinc scratch book
enum PRODUCT;

array [PRODUCT] of float: profit;

enum RESOURCES;

array [RESOURCES] of float: capacity;

array[PRODUCT,RESOURCES] of float: consumo;

array[PRODUCT] of var int: produccion;

constraint forall(p in PRODUCT)(produccion[p]>=0);


constraint forall(r in RESOURCES)
    ( sum (p in PRODUCT) 
    (consumo[p,r]*produccion[p])<=capacity[r]);
    
%%Constraints adicionales
%constraint sum(produccion)<=1200;


solve maximize sum (p in PRODUCT)(produccion[p]*profit[p]);   

output[show(produccion)]; 
output["Beneficio: \(sum (p in PRODUCT)(produccion[p]*profit[p]))"];
 