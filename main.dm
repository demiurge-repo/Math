exponent = fn[exp] {
    return = fn [x] {
        i = 0;
        y = 1;
        while i < exp {
            y = y * x;
            i = i + 1;
        };
        return = y;
    };
};

square = exponent[2];