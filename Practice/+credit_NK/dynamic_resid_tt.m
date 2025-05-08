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

assert(length(T) >= 27);

T(1) = (y(21)-params(12)*y(3))^(-params(5));
T(2) = params(14)/2;
T(3) = 1+y(26)*(3*y(26)/y(6)-4)/y(6);
T(4) = params(1)*y(63)/y(28);
T(5) = params(14)*T(4)*y(68)*y(66);
T(6) = 1-y(62)/y(26);
T(7) = T(5)*T(6);
T(8) = (y(62)/y(26))^2;
T(9) = y(5)^params(4);
T(10) = y(53)*params(9)*T(9);
T(11) = y(22)^(1-params(4));
T(12) = y(26)/y(6);
T(13) = 1-T(2)*(T(12)-1)^2;
T(14) = (y(20)-params(12)*y(2))^(-params(5));
T(15) = y(61)*y(63)*params(1)*params(18)/y(28)/y(24);
T(16) = T(15)*y(64);
T(17) = params(29)*y(37)^params(30);
T(18) = y(24)^(-params(31));
T(19) = y(24)^(1-params(31));
T(20) = (y(31)-(steady_state(14)))^2;
T(21) = y(8)^params(15);
T(22) = y(31)/(steady_state(14));
T(23) = (steady_state(15))*T(22)^params(17);
T(24) = y(24)/(steady_state(7));
T(25) = T(24)^params(16);
T(26) = T(23)*T(25);
T(27) = T(26)^(1-params(15));

end
