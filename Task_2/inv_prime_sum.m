function sum_inv_primes = INV_PRIME_SUM(n)

    if n <= 0 || n ~= floor(n)
        error('n must be a positive integer');
    end

    prime_candidate = 2;
    primes_array = [];
    while length(primes_array) < n
        if isprime(prime_candidate)
            primes_array(end + 1) = prime_candidate;
        end
        prime_candidate = prime_candidate + 1;
    end

    sum_inv_primes = sum(1 ./ primes_array);
end

