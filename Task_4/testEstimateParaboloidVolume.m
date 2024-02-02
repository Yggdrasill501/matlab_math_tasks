function testEstimateParaboloidVolume()
    % Test parameters
    diameter = 10;
    depth = 5;
    numPoints = 100000; % Increased number of points for better accuracy in the test

    % Known volume calculation
    % Volume of a paraboloid: V = 1/2 * pi * r^2 * h
    expectedVolume = 1/2 * pi * (diameter/2)^2 * depth;

    % Tolerance for the test (considering some margin for randomness)
    tolerance = 0.05 * expectedVolume; % 5% tolerance

    % Call the function
    estimatedVolume = estimateParaboloidVolume(diameter, depth, numPoints);

    % Check if the estimated volume is within the tolerance
    assert(abs(estimatedVolume - expectedVolume) <= tolerance, ...
        'Test failed: The estimated volume is outside the acceptable tolerance range.');

    disp('Test passed: The estimated volume is within the acceptable tolerance range.');
end

