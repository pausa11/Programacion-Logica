%solicion punto 5
int: n;

% Define decision variable
array[1..n] of var 0..9: x;

% Constrain the sum of the numbers in the array to be equal to the product of the numbers
constraint sum(i in 1..n) (x[i]) = product  (i in 1..n) (x[i]);

% Define the search strategy
solve satisfy;

% Output the result
output ["Array: ", show(x)];