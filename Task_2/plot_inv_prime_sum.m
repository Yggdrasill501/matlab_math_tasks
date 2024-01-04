function PLOT_INV_PRIME_SUM(nmax)
    % Initialize an array to store the partial sums
    partial_sums = zeros(1, nmax);
    
    % Calculate partial sums
    for i = 1:nmax
        partial_sums(i) = INV_PRIME_SUM(i);
    end
    
    % Plot the results using a log-log plot
    loglog(1:nmax, partial_sums);
    xlabel('n');
    ylabel('Sum of Reciprocals of First n Prime Numbers');
    title('Log-Log Plot of Partial Sums of Reciprocal Prime Numbers');
    grid on;
end

