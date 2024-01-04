function sum_inv_primes = INV_PRIME_SUM(n)
    prime_numbers = primes(nthprime(n));
    
    sum_inv_primes = sum(1 ./ prime_numbers);
end

