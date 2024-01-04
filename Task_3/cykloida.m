function CYKLOIDA(r)
    t = linspace(0, 2*pi, 100); 
    theta = linspace(0, 2*pi, 100); 

    [T, THETA] = meshgrid(t, theta);

    X = r * (T - sin(T));
    Y = r * (1 - cos(T)) * cos(THETA);
    Z = r * (1 - cos(T)) * sin(THETA);

    surf(X, Y, Z, 'EdgeColor', 'none');
    colormap('default');  
    shading interp;       
    light; lighting gouraud; 
    axis equal;  
    title('Cycloid Rotated Around the X-axis');
    xlabel('x');
    ylabel('y');
    zlabel('z');
end


