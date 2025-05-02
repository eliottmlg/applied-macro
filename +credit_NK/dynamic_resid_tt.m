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

assert(length(T) >= 32);

T(1) = (y(24)-params(12)*y(3))^(-params(5));
T(2) = params(2)*y(69)/y(36);
T(3) = params(14)/2;
T(4) = 1+y(29)*(3*y(29)/y(6)-4)/y(6);
T(5) = params(1)*y(67)/y(31);
T(6) = params(14)*T(5)*y(74)*y(70);
T(7) = 1-y(66)/y(29);
T(8) = T(6)*T(7);
T(9) = (y(66)/y(29))^2;
T(10) = (y(50)/(y(36)*y(34)))^(-params(37));
T(11) = (y(49)/(y(36)*y(34)))^(-params(36));
T(12) = y(5)^params(4);
T(13) = y(55)*params(9)*T(12);
T(14) = y(25)^(1-params(4));
T(15) = y(29)/y(6);
T(16) = 1-T(3)*(T(15)-1)^2;
T(17) = (y(23)-params(12)*y(2))^(-params(5));
T(18) = y(65)*y(67)*params(1)*params(18)/y(31)/y(27);
T(19) = y(68)*T(18);
T(20) = params(29)*y(40)^params(30);
T(21) = y(27)^(-params(31));
T(22) = y(27)^(1-params(31));
T(23) = y(39)*params(28)*T(22)/(params(29)*params(30));
T(24) = (y(34)-(steady_state(14)))^2;
T(25) = y(8)^params(15);
T(26) = (steady_state(15))*(y(34)/(steady_state(14)))^params(17);
T(27) = (y(27)/(steady_state(7)))^params(16);
T(28) = T(26)*T(27);
T(29) = T(28)^(1-params(15));
T(30) = y(27)/y(4);
T(31) = y(22)/y(1);
T(32) = y(30)/y(7);

end
