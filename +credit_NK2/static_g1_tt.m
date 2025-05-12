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

assert(length(T) >= 19);

T = credit_NK2.static_resid_tt(T, y, x, params);

T(16) = getPowerDeriv(y(7),1-params(31),1);
T(17) = getPowerDeriv(y(19)*params(28)*T(8)/(params(29)*params(30)),1/(params(30)-1),1);
T(18) = getPowerDeriv(T(14),1-params(15),1);
T(19) = params(29)*getPowerDeriv(y(20),params(30),1);

end
