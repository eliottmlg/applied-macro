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

assert(length(T) >= 22);

T = SLB.static_resid_tt(T, y, x, params);

T(17) = getPowerDeriv(y(7),1-params(31),1);
T(18) = getPowerDeriv(y(19)*params(28)*T(9)/(params(29)*params(30)),1/(params(30)-1),1);
T(19) = getPowerDeriv(T(15),1-params(15),1);
T(20) = getPowerDeriv(y(29)/y(14),(-params(38)),1);
T(21) = 1/y(14);
T(22) = params(29)*getPowerDeriv(y(20),params(30),1);

end
