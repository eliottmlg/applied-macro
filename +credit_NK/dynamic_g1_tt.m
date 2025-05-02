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

assert(length(T) >= 85);

T = credit_NK.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(33) = (-y(22))/(y(1)*y(1));
T(34) = 1/y(1);
T(35) = getPowerDeriv(y(23)-params(12)*y(2),(-params(5)),1);
T(36) = getPowerDeriv(y(24)-params(12)*y(3),(-params(5)),1);
T(37) = getPowerDeriv(y(25),1-params(4),1);
T(38) = y(25)*(1+params(10)*y(32))*y(25)*(1+params(10)*y(32));
T(39) = (-y(27))/(y(4)*y(4));
T(40) = (-(y(65)*y(67)*params(1)*params(18)/y(31)))/(y(27)*y(27));
T(41) = y(68)*T(40);
T(42) = getPowerDeriv(y(27),(-params(31)),1);
T(43) = getPowerDeriv(y(27),1-params(31),1);
T(44) = y(39)*params(28)*T(43)/(params(29)*params(30));
T(45) = getPowerDeriv(T(23),1/(params(30)-1),1);
T(46) = 1/(steady_state(7))*getPowerDeriv(y(27)/(steady_state(7)),params(16),1);
T(47) = T(26)*T(46);
T(48) = getPowerDeriv(T(28),1-params(15),1);
T(49) = 1/y(4);
T(50) = y(67)*params(1)*params(18)/y(31)/y(27);
T(51) = y(68)*T(50);
T(52) = getPowerDeriv(y(5),params(4),1);
T(53) = y(55)*params(9)*T(52);
T(54) = y(6)*y(29)*(-(3*y(29)))/(y(6)*y(6))-y(29)*(3*y(29)/y(6)-4);
T(55) = (-y(29))/(y(6)*y(6));
T(56) = 3*y(29)/y(6)-4+y(29)*3/y(6);
T(57) = (-y(66))/(y(29)*y(29));
T(58) = 2*y(66)/y(29);
T(59) = T(57)*T(58);
T(60) = 1/y(6);
T(61) = 1/y(29);
T(62) = T(58)*T(61);
T(63) = (-y(30))/(y(7)*y(7));
T(64) = 1/y(7);
T(65) = (-(params(1)*y(67)))/(y(31)*y(31));
T(66) = params(14)*y(70)*y(74)*T(65);
T(67) = y(65)*(-(y(67)*params(1)*params(18)))/(y(31)*y(31))/y(27);
T(68) = y(68)*T(67);
T(69) = params(1)/y(31);
T(70) = params(14)*y(70)*y(74)*T(69);
T(71) = y(65)*params(1)*params(18)/y(31)/y(27);
T(72) = y(68)*T(71);
T(73) = (-(y(36)*y(50)))/(y(36)*y(34)*y(36)*y(34));
T(74) = getPowerDeriv(y(50)/(y(36)*y(34)),(-params(37)),1);
T(75) = (-(y(36)*y(49)))/(y(36)*y(34)*y(36)*y(34));
T(76) = getPowerDeriv(y(49)/(y(36)*y(34)),(-params(36)),1);
T(77) = (steady_state(15))*1/(steady_state(14))*getPowerDeriv(y(34)/(steady_state(14)),params(17),1);
T(78) = 1/y(34);
T(79) = getPowerDeriv(y(8),params(15),1);
T(80) = (-(params(2)*y(69)))/(y(36)*y(36));
T(81) = (-(y(50)*y(34)))/(y(36)*y(34)*y(36)*y(34));
T(82) = (-(y(34)*y(49)))/(y(36)*y(34)*y(36)*y(34));
T(83) = params(2)/y(36);
T(84) = params(29)*getPowerDeriv(y(40),params(30),1);
T(85) = 1/(y(36)*y(34));

end
