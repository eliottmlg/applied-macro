function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
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

assert(length(T) >= 21);

T = SLBnum3.static_resid_tt(T, y, x, params);

T(18) = getPowerDeriv(y(7),1-params(22),1);
T(19) = getPowerDeriv(y(19)*params(21)*T(10)/(params(23)*params(24)*(1+y(26))),1/(params(24)-1),1);
T(20) = getPowerDeriv(T(16),1-params(13),1);
T(21) = getPowerDeriv(y(20),params(24),1);

end
