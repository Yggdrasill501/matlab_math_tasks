% Test 1: Valid Quadrilateral
result1 = CTYRSTEN(3, 4, 5, 6, 7, 8);
disp(['Test 1 (Valid Quadrilateral): ', num2str(result1)]);

% Test 2: One Very Long Edge
result2 = CTYRSTEN(100, 2, 3, 4, 5, 6);
disp(['Test 2 (One Very Long Edge): ', num2str(result2)]);

% Test 3: Zero or Negative Length
result3 = CTYRSTEN(0, -1, 2, 3, 4, 5);
disp(['Test 3 (Zero or Negative Length): ', num2str(result3)]);

% Test 4: All Edges Equal
result4 = CTYRSTEN(5, 5, 5, 5, 5, 5);
disp(['Test 4 (All Edges Equal): ', num2str(result4)]);

% Test 5: Extremely Small Edges
result5 = CTYRSTEN(0.1, 0.1, 0.1, 0.1, 0.1, 100);
disp(['Test 5 (Extremely Small Edges): ', num2str(result5)]);

