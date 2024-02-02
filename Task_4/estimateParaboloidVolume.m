function [vol, figHandle] = estimateParaboloidVolume(d, h, N)
    x = d * rand(N, 1) - d/2;
    y = d * rand(N, 1) - d/2;
    z = h * rand(N, 1);

    inside = z <= 4*h/d^2 * (x.^2 + y.^2);

    volumePrism = d^2 * h;
    vol = sum(inside) / N * volumePrism;

    % Plotting
    figHandle = figure;
    [X, Y] = meshgrid(linspace(-d/2, d/2, 100), linspace(-d/2, d/2, 100));
    Z = 4*h/d^2 * (X.^2 + Y.^2);
    surf(X, Y, Z, 'FaceAlpha', 0.5, 'EdgeColor', 'none');
    hold on;
    scatter3(x(inside), y(inside), z(inside), 'g.');
    scatter3(x(~inside), y(~inside), z(~inside), 'r.');
    title('Parabolic Antenna and Random Points');
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    hold off;
end

