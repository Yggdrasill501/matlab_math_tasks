function testEstimateParaboloidVolume()
    diameter = 10;
    depth = 5;
    numPoints = 100000;

    expectedVolume = 1/2 * pi * (diameter/2)^2 * depth;

    tolerance = 0.05 * expectedVolume;

    estimatedVolume = estimateParaboloidVolume(diameter, depth, numPoints);

    assert(abs(estimatedVolume - expectedVolume) <= tolerance, ...
        'Test failed: The estimated volume is outside the acceptable tolerance range.');

    disp('Test passed: The estimated volume is within the acceptable tolerance range.');
end

