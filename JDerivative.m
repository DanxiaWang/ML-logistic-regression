function [d] = JDerivative(theta, X, y)

	m = length(y);

	e = error(theta, X, y);

	steps = X .* e;

	d = (sum(steps) / m)';

end
