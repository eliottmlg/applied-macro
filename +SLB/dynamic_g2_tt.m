function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 88);

T = SLB.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(80) = getPowerDeriv(y(22)-params(12)*y(3),(-params(5)),2);
T(81) = (-params(12))*T(80);
T(82) = getPowerDeriv(y(47)/y(32),(-params(38)),2);
T(83) = getPowerDeriv(y(21)-params(12)*y(2),(-params(5)),2);
T(84) = (-params(12))*T(83);
T(85) = params(29)*getPowerDeriv(y(38),params(30),2);
T(86) = getPowerDeriv(y(25),1-params(31),2);
T(87) = getPowerDeriv(T(23),1/(params(30)-1),2);
T(88) = getPowerDeriv(T(28),1-params(15),2);

end
