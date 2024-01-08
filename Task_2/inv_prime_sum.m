function sum_inv_primes = INV_PRIME_SUM(n)
    primes_array = primes(nthprime(n));
    
    sum_inv_primes = sum(1 ./ primes_array);
end

