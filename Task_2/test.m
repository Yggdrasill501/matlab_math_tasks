% Test cases for INV_PRIME_SUM
tests = [2, 3, 5, 10]; % Example test cases
expected_results = [1/2 + 1/3, 1/2 + 1/3 + 1/5, 1/2 + 1/3 + 1/5 + 1/7, 1/2 + 1/3 + 1/5 + 1/7 + 1/11]; 

% Run the tests for INV_PRIME_SUM
for i = 1:length(tests)
    actual_result = INV_PRIME_SUM(tests(i));
    if abs(actual_result - expected_results(i)) < 1e-6 % Allowing a small error margin
        fprintf('Test %d for INV_PRIME_SUM passed\n', i);
    else
        fprintf('Test %d for INV_PRIME_SUM failed. Expected %f but got %f\n', i, expected_results(i), actual_result);
    end
end

% Assuming PLOT_INV_PRIME_SUM is defined elsewhere or in the MATLAB path
% Test calls for PLOT_INV_PRIME_SUM
test_values = [10, 50, 100]; % Example test cases

% Run the tests for PLOT_INV_PRIME_SUM
for i = 1:length(test_values)
    try
        PLOT_INV_PRIME_SUM(test_values(i));
        fprintf('Test with nmax = %d for PLOT_INV_PRIME_SUM passed (check plot visually)\n', test_values(i));
    catch e
        fprintf('Test with nmax = %d for PLOT_INV_PRIME_SUM failed due to an error: %s\n', test_values(i), e.message);
    end
end

