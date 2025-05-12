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

assert(length(T) >= 17);

T(1) = (y(4)-y(4)*params(7))^(-params(5));
T(2) = y(23)^(-params(26));
T(3) = y(8)^params(4);
T(4) = y(33)*params(8)*T(3);
T(5) = y(5)^(1-params(4));
T(6) = (y(3)-params(7)*y(3))^(-params(5));
T(7) = y(1)/y(25);
T(8) = y(20)^params(24);
T(9) = y(7)^(-params(22));
T(10) = y(7)^(1-params(22));
T(11) = params(10)/2*(y(15)-(y(15)))^2;
T(12) = y(16)^params(13);
T(13) = (y(15)/(y(15)))^params(11);
T(14) = (y(16))*T(13);
T(15) = (y(7)/(y(7)))^params(12);
T(16) = T(14)*T(15);
T(17) = T(16)^(1-params(13));

end
