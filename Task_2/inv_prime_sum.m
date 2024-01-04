function sum_inv_primes = INV_PRIME_SUM(n)
    % INV_PRIME_SUM calculates the sum of the reciprocals of the first n prime numbers

    % Find the first n prime numbers
    prime_numbers = primes(nthprime(n));

    % Calculate the sum of their reciprocals
    sum_inv_primes = sum(1 ./ prime_numbers);
end

function p = nthprime(n)
    % Helper function to find the nth prime number
    p = 2; % Starting from the first prime number
    count = 1;
    while count < n
        p = p + 1;
        if isprime(p)
            count = count + 1;
        end
    end
end

