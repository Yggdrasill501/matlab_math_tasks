# Second Task
*The [INV_PRIME_SUM function](https://github.com/Yggdrasill501/matlab_math_tasks/blob/main/Task_2/inv_prime_sum.m), which determines the sum of the inverted values of the first n prime numbers from the specified n.
You use this function in another function PLOT_INV_PRIME_SUM(https://github.com/Yggdrasill501/matlab_math_tasks/blob/main/Task_2/plot_inv_prime_sum.m),
which, using loglog, drew the dependence of the sum on the number of terms from one to nmax (it is a graph of the sequence of partial sums of that sequence)*

## File with INV_PRIME_SUM
[INV_PRIME_SUM](https://github.com/Yggdrasill501/matlab_math_tasks/blob/main/Task_2/inv_prime_sum.m)

```
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
```
The function starts by checking if the input n is a valid, initialize 2, which is the first prime number, than creates empty array to store the prime numbers, loop finds first prime number, if prime number is found it is added to the array. Than the function calculate invers of prime number and return the sum of inverted primes.

## File with PLOT_INV_PRIME_SUM
[PLOT_INV_PRIME_SUM](https://github.com/Yggdrasill501/matlab_math_tasks/blob/main/Task_2/plot_inv_prime_sum.m)


```
function PLOT_INV_PRIME_SUM(nmax)

    if ~isscalar(nmax) || nmax < 1 || nmax ~= floor(nmax)
        error('nmax must be a positive integer.');
    end

    sums = zeros(1, nmax); % Pre-allocate array for performance

    for n = 1:nmax
        sums(n) = INV_PRIME_SUM(n);
    end

    figure;
    loglog(1:nmax, sums, '-o');
    title('Sum of Inverse of First N Prime Numbers');
    xlabel('Number of Prime Numbers (N)');
    ylabel('Sum of Inverse of Prime Numbers');
    grid on;
end
```

The function begins by validating the input nmax, it checks if nmax is scalar, positive number and interger. Than it pre-allocates array of sums, for loop calculate the sum of the inverses of the first n prime numbers, than the function creates figure to plot the results, with x-axis represents the number of prime numbers, y-axis represents the sum of the inverses of these prime numbers.

## Test File 
[Test Prime](https://github.com/Yggdrasill501/matlab_math_tasks/blob/main/Task_2/test_prime.m)


```
% Testing INV_PRIME_SUM
disp('Testing INV_PRIME_SUM Function');
for n = [1, 5, 10, 20]
    fprintf('Sum of inverses of first %d primes: %f\n', n, INV_PRIME_SUM(n));
end

% Testing PLOT_INV_PRIME_SUM
disp('Testing PLOT_INV_PRIME_SUM Function');
nmax = 20;
PLOT_INV_PRIME_SUM(nmax);
disp(['Plot generated for the first ', num2str(nmax), ' prime numbers.']);

```

Tests checks is the fuctions work how expected.

Test results:
```
octave:1> test_prime
Testing INV_PRIME_SUM Function
Sum of inverses of first 1 primes: 0.500000
Sum of inverses of first 5 primes: 1.267100
Sum of inverses of first 10 primes: 1.533439
Sum of inverses of first 20 primes: 1.742867
Testing PLOT_INV_PRIME_SUM Function
Plot generated for the first 20 prime numbers.
```
and plot:
![plot](plot.png}

