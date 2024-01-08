function np = nth_prime_approx(n)
    if n < 6
        np = 15; 
    else
	np = ceil(n * (log(n) + log(log(n))));
    end
end

