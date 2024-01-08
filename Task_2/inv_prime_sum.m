function sum_inv_primes = INV_PRIME_SUM(n)

    if n == 1
        sum_inv_primes = 1;
    else
        prime_list = primes(nth_prime_approx(n));
        primes_array = prime_list(1:n);
    
        sum_inv_primes = sum(1 ./ primes_array);
    end
end
