function [cost] = J(theta, X, y)
  m = length(y);
  h_x = h(theta, X);
  cost = sum(-y'*log(h_x)-(1-y')*log(1-h_x))./m;
end