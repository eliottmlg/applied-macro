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

assert(length(T) >= 77);

T = credit_NK_SLB.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(70) = getPowerDeriv(y(23)-params(12)*y(3),(-params(5)),2);
T(71) = (-params(12))*T(70);
T(72) = getPowerDeriv(y(22)-params(12)*y(2),(-params(5)),2);
T(73) = (-params(12))*T(72);
T(74) = getPowerDeriv(y(26),1-params(33),2);
T(75) = getPowerDeriv(T(20),1/(params(32)-1),2);
T(76) = params(31)*getPowerDeriv(y(42),params(32),2);
T(77) = getPowerDeriv(T(27),1-params(15),2);

end
