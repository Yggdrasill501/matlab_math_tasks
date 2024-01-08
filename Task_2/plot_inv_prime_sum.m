function PLOT_INV_PRIME_SUM(nmax)

    if ~isscalar(nmax) || nmax < 1 || nmax ~= floor(nmax)
        error('nmax must be a positive integer.');
    end

	sums = zeros(1, nmax);

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

