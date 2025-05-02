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

assert(length(T) >= 28);

T(1) = (y(26)-params(12)*y(3))^(-params(5));
T(2) = params(2)*y(69)/y(38);
T(3) = params(14)/2;
T(4) = 1+y(31)*(3*y(31)/y(6)-4)/y(6);
T(5) = params(1)*y(67)/y(33);
T(6) = params(14)*T(5)*y(74)*y(70);
T(7) = 1-y(66)/y(31);
T(8) = T(6)*T(7);
T(9) = (y(66)/y(31))^2;
T(10) = (y(52)/(y(38)*y(36)))^(-params(37));
T(11) = (y(51)/(y(38)*y(36)))^(-params(36));
T(12) = y(5)^params(4);
T(13) = y(55)*params(9)*T(12);
T(14) = y(27)^(1-params(4));
T(15) = y(31)/y(6);
T(16) = 1-T(3)*(T(15)-1)^2;
T(17) = (y(25)-params(12)*y(2))^(-params(5));
T(18) = y(65)*y(67)*params(1)*params(18)/y(33)/y(29);
T(19) = y(68)*T(18);
T(20) = params(29)*y(42)^params(30);
T(21) = y(29)^(-params(31));
T(22) = y(29)^(1-params(31));
T(23) = (y(36)-(steady_state(14)))^2;
T(24) = y(8)^params(15);
T(25) = (steady_state(15))*(y(36)/(steady_state(14)))^params(17);
T(26) = (y(29)/(steady_state(7)))^params(16);
T(27) = T(25)*T(26);
T(28) = T(27)^(1-params(15));

end
