function exists = CTYRSTEN(a, b, c, d, e, f)

    if (a + b + c > d) && (b + c + d > a) && (c + d + a > b) && (d + a + b > c) && ...
       (a + b + e > f) && (b + e + f > a) && (e + f + a > b) && (f + a + b > e) && ...
       (a + c + e > f) && (c + e + f > a) && (e + f + a > c) && (f + a + c > e) && ...
       (b + c + e > f) && (c + e + f > b) && (e + f + b > c) && (f + b + c > e) && ...
       (a + d + e > f) && (d + e + f > a) && (e + f + a > d) && (f + a + d > e) && ...
       (b + d + e > f) && (d + e + f > b) && (e + f + b > d) && (f + b + d > e)
        exists = true;
    else
        exists = false;
    end
end
