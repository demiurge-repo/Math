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

abs = fn(x) {if x > 0 return=x else return=x*(-1)};

PRECISION = 0.000000000000001;

sqrt = fn(x) {
    if (x < 0) {
        return = -1;
    } else if (x == 0 or x == 1) {
        return = x;
    } else {
        x = x * 1.0;
        low = 0;
        high = x;
        mid = x;
        oldmid = -1;
        while (abs(oldmid - mid) >= PRECISION) {
            oldmid = mid;
            mid = (high + low) / 2;
            midsqr = mid * mid;
            if (mid * mid > x) {
                high = mid;
            } else {
                low = mid;
            };
        };
        return = mid;
    }
};