function plotCost(costs)

	figure; % open a new figure window
	plot(0:length(costs)-1, costs, 'ro', 'MarkerSize', 10);
	set(gca, 'linewidth', 2, 'fontsize', 22);
	xlabel('iterations'); % Set the x-axis label
	ylabel('cost'); % Set the y-axis label

end
