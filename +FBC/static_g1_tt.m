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

<<<<<<< HEAD:+SLBnum/static_g1_tt.m
assert(length(T) >= 20);
=======
assert(length(T) >= 4);
>>>>>>> a45dbe56eb9dca555a0f7348b3fd1749651a8af5:+FBC/static_g1_tt.m

T = FBC.static_resid_tt(T, y, x, params);

<<<<<<< HEAD:+SLBnum/static_g1_tt.m
T(17) = getPowerDeriv(y(7),1-params(31),1);
T(18) = getPowerDeriv((y(19)*params(28)*T(9)+y(32)*params(41))/(params(29)*params(30)),1/(params(30)-1),1);
T(19) = getPowerDeriv(T(15),1-params(15),1);
T(20) = params(29)*getPowerDeriv(y(20),params(30),1);
=======
>>>>>>> a45dbe56eb9dca555a0f7348b3fd1749651a8af5:+FBC/static_g1_tt.m

end
