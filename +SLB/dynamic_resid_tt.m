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

T(1) = (y(22)-params(12)*y(3))^(-params(5));
T(2) = params(14)/2;
T(3) = 1+y(27)*(3*y(27)/y(6)-4)/y(6);
T(4) = params(1)*y(61)/y(29);
T(5) = params(14)*T(4)*y(66)*y(64);
T(6) = 1-y(60)/y(27);
T(7) = T(5)*T(6);
T(8) = (y(60)/y(27))^2;
T(9) = params(37)/y(34);
T(10) = y(58)*T(9);
T(11) = (y(47)/y(32))^(-params(38));
T(12) = y(5)^params(4);
T(13) = y(50)*params(9)*T(12);
T(14) = y(23)^(1-params(4));
T(15) = y(27)/y(6);
T(16) = 1-T(2)*(T(15)-1)^2;
T(17) = (y(21)-params(12)*y(2))^(-params(5));
T(18) = y(59)*y(61)*params(1)*params(18)/y(29)/y(25);
T(19) = y(62)*T(18);
T(20) = params(29)*y(38)^params(30);
T(21) = y(25)^(-params(31));
T(22) = y(25)^(1-params(31));
T(23) = y(37)*params(28)*T(22)/(params(29)*params(30));
T(24) = (y(32)-(steady_state(14)))^2;
T(25) = y(8)^params(15);
T(26) = (steady_state(15))*(y(32)/(steady_state(14)))^params(17);
T(27) = (y(25)/(steady_state(7)))^params(16);
T(28) = T(26)*T(27);
T(29) = T(28)^(1-params(15));
T(30) = y(25)/y(4);
T(31) = y(20)/y(1);
T(32) = y(28)/y(7);

end
