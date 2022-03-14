function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

	% Create New Figure
	figure; hold on;


	plot(X(find(y==1), 2), X(find(y==1), 3), "r+", 'MarkerSize', 10);

	plot(X(find(y==0), 2), X(find(y==0), 3), "bo", 'MarkerSize', 10);

	set(gca, 'linewidth', 2, 'fontsize', 22);
	xlabel('x1'); % Set the x-axis label
	ylabel('x2'); % Set the y-axis label
	legend('y=1', 'y=0')

	hold off;

end
