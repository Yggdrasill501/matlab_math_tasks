function CYCLOID(r)
    t = linspace(0, 2*pi, 100);
    theta = linspace(0, 2*pi, 100);

    [T, Theta] = meshgrid(t, theta);

    X = r * (T - sin(T));
    Y = r * (1 - cos(T)) .* cos(Theta);
    Z = r * (1 - cos(T)) .* sin(Theta);

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
