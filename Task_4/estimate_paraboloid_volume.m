function estimated_volume = estimateParaboloidVolume(d, h, N)
    x_max = d / 2;
    y_max = d / 2;
    z_max = h;

    x_rand = rand(N, 1) * d - x_max;
    y_rand = rand(N, 1) * d - y_max;
    z_rand = rand(N, 1) * h;

    z_paraboloid = 4 * h / d^2 * (x_rand.^2 + y_rand.^2);

    inside_count = sum(z_rand < z_paraboloid);

    cuboid_volume = d^2 * h;

    estimated_volume = inside_count / N * cuboid_volume;

    figure;
    [X, Y] = meshgrid(linspace(-x_max, x_max, 50), linspace(-y_max, y_max, 50));
    Z = 4 * h / d^2 * (X.^2 + Y.^2);
    surf(X, Y, Z, 'EdgeColor', 'none', 'FaceAlpha', 0.5);
    hold on;
    scatter3(x_rand, y_rand, z_rand, 5, 'r', 'filled');
    hold off;
    xlabel('x');
    ylabel('y');
    zlabel('z');
    title('Monte Carlo Estimation of Paraboloid Volume');
    axis equal;
    grid on;
end

