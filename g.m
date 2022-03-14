function [g_x] = g(X)
  g_x = 1./(1+exp(-X));
end