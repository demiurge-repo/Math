import "main.dm" as Math;
test = fn(actual, expected) {
    if (actual == expected) .print(".") else .print(actual);
};

.test(Math.square(2), 4);
.test(Math.exponentCurry(4)(2), 16);
.test(Math.exponent(2, 3), 8);
.test(Math.abs(2), 2);
.test(Math.abs(-2), 2);
.test(Math.sqrt(49), 7);
.test(Math.sqrt(144), 12);