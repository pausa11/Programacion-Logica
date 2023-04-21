var 0..90:pollos;
var 0..90:conejos;

0..10000: pienso;
0..10000: tiempo;

contraint 2*pollos + 3*conejos <= pienso;
contraint 2*pollos + 3*conejos <= tiempo;

maximize beneficio: 2*pollos + 3*conejos;
output["Las cantidad de pollos es: \(pollos) y de conejos es: \(conejos), dando una utilidad de \(500*conejos + 300*pollos)"];
