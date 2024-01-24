testRadius = 1;

try
    h = CYCLOID(testRadius);
    disp('CYCLOID function executed successfully.');

    X = get(h, 'XData');
    Y = get(h, 'YData');
    Z = get(h, 'ZData');
    if isequal(size(X), size(Y), size(Z))
        disp('Data arrays are of matching size.');
    else
        error('Data array sizes do not match.');
    end

    if strcmp(get(h, 'Type'), 'surface')
        disp('The plot is a surface plot.');
    else
        error('The plot is not a surface plot.');
    end

    ax = axis;
    expectedAxisLimits = [-3*testRadius, 3*testRadius, -3*testRadius, 3*testRadius, -3*testRadius, 3*testRadius];
    if isequal(ax, expectedAxisLimits)
        disp('Axes limits are as expected.');
    else
        error('Axes limits are not as expected.');
    end

catch err
    disp('Error occurred while executing CYCLOID function:');
    disp(err.message);
