import "main.dm" as Math;

tsquare = Math.square(2);
if tsquare == 4 .print(".") else .print(tsquare);

texp = Math.exponentCurry(4)(2);
if texp == 16 .print(".") else .print(texp);

texp = Math.exponent(2, 3);
if texp == 8 .print(".") else .print(text);