function [theta, costs] = gradientDescent(theta, X, y, alpha, numIter)

	costs = [J(theta, X, y)];

	for i=1:numIter
	
		theta = theta - (alpha * JDerivative(theta, X, y));

		costs = [costs J(theta, X, y)];
	end

end
