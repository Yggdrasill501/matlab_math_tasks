# Matlab math Tasks

## Intro
Firstly I wanted to use [Deepnote](https://deepnote.com/). Why?! Well because of opportunities of collaboration, virtual machine and friendly UI, eventhought I was not able to run it as notebook, there is a space for futrure improvemnt,
Secondly I used [Octave](https://octave.org/) because I preref open source and community tools.
In the end I would love to give props to this [Article](https://community.deepnote.com/c/showcase/custom-environment-for-gnu-octave).

## Project
As in the article I created [Docker file](https://github.com/Yggdrasill501/octave_matlab_tasks/blob/main/Dockerfile) to create enviroment and set-up for octave.
The rest of the project and the mathlab tasks are devided to folders with tests and source files.
The [INIT](https://github.com/Yggdrasill501/octave_matlab_tasks/blob/main/INIT.sh) file is there in case of requriments.

# First Task  
*The [CTYRSTEN](https://github.com/Yggdrasill501/octave_matlab_tasks/blob/main/Task_1/CTYRSTEN.m) function, which from the six edge lengths a,b,c,d,e, determines whether a quadrilateral exists, i.e. returns true or false*

First task I devided into multiple files

## File with fuction CTYRSTEN 
[CTYRSTEN](https://github.com/Yggdrasill501/matlab_math_tasks/blob/main/Task_1/CTYRSTEN.m)
```
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
```

Where the lengths of any three edges must be greater than the length of the fourth edge, and if that is possible it return TRUE, in the other case FALSE

## File with Result run 
[Result](https://github.com/Yggdrasill501/matlab_math_tasks/blob/main/Task_1/result.m)

```
result = CTYRSTEN(1, 2, 3, 4, 5, 6);
disp(result);
```

Simple result file that display the the result.

## Test file
[Test Ctyrsten](https://github.com/Yggdrasill501/matlab_math_tasks/blob/main/Task_1/test_ctyrsten.m)

```
% Test 1: Valid Quadrilateral
result1 = CTYRSTEN(3, 4, 5, 6, 7, 8);
disp(['Test 1 (Valid Quadrilateral): ', num2str(result1)]);

% Test 2: One Very Long Edge
result2 = CTYRSTEN(100, 2, 3, 4, 5, 6);
disp(['Test 2 (One Very Long Edge): ', num2str(result2)]);

% Test 3: Zero or Negative Length
result3 = CTYRSTEN(0, -1, 2, 3, 4, 5);
disp(['Test 3 (Zero or Negative Length): ', num2str(result3)]);

% Test 4: All Edges Equal
result4 = CTYRSTEN(5, 5, 5, 5, 5, 5);
disp(['Test 4 (All Edges Equal): ', num2str(result4)]);

% Test 5: Extremely Small Edges
result5 = CTYRSTEN(0.1, 0.1, 0.1, 0.1, 0.1, 100);
disp(['Test 5 (Extremely Small Edges): ', num2str(result5)]);
```

Where each test as the comments suggest add test for every edge case that can happen with CTRYRSTEN function.

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



