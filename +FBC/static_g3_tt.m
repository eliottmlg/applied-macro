function T = static_g3_tt(T, y, x, params)
% function T = static_g3_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

<<<<<<< HEAD:+SLBnum/static_g3_tt.m
assert(length(T) >= 20);
=======
assert(length(T) >= 4);
>>>>>>> a45dbe56eb9dca555a0f7348b3fd1749651a8af5:+FBC/static_g3_tt.m

T = FBC.static_g2_tt(T, y, x, params);


end
