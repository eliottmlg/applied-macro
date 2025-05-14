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

assert(length(T) >= 26);

T(1) = (y(25)-params(12)*y(3))^(-params(5));
T(2) = params(14)/2;
T(3) = 1+y(30)*(3*y(30)/y(6)-4)/y(6);
T(4) = params(1)*y(67)/y(32);
T(5) = params(14)*T(4)*y(73)*y(70);
T(6) = 1-y(66)/y(30);
T(7) = T(5)*T(6);
T(8) = (y(66)/y(30))^2;
T(9) = y(50)^(-params(38));
T(10) = y(5)^params(4);
T(11) = y(54)*params(9)*T(10);
T(12) = y(26)^(1-params(4));
T(13) = y(30)/y(6);
T(14) = 1-T(2)*(T(13)-1)^2;
T(15) = (y(24)-params(12)*y(2))^(-params(5));
T(16) = y(65)*y(67)*params(1)*params(18)/y(32)/y(28);
T(17) = y(68)*T(16);
T(18) = params(29)*y(41)^params(30);
T(19) = y(28)^(-params(31));
T(20) = y(28)^(1-params(31));
T(21) = (y(35)-(steady_state(14)))^2;
T(22) = y(8)^params(15);
T(23) = (steady_state(15))*(y(35)/(steady_state(14)))^params(17);
T(24) = (y(28)/(steady_state(7)))^params(16);
T(25) = T(23)*T(24);
T(26) = T(25)^(1-params(15));

end
