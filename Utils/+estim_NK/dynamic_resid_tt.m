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

assert(length(T) >= 29);

T(1) = (y(14)-params(9)*y(1))^(-params(4));
T(2) = params(1)*y(51)/y(23);
T(3) = params(11)/2;
T(4) = 1+y(19)*(3*y(19)/y(4)-4)/y(4);
T(5) = params(11)*T(2)*y(54)*y(52);
T(6) = 1-y(49)/y(19);
T(7) = T(5)*T(6);
T(8) = (y(49)/y(19))^2;
T(9) = y(3)^params(3);
T(10) = y(41)*params(8)*T(9);
T(11) = y(15)^(1-params(3));
T(12) = y(19)/y(4);
T(13) = 1-T(3)*(T(12)-1)^2;
T(14) = y(48)*y(51)*params(1)*params(16)/y(23)/y(17);
T(15) = T(14)*y(50);
T(16) = params(27)*y(27)^params(28);
T(17) = y(17)^(-params(29));
T(18) = y(17)^(1-params(29));
T(19) = (y(21)-(steady_state(9)))^2;
T(20) = y(5)^params(12);
T(21) = y(21)/(steady_state(9));
T(22) = (steady_state(10))*T(21)^params(15);
T(23) = y(17)/(steady_state(5));
T(24) = T(23)^params(13);
T(25) = T(22)*T(24);
T(26) = T(25)^(1-params(12));
T(27) = T(20)*T(26);
T(28) = y(17)/y(2);
T(29) = T(28)^params(14);

end
