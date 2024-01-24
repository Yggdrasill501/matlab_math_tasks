function CYCLOID(r)

    t = linspace(0, 2*pi, 100);  % One period of the cycloid
    theta = linspace(0, 2*pi, 100); % Angle for rotation around x-axis

    [T, Theta] = meshgrid(t, theta);

    % Cycloid parametric equations
    X = r * (T - sin(T));
    Y = r * (1 - cos(T)) .* cos(Theta);
    Z = r * (1 - cos(T)) .* sin(Theta);

    % Draw the surface
    surf(X, Y, Z);
    
    shading interp;        
    light;      
    lighting gouraud;      
    material dull;        
    axis equal;
    xlabel('x');
    ylabel('y');
    zlabel('z');
    title('Cycloid Rotated Surface');
end

