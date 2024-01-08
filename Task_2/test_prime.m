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

