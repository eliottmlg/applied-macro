function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
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

assert(length(T) >= 16);

T(1) = (y(2)-y(2)*params(9))^(-params(4));
T(2) = y(6)^params(3);
T(3) = y(29)*params(8)*T(2);
T(4) = y(3)^(1-params(3));
T(5) = params(27)*y(15)^params(28);
T(6) = y(5)^(-params(29));
T(7) = y(5)^(1-params(29));
T(8) = (y(9)-(y(9)))^2;
T(9) = y(10)^params(12);
T(10) = y(9)/(y(9));
T(11) = T(10)^params(15);
T(12) = (y(10))*T(11);
T(13) = y(5)/(y(5));
T(14) = T(13)^params(13);
T(15) = T(12)*T(14);
T(16) = T(15)^(1-params(12));

end
