function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 25);

T(1) = (y(27)-params(13)*y(3))^(-params(6));
T(2) = params(15)/2;
T(3) = 1+y(32)*(3*y(32)/y(6)-4)/y(6);
T(4) = params(2)*y(68)/y(36);
T(5) = params(15)*T(4)*y(73)*y(71);
T(6) = 1-y(67)/y(32);
T(7) = T(5)*T(6);
T(8) = (y(67)/y(32))^2;
T(9) = y(5)^params(5);
T(10) = y(56)*params(10)*T(9);
T(11) = y(28)^(1-params(5));
T(12) = y(32)/y(6);
T(13) = 1-T(2)*(T(12)-1)^2;
T(14) = (y(26)-params(13)*y(2))^(-params(6));
T(15) = y(68)/y(36)*params(2)*params(21)*y(66)/y(30);
T(16) = T(15)*y(69);
T(17) = y(30)^(1-params(35));
T(18) = params(33)*y(46)^params(34);
T(19) = y(30)^(-params(35));
T(20) = params(21)/2*(y(39)-(steady_state(17)))^2;
T(21) = y(10)^params(16);
T(22) = (steady_state(18))*(y(39)/(steady_state(17)))^params(18);
T(23) = (y(30)/(steady_state(8)))^params(17);
T(24) = T(22)*T(23);
T(25) = T(24)^(1-params(16));

end
