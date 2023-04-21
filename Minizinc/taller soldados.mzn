var 0..490:n;

constraint n > 100;
constraint n mod 5 == 2;
constraint n mod 7 == 2;
constraint n mod 12 == 1;

solve satisfy;
output ["El número de soldados que se fugaron es: \(496- n)"];