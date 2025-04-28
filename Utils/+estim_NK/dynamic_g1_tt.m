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

assert(length(T) >= 35);

T = estim_NK.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(30) = getPowerDeriv(y(14)-params(9)*y(1),(-params(4)),1);
T(31) = getPowerDeriv(T(28),params(14),1);
T(32) = getPowerDeriv(y(17),1-params(29),1);
T(33) = getPowerDeriv(y(26)*params(26)*T(18)/(params(27)*params(28)),1/(params(28)-1),1);
T(34) = getPowerDeriv(T(25),1-params(12),1);
T(35) = params(27)*getPowerDeriv(y(27),params(28),1);

end
