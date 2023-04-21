var 0..1200:s1;

var 0..1200:s2;

0..2000:cajas;
0..400000:polvorones;
0..260000:mantecadas;
0..208000:roscos;

constraint s1+s2<=cajas;
constraint 150*s1+2000*s2<=polvorones;
constraint 100*s1+100*s2s<=mantecados;
constraint 80*s1+100*s2<=roscos;

solve maximize 450*s1+560*s2;