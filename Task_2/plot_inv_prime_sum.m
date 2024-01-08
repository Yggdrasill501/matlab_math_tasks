function PLOT_INV_PRIME_SUM(nmax)

    sums = zeros(1, nmax);

    for n = 1:nmax
        sums(n) = INV_PRIME_SUM(nthprime(n));
    end

    loglog(1:nmax, sums, '-o');
    title('Sum of Inverse of First N Prime Numbers');
    xlabel('Number of Prime Numbers (N)');
    ylabel('Sum of Inverse of Prime Numbers');
    grid on;
end

