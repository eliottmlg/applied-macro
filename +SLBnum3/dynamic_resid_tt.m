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

T(1) = (y(24)-params(7)*y(3))^(-params(5));
T(2) = params(15)/2;
T(3) = 1+y(29)*(3*y(29)/y(6)-4)/y(6);
T(4) = params(1)*y(66)/y(31);
T(5) = params(15)*T(4)*y(72)*y(69);
T(6) = 1-y(65)/y(29);
T(7) = T(5)*T(6);
T(8) = (y(65)/y(29))^2;
T(9) = y(43)^(-params(26));
T(10) = y(5)^params(4);
T(11) = y(53)*params(8)*T(10);
T(12) = y(25)^(1-params(4));
T(13) = y(29)/y(6);
T(14) = 1-T(2)*(T(13)-1)^2;
T(15) = (y(23)-params(7)*y(2))^(-params(5));
T(16) = y(21)/y(45);
T(17) = y(64)*y(66)*params(1)*params(10)/y(31)/y(27);
T(18) = y(68)*T(17);
T(19) = y(40)^params(24);
T(20) = y(27)^(-params(22));
T(21) = y(27)^(1-params(22));
T(22) = params(10)/2*(y(35)-(steady_state(15)))^2;
T(23) = y(8)^params(13);
T(24) = (steady_state(16))*(y(35)/(steady_state(15)))^params(11);
T(25) = (y(27)/(steady_state(7)))^params(12);
T(26) = T(24)*T(25);
T(27) = T(26)^(1-params(13));

end
