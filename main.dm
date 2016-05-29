exponentCurry = fn(exp) {
    return=fn(x) {
        i = 0;
        y = 1;
        while i < exp {
            y = y * x;
            i = i + 1;
        };
        return = y;
    };
};

exponent = fn(x, powerOf) {
    return=exponentCurry(powerOf)(x);
};

square = exponentCurry(2);