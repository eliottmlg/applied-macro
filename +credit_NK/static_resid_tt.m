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

T(1) = (y(4)-y(4)*params(12))^(-params(5));
T(2) = y(8)^params(4);
T(3) = y(30)*params(9)*T(2);
T(4) = y(5)^(1-params(4));
T(5) = (y(3)-params(12)*y(3))^(-params(5));
T(6) = params(30)*y(20)^params(31);
T(7) = y(7)^(-params(32));
T(8) = y(7)^(1-params(32));
T(9) = (y(14)-(y(14)))^2;
T(10) = y(15)^params(15);
T(11) = (y(14)/(y(14)))^params(17);
T(12) = (y(15))*T(11);
T(13) = (y(7)/(y(7)))^params(16);
T(14) = T(12)*T(13);
T(15) = T(14)^(1-params(15));

end
