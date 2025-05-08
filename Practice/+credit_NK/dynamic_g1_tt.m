function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 33);

T = credit_NK.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(28) = getPowerDeriv(y(20)-params(12)*y(2),(-params(5)),1);
T(29) = getPowerDeriv(y(21)-params(12)*y(3),(-params(5)),1);
T(30) = getPowerDeriv(y(24),1-params(31),1);
T(31) = getPowerDeriv(y(36)*params(28)*T(19)/(params(29)*params(30)),1/(params(30)-1),1);
T(32) = getPowerDeriv(T(26),1-params(15),1);
T(33) = params(29)*getPowerDeriv(y(37),params(30),1);

end
