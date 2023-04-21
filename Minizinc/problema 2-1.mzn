% Use this editor as a MiniZinc scratch book
var 0..90:pollos;
var 0..90:conejos;

0..10000: pienso;
0..10000: tiempo;

constraint 2*pollos + 3*conejos <= pienso;
constraint 2*pollos + 3*conejos <= tiempo;

solve maximize beneficio:( 2*pollos )+ (3*conejos);
output["Las cantidad de pollos es: \(pollos) y de conejos es: \(conejos), dando una utilidad de: \(500*conejos + 300*pollos)"];