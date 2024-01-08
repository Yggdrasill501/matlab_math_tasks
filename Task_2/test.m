% Test for INV_PRIME_SUM
disp('Testing INV_PRIME_SUM Function');
test_values = [1, 5, 10, 20]; % Test with first 1, 5, 10, and 20 prime numbers
for i = 1:length(test_values)
    sum_inv = INV_PRIME_SUM(test_values(i));
    disp(['Sum of inverses of first ', num2str(test_values(i)), ' primes: ', num2str(sum_inv)]);
end

% Test for PLOT_INV_PRIME_SUM
disp('Testing PLOT_INV_PRIME_SUM Function');
nmax = 10; % Test with first 10 prime numbers
PLOT_INV_PRIME_SUM(nmax);
disp(['PLOT_INV_PRIME_SUM plot generated for nmax = ', num2str(nmax)]);

