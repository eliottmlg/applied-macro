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

assert(length(T) >= 79);

T = SLB.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(33) = (-y(20))/(y(1)*y(1));
T(34) = 1/y(1);
T(35) = getPowerDeriv(y(21)-params(12)*y(2),(-params(5)),1);
T(36) = getPowerDeriv(y(22)-params(12)*y(3),(-params(5)),1);
T(37) = getPowerDeriv(y(23),1-params(4),1);
T(38) = y(23)*(1+params(10)*y(30))*y(23)*(1+params(10)*y(30));
T(39) = (-y(25))/(y(4)*y(4));
T(40) = (-(y(59)*y(61)*params(1)*params(18)/y(29)))/(y(25)*y(25));
T(41) = y(62)*T(40);
T(42) = getPowerDeriv(y(25),(-params(31)),1);
T(43) = getPowerDeriv(y(25),1-params(31),1);
T(44) = y(37)*params(28)*T(43)/(params(29)*params(30));
T(45) = getPowerDeriv(T(23),1/(params(30)-1),1);
T(46) = 1/(steady_state(7))*getPowerDeriv(y(25)/(steady_state(7)),params(16),1);
T(47) = T(26)*T(46);
T(48) = getPowerDeriv(T(28),1-params(15),1);
T(49) = 1/y(4);
T(50) = y(61)*params(1)*params(18)/y(29)/y(25);
T(51) = y(62)*T(50);
T(52) = getPowerDeriv(y(5),params(4),1);
T(53) = y(50)*params(9)*T(52);
T(54) = y(6)*y(27)*(-(3*y(27)))/(y(6)*y(6))-y(27)*(3*y(27)/y(6)-4);
T(55) = (-y(27))/(y(6)*y(6));
T(56) = 3*y(27)/y(6)-4+y(27)*3/y(6);
T(57) = (-y(60))/(y(27)*y(27));
T(58) = 2*y(60)/y(27);
T(59) = T(57)*T(58);
T(60) = 1/y(6);
T(61) = 1/y(27);
T(62) = T(58)*T(61);
T(63) = (-y(28))/(y(7)*y(7));
T(64) = 1/y(7);
T(65) = (-(params(1)*y(61)))/(y(29)*y(29));
T(66) = params(14)*y(64)*y(66)*T(65);
T(67) = y(59)*(-(y(61)*params(1)*params(18)))/(y(29)*y(29))/y(25);
T(68) = y(62)*T(67);
T(69) = params(1)/y(29);
T(70) = params(14)*y(64)*y(66)*T(69);
T(71) = y(59)*params(1)*params(18)/y(29)/y(25);
T(72) = y(62)*T(71);
T(73) = (-y(47))/(y(32)*y(32));
T(74) = getPowerDeriv(y(47)/y(32),(-params(38)),1);
T(75) = (steady_state(15))*1/(steady_state(14))*getPowerDeriv(y(32)/(steady_state(14)),params(17),1);
T(76) = 1/y(32);
T(77) = getPowerDeriv(y(8),params(15),1);
T(78) = y(58)*(-params(37))/(y(34)*y(34));
T(79) = params(29)*getPowerDeriv(y(38),params(30),1);

end
