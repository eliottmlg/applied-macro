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

assert(length(T) >= 75);

T = policy_credit_NK.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(31) = (-y(21))/(y(1)*y(1));
T(32) = 1/y(1);
T(33) = getPowerDeriv(y(22)-params(12)*y(2),(-params(5)),1);
T(34) = getPowerDeriv(y(23)-params(12)*y(3),(-params(5)),1);
T(35) = getPowerDeriv(y(24),1-params(4),1);
T(36) = y(24)*(1+y(58)*params(10)*y(31))*y(24)*(1+y(58)*params(10)*y(31));
T(37) = (-y(26))/(y(4)*y(4));
T(38) = (-(y(59)*y(61)*params(1)*params(18)/y(30)))/(y(26)*y(26));
T(39) = y(62)*T(38);
T(40) = getPowerDeriv(y(26),(-params(33)),1);
T(41) = getPowerDeriv(y(26),1-params(33),1);
T(42) = y(38)*params(30)*T(41)/(params(31)*params(32));
T(43) = getPowerDeriv(T(20),1/(params(32)-1),1);
T(44) = 1/(steady_state(7))*getPowerDeriv(y(26)/(steady_state(7)),params(16),1);
T(45) = T(23)*T(44);
T(46) = getPowerDeriv(T(25),1-params(15),1);
T(47) = 1/y(4);
T(48) = y(61)*params(1)*params(18)/y(30)/y(26);
T(49) = y(62)*T(48);
T(50) = getPowerDeriv(y(5),params(4),1);
T(51) = y(49)*params(9)*T(50);
T(52) = y(6)*y(28)*(-(3*y(28)))/(y(6)*y(6))-y(28)*(3*y(28)/y(6)-4);
T(53) = (-y(28))/(y(6)*y(6));
T(54) = 3*y(28)/y(6)-4+y(28)*3/y(6);
T(55) = (-y(60))/(y(28)*y(28));
T(56) = 2*y(60)/y(28);
T(57) = T(55)*T(56);
T(58) = 1/y(6);
T(59) = 1/y(28);
T(60) = T(56)*T(59);
T(61) = (-y(29))/(y(7)*y(7));
T(62) = 1/y(7);
T(63) = (-(params(1)*y(61)))/(y(30)*y(30));
T(64) = params(14)*y(64)*y(66)*T(63);
T(65) = y(59)*(-(y(61)*params(1)*params(18)))/(y(30)*y(30))/y(26);
T(66) = y(62)*T(65);
T(67) = params(1)/y(30);
T(68) = params(14)*y(64)*y(66)*T(67);
T(69) = y(59)*params(1)*params(18)/y(30)/y(26);
T(70) = y(62)*T(69);
T(71) = (steady_state(15))*1/(steady_state(14))*getPowerDeriv(y(33)/(steady_state(14)),params(17),1);
T(72) = getPowerDeriv(y(8),params(15),1);
T(73) = params(31)*getPowerDeriv(y(39),params(32),1);
T(74) = (-y(40))/(y(9)*y(9));
T(75) = 1/y(9);

end
