diameter = 10;
depth = 5;
numPoints = 1000000;

for i = 1:5
    estimatedVolume = estimateParaboloidVolume(diameter, depth, numPoints);
    fprintf('Trial %d: Estimated Volume = %f\n', i, estimatedVolume);
end