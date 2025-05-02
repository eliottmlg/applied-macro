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

assert(length(T) >= 97);

T = credit_NK.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(86) = getPowerDeriv(y(24)-params(12)*y(3),(-params(5)),2);
T(87) = (-params(12))*T(86);
T(88) = (-((-(params(2)*y(69)))*(y(36)+y(36))))/(y(36)*y(36)*y(36)*y(36));
T(89) = y(36)*y(34)*y(36)*y(34)*y(36)*y(34)*y(36)*y(34);
T(90) = getPowerDeriv(y(50)/(y(36)*y(34)),(-params(37)),2);
T(91) = getPowerDeriv(y(49)/(y(36)*y(34)),(-params(36)),2);
T(92) = getPowerDeriv(y(23)-params(12)*y(2),(-params(5)),2);
T(93) = (-params(12))*T(92);
T(94) = params(29)*getPowerDeriv(y(40),params(30),2);
T(95) = getPowerDeriv(y(27),1-params(31),2);
T(96) = getPowerDeriv(T(23),1/(params(30)-1),2);
T(97) = getPowerDeriv(T(28),1-params(15),2);

end
