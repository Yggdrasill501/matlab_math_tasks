function isValid = CTYRSTEN(a, b, c, d, e, f)

    if (a + b + c > d) && (a + b + d > c) && (a + c + d > b) && (b + c + d > a)

        isValid = true;
    else
        isValid = false;
    end
end

