clear; close all; clc
% Programming exercise 3

printf('Loading the data...\n');

[X, y] = loadData('data1.txt');

plotData(X, y);

printf('\nData loaded and plotted...\n');


printf('\nPress enter to move forward.\n');
pause;

printf('Checking if the function g works right...\n');

mat = [-2 -1 0; 1 2 3];
sig = g(mat);

if (!isequal(size(mat), size(sig)))
	warning('Function g does not respond in the input matrix dimensions\n');
end

printf('  Expected value for g(0) = 0.5\n');
printf('Calculated value for g(0) = %f\n', sig(1, 3));
printf('  Expected value for g(-1) = 0.268941\n');
printf('Calculated value for g(-1) = %f\n', sig(1, 2));
printf('  Expected value for g(2) = 0.880797\n');
printf('Calculated value for g(2) = %f\n', sig(2, 2));


printf('\nPress enter to move forward.\n');
pause;

printf('Checking if the function h works right...\n');

theta = [1; 2; 3];
printf('Using theta = [1; 2; 3] for tests\n');
printf('estimates = h(theta, X);\n');
estimates = h(theta, X);

printf('Expected length of estimates: 100\n');
printf('   Found length of estimates: %d\n', length(estimates));

printf('  Expected value of estimates(9): 0.988221\n');
printf('Calculated value of estimates(9): %f\n', estimates(9));

printf('\nPress enter to move forward.\n');
pause;

printf('Checking if the function J works right...\n');

printf('  Expected value of J(theta, X, y): 7.022305\n');
printf('Calculated value of J(theta, X, y): %f\n', J(theta, X, y));
printf('  Expected value of J([15; 1; 1], X, y): 9.266085\n');
printf('Calculated value of J([15; 1; 1], X, y): %f\n', J([15; 1; 1], X, y));

printf('\nPress enter to move forward.\n');
pause;

printf('Checking if the function JDerivative works right...\n');

printf('d = JDerivative(theta, X, y);\n');
d = JDerivative(theta, X, y);

printf('Expected length of d: 3\n');
printf('   Found length of d: %d\n', length(d));
printf('  Expected value of d(3): 1.249670\n');
printf('Calculated value of d(3): %f\n', d(3));

printf('\nPress enter to move forward.\n');
pause;

printf('Finding optimal values of theta using gradientDescent...\n');

alpha = 0.5;
maxIter = 400;

%  This function will return theta and the cost history
[theta, costs] = gradientDescent([0;0;0], X, y, alpha, maxIter);

plotCost(costs);
plotDecisionBoundary(theta, X, y);
printf('Minimized cost = %f\n', costs(end));


printf('\nPress enter to move forward.\n');
pause;

printf('Adding a third feature defined as x_3 = x_1 * x_2\n');

X = addNonLinearFeature(X);

printf('Running gradient descent again.\n');

[theta, costs] = gradientDescent([0;0;0;0], X, y, alpha, maxIter);
theta
plotCost(log(costs));
plotDecisionBoundary(theta, X, y);
printf('Minimized cost = %f\n', costs(end));
