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

T = credit_NK_mk_0_2.static_resid_tt(T, y, x, params);

T(16) = getPowerDeriv(y(8),1-params(35),1);
T(17) = getPowerDeriv(y(23)*params(32)*T(6)/(params(34)*params(33)),1/(params(34)-1),1);
T(18) = getPowerDeriv(T(14),1-params(16),1);
T(19) = params(33)*getPowerDeriv(y(24),params(34),1);

end
