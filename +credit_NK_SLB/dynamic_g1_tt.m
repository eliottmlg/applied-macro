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

assert(length(T) >= 69);

T = credit_NK_SLB.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(32) = (-y(21))/(y(1)*y(1));
T(33) = 1/y(1);
T(34) = getPowerDeriv(y(22)-params(12)*y(2),(-params(5)),1);
T(35) = getPowerDeriv(y(23)-params(12)*y(3),(-params(5)),1);
T(36) = getPowerDeriv(y(24),1-params(4),1);
T(37) = y(24)*(1+params(10)*y(33))*y(24)*(1+params(10)*y(33));
T(38) = (-y(26))/(y(4)*y(4));
T(39) = getPowerDeriv(y(26),1-params(33),1);
T(40) = y(41)*params(30)*T(39)/(params(32)*params(31));
T(41) = getPowerDeriv(T(20),1/(params(32)-1),1);
T(42) = getPowerDeriv(y(26),(-params(33)),1);
T(43) = 1/(steady_state(7))*getPowerDeriv(y(26)/(steady_state(7)),params(16),1);
T(44) = T(25)*T(43);
T(45) = getPowerDeriv(T(27),1-params(15),1);
T(46) = 1/y(4);
T(47) = getPowerDeriv(y(5),params(4),1);
T(48) = y(51)*params(9)*T(47);
T(49) = y(6)*y(28)*(-(3*y(28)))/(y(6)*y(6))-y(28)*(3*y(28)/y(6)-4);
T(50) = (-y(28))/(y(6)*y(6));
T(51) = 3*y(28)/y(6)-4+y(28)*3/y(6);
T(52) = (-y(60))/(y(28)*y(28));
T(53) = 2*y(60)/y(28);
T(54) = T(52)*T(53);
T(55) = 1/y(6);
T(56) = 1/y(28);
T(57) = T(53)*T(56);
T(58) = (-y(31))/(y(9)*y(9));
T(59) = 1/y(9);
T(60) = params(1)*(-y(61))/(y(32)*y(32));
T(61) = params(14)*y(64)*y(66)*T(60);
T(62) = params(1)*params(18)*(-y(61))/(y(32)*y(32));
T(63) = params(1)*1/y(32);
T(64) = params(14)*y(64)*y(66)*T(63);
T(65) = params(18)/2*2*(y(35)-(steady_state(16)));
T(66) = (steady_state(17))*1/(steady_state(16))*getPowerDeriv(y(35)/(steady_state(16)),params(17),1);
T(67) = 1/y(35);
T(68) = getPowerDeriv(y(10),params(15),1);
T(69) = params(31)*getPowerDeriv(y(42),params(32),1);

end
