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

assert(length(T) >= 25);

T(1) = (y(24)-params(14)*y(3))^(-params(7));
T(2) = params(16)/2;
T(3) = 1+y(29)*(3*y(29)/y(6)-4)/y(6);
T(4) = params(3)*y(62)/y(33);
T(5) = params(16)*T(4)*y(67)*y(65);
T(6) = 1-y(61)/y(29);
T(7) = T(5)*T(6);
T(8) = (y(61)/y(29))^2;
T(9) = y(5)^params(6);
T(10) = y(52)*params(11)*T(9);
T(11) = y(25)^(1-params(6));
T(12) = y(29)/y(6);
T(13) = 1-T(2)*(T(12)-1)^2;
T(14) = (y(23)-params(14)*y(2))^(-params(7));
T(15) = y(62)/y(33)*params(3)*params(20)*y(60)/y(27);
T(16) = T(15)*y(63);
T(17) = y(27)^(1-params(34));
T(18) = params(32)*y(43)^params(33);
T(19) = y(27)^(-params(34));
T(20) = params(20)/2*(y(36)-(steady_state(17)))^2;
T(21) = y(10)^params(17);
T(22) = (steady_state(18))*(y(36)/(steady_state(17)))^params(19);
T(23) = (y(27)/(steady_state(8)))^params(18);
T(24) = T(22)*T(23);
T(25) = T(24)^(1-params(17));

end
