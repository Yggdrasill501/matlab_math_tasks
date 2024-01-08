function sum_inv_primes = INV_PRIME_SUM(n)

    if n <= 0
        error('n must be a positive integer');
    end

    if n == 1
        m = 2;
    else
        m = ceil(n * (log(n) + log(log(n)))); 
    end

    prime_list = primes(m);

    if length(prime_list) < n
        error('Estimation error: Not enough primes generated.');
    end

    primes_array = prime_list(1:n);
    sum_inv_primes = sum(1 ./ primes_array);
end

