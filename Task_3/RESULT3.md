# Task 3
*[Fucntion CYCLOID](https://github.com/Yggdrasill501/matlab_math_tasks/blob/main/Task_3/CYCLOID.m)* Create a CYCLOID function that makes it easy to draw a closed surface resulting from the rotation of one period of the cycloid
around the x-axis (the result is a single-color smooth surface that is displayed using the lighting model).

## Function:
```
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
```

CYCLOID generates and plots a 3D surface representing a rotated cycloid, based on a given radius r. The cycloid curve is
parameterized by t, and the rotation is achieved by varying θ around a circle. The coordinates X, Y, and Z are 
calculated using the parametric equations of the cycloid, where T and Θ are meshgrids created from t and θ to cover the
entire surface. The function then uses these coordinates to plot the surface with surf, applying smooth shading 
(shading interp), adding a light source (light), setting the lighting model to gouraud for soft shading effects, 
and using a dull material to give the surface a non-shiny appearance. It sets the axes to be equal for proper aspect 
ratio and labels the axes and the plot title.

## Run: 
```
radius = 1;
CYCLOID(radius);
```

Plot:
![plot](plot.png)

