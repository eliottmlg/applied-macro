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

assert(length(T) >= 31);

T(1) = (y(23)-params(12)*y(3))^(-params(5));
T(2) = params(14)/2;
T(3) = 1+y(28)*(3*y(28)/y(6)-4)/y(6);
T(4) = params(1)*y(61)/y(32);
T(5) = params(14)*T(4)*y(66)*y(64);
T(6) = 1-y(60)/y(28);
T(7) = T(5)*T(6);
T(8) = (y(60)/y(28))^2;
T(9) = y(5)^params(4);
T(10) = y(51)*params(9)*T(9);
T(11) = y(24)^(1-params(4));
T(12) = y(28)/y(6);
T(13) = 1-T(2)*(T(12)-1)^2;
T(14) = (y(22)-params(12)*y(2))^(-params(5));
T(15) = y(61)/y(32)*params(1)*params(18);
T(16) = y(59)/y(26);
T(17) = T(15)*T(16);
T(18) = T(17)*y(62);
T(19) = y(26)^(1-params(33));
T(20) = y(41)*params(30)*T(19)/(params(32)*params(31));
T(21) = params(31)*y(42)^params(32);
T(22) = y(26)^(-params(33));
T(23) = params(18)/2*(y(35)-(steady_state(16)))^2;
T(24) = y(10)^params(15);
T(25) = (steady_state(17))*(y(35)/(steady_state(16)))^params(17);
T(26) = (y(26)/(steady_state(7)))^params(16);
T(27) = T(25)*T(26);
T(28) = T(27)^(1-params(15));
T(29) = y(26)/y(4);
T(30) = y(21)/y(1);
T(31) = y(31)/y(9);

end
