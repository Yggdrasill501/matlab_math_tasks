# First Task  
*The [CTYRSTEN](https://github.com/Yggdrasill501/octave_matlab_tasks/blob/main/Task_1/CTYRSTEN.m) function, which from the six edge lengths a,b,c,d,e, determines whether a quadrilateral exists, i.e. returns true or false*

First task I devided into multiple files

## File with fuction CTYRSTEN 
[CTYRSTEN](https://github.com/Yggdrasill501/matlab_math_tasks/blob/main/Task_1/CTYRSTEN.m)
```
function exists = CTYRSTEN(a, b, c, d, e, f)

    if (a + b + c > d) && (b + c + d > a) && (c + d + a > b) && (d + a + b > c) && ...
       (a + b + e > f) && (b + e + f > a) && (e + f + a > b) && (f + a + b > e) && ...
       (a + c + e > f) && (c + e + f > a) && (e + f + a > c) && (f + a + c > e) && ...
       (b + c + e > f) && (c + e + f > b) && (e + f + b > c) && (f + b + c > e) && ...
       (a + d + e > f) && (d + e + f > a) && (e + f + a > d) && (f + a + d > e) && ...
       (b + d + e > f) && (d + e + f > b) && (e + f + b > d) && (f + b + d > e)
        exists = true;
    else
        exists = false;
    end
end
```

Where the lengths of any three edges must be greater than the length of the fourth edge, and if that is possible it return TRUE, in the other case FALSE

## File with Result run 
[Result](https://github.com/Yggdrasill501/matlab_math_tasks/blob/main/Task_1/result.m)

```
result = CTYRSTEN(1, 2, 3, 4, 5, 6);
disp(result);
```

Simple result file that display the the result.

## Test file
[Test Ctyrsten](https://github.com/Yggdrasill501/matlab_math_tasks/blob/main/Task_1/test_ctyrsten.m)

```
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
```

Where each test as the comments suggest add test for every edge case that can happen with CTRYRSTEN function.
