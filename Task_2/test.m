% Test cases for INV_PRIME_SUM
% For small n, you can manually verify the sum of reciprocals of prime numbers
tests = [2, 3, 5, 10]; % Example test cases
expected_results = [1/2 + 1/3, 1/2 + 1/3 + 1/5, ..., ...]; 

% Run the tests
for i = 1:length(tests)
    actual_result = INV_PRIME_SUM(tests(i));
    if abs(actual_result - expected_results(i)) < 1e-6
        fprintf('Test %d passed\n', i);
    else
        fprintf('Test %d failed. Expected %f but got %f\n', i, expected_results(i), actual_result);
    end
end

% Test calls for PLOT_INV_PRIME_SUM
test_values = [10, 50, 100]; % Example test cases

% Run the tests
for i = 1:length(test_values)
    try
        PLOT_INV_PRIME_SUM(test_values(i));
        fprintf('Test with nmax = %d passed (check plot visually)\n', test_values(i));
    catch
        fprintf('Test with nmax = %d failed due to an error\n', test_values(i));
    end
end

