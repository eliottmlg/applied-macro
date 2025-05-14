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

assert(length(T) >= 15);

T(1) = (y(5)-y(5)*params(13))^(-params(6));
T(2) = y(9)^params(5);
T(3) = y(34)*params(10)*T(2);
T(4) = y(6)^(1-params(5));
T(5) = (y(4)-params(13)*y(4))^(-params(6));
T(6) = y(8)^(1-params(35));
T(7) = params(33)*y(24)^params(34);
T(8) = y(8)^(-params(35));
T(9) = params(21)/2*(y(17)-(y(17)))^2;
T(10) = y(18)^params(16);
T(11) = (y(17)/(y(17)))^params(18);
T(12) = (y(18))*T(11);
T(13) = (y(8)/(y(8)))^params(17);
T(14) = T(12)*T(13);
T(15) = T(14)^(1-params(16));

end
