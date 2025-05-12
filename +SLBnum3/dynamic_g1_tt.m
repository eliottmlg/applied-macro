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

assert(length(T) >= 34);

T = SLBnum3.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(28) = getPowerDeriv(y(23)-params(7)*y(2),(-params(5)),1);
T(29) = getPowerDeriv(y(24)-params(7)*y(3),(-params(5)),1);
T(30) = getPowerDeriv(y(27),1-params(22),1);
T(31) = getPowerDeriv(y(39)*params(21)*T(21)/(params(23)*params(24)*(1+y(46))),1/(params(24)-1),1);
T(32) = getPowerDeriv(T(26),1-params(13),1);
T(33) = (-(params(1)*y(66)))/(y(31)*y(31));
T(34) = getPowerDeriv(y(40),params(24),1);

end
