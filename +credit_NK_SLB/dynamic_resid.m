function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = credit_NK_SLB.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(40, 1);
    residual(1) = (y(39)) - (y(54)*T(1));
    residual(2) = (params(4)*y(64)/y(39)*y(20)) - (1);
    residual(3) = (y(39)*y(26)) - (params(9)*y(25)^params(8));
    residual(4) = (y(56)*y(40)) - (1+y(56)*y(40)*T(2)*T(3)+T(7)*T(8));
    residual(5) = (y(27)) - (T(10)*T(11));
    residual(6) = (y(30)+y(31)) - (y(65)*y(55)*params(13)*y(28)/y(20)-y(25)*y(26)*params(12));
    residual(7) = (y(56)*y(29)*T(13)) - (y(28)-y(5)*(1-params(5)));
    residual(8) = (y(33)) - (y(54)*T(14));
    residual(9) = (1-y(34)) - (y(20)*T(4));
    residual(10) = ((1-y(34))*(y(65)*(1-params(5))+params(6)*y(66)*y(60)/y(28))+params(13)*y(55)*y(65)*y(34)) - (y(20)*y(40));
    residual(11) = (y(26)) - (y(27)*(1-params(6))*y(41)/(y(25)*(1+params(12)*y(34))));
residual(12) = 1-params(15)+params(15)*y(35)-params(20)*y(36)*(y(36)-(steady_state(17)))+T(16)*(y(63)-(steady_state(17)));
    residual(13) = ((y(42)*params(31)*T(17)/(params(33)*params(32)))^(1/(params(33)-1))) - (y(43));
    residual(14) = (y(41)) - (y(35)-T(18)-params(31)*y(42)*(1-params(34))*(1-y(43))*T(19));
    residual(15) = (y(29)+y(23)+y(26)*y(25)+y(10)/y(36)*y(7)+y(11)/y(36)*y(8)+y(27)*T(18)+y(42)*y(44)) - (y(31)+y(30)+y(27)*y(35)+y(27)*(1-y(35)-T(20)));
    residual(16) = (y(27)) - (y(27)*T(18)+y(29)+y(22)+y(45)+y(27)*T(20));
    residual(17) = (y(22)) - (y(24)+y(23));
    residual(18) = (y(44)) - (T(17)*params(31)*(1-y(43)));
    residual(19) = (y(31)) - (y(21)*y(32));
    residual(20) = (y(32)) - (y(30)+y(31));
    residual(21) = (y(38)) - (y(37)-params(22));
    residual(22) = (params(33)*params(32)*y(43)^(params(33)-1)) - (y(21)*params(2));
    residual(23) = (y(20)) - (y(37)/y(63));
    residual(24) = (y(37)) - (T(21)*T(25)*y(57));
    residual(25) = (y(45)) - ((steady_state(8))*params(10)*y(53));
    residual(26) = (y(42)) - (params(35)*y(58));
    residual(27) = (y(46)) - (log(y(27)/y(4)));
    residual(28) = (y(47)) - (log(y(22)/y(1)));
    residual(29) = (y(48)) - (log(T(12)));
    residual(30) = (y(49)) - (y(36)-(steady_state(17)));
    residual(31) = (y(50)) - (y(37)-(steady_state(18)));
    residual(32) = (y(51)) - (log(y(32)/y(9)));
    residual(33) = (log(y(52))) - (params(23)*log(y(12))+x(it_, 1));
    residual(34) = (log(y(53))) - (params(24)*log(y(13))+x(it_, 2));
    residual(35) = (log(y(54))) - (params(25)*log(y(14))+x(it_, 3));
    residual(36) = (log(y(56))) - (params(27)*log(y(16))+x(it_, 5));
    residual(37) = (log(y(55))) - (params(26)*log(y(15))+x(it_, 4));
    residual(38) = (log(y(57))) - (params(28)*log(y(17))+x(it_, 6));
    residual(39) = (log(y(58))) - (params(29)*log(y(18))+x(it_, 7));
    residual(40) = (log(y(59))) - (params(30)*log(y(19))+x(it_, 8));

end
