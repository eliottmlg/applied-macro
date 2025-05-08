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
    T = credit_NK.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(43, 1);
    residual(1) = (y(33)) - (y(55)*T(1));
    residual(2) = (params(2)*y(65)/y(33)*y(18)) - (1);
    residual(3) = (y(33)*y(23)) - (params(7)*y(22)^params(6));
    residual(4) = (y(57)*y(34)) - (1+y(57)*y(34)*T(2)*T(3)+T(7)*T(8));
    residual(5) = (y(24)) - (T(10)*T(11));
    residual(6) = (y(27)) - (y(66)*y(56)*params(11)*y(25)/y(18)-y(22)*y(23)*params(10));
    residual(7) = (y(57)*y(26)*T(13)) - (y(25)-y(5)*(1-params(3)));
    residual(8) = (y(28)) - (y(55)*T(14));
    residual(9) = (1-y(29)) - (y(18)*T(4));
    residual(10) = ((1-y(29))*(y(66)*(1-params(3))+params(4)*y(67)*y(61)/y(25))+params(11)*y(56)*y(66)*y(29)) - (y(18)*y(34));
    residual(11) = (y(23)) - (y(24)*(1-params(4))*y(35)/(y(22)*(1+params(10)*y(29))));
residual(12) = 1-params(13)+params(13)*y(30)-params(18)*y(31)*(y(31)-(steady_state(14)))+T(16)*(y(64)-(steady_state(14)));
    residual(13) = (y(35)) - (y(30)-T(17)-y(36)*(1-params(31))*params(28)*(1-y(37))*T(18));
    residual(14) = ((y(36)*params(28)*T(19)/(params(29)*params(30)))^(1/(params(30)-1))) - (y(37));
    residual(15) = (y(26)+y(20)+y(23)*y(22)+y(8)/y(31)*y(7)+y(24)*T(17)+y(36)*y(38)) - (y(27)+y(24)*y(30)+y(24)*(1-y(30)-params(18)/2*T(20)));
    residual(16) = (y(24)) - (y(24)*T(17)+y(26)+y(19)+y(39)+T(20)*y(24)*params(18)/2);
    residual(17) = (y(19)) - (y(21)+y(20));
    residual(18) = (y(38)) - (T(19)*params(28)*(1-y(37)));
    residual(19) = (y(18)) - (y(32)/y(64));
    residual(20) = (y(32)) - (T(21)*T(27)*y(58));
    residual(21) = (y(39)) - ((steady_state(7))*params(8)*y(54));
    residual(22) = (y(36)) - (params(32)*y(59));
    residual(23) = (y(40)) - (log(y(24)/y(4)));
    residual(24) = (y(41)) - (log(y(19)/y(1)));
    residual(25) = (y(42)) - (log(T(12)));
    residual(26) = (y(43)) - (y(31)-(steady_state(14)));
    residual(27) = (y(44)) - (y(32)-(steady_state(15)));
    residual(28) = (y(45)) - (log(y(27)/y(7)));
    residual(29) = (y(51)) - (log(y(27))-log(y(7)));
    residual(30) = (y(52)) - (log(y(38))-log(y(9)));
    residual(31) = (y(46)) - (log(T(24)));
    residual(32) = (y(47)) - (log(y(19)/(steady_state(2))));
    residual(33) = (y(48)) - (log(y(26)/(steady_state(9))));
    residual(34) = (y(49)) - (log(T(22)));
    residual(35) = (y(50)) - (log(y(32)/(steady_state(15))));
    residual(36) = (log(y(53))) - (params(20)*log(y(10))+x(it_, 1));
    residual(37) = (log(y(54))) - (params(21)*log(y(11))+x(it_, 2));
    residual(38) = (log(y(55))) - (params(22)*log(y(12))+x(it_, 3));
    residual(39) = (log(y(60))) - (params(27)*log(y(17))+x(it_, 8));
    residual(40) = (log(y(57))) - (params(24)*log(y(14))+x(it_, 5));
    residual(41) = (log(y(56))) - (params(23)*log(y(13))+x(it_, 4));
    residual(42) = (log(y(58))) - (params(25)*log(y(15))+x(it_, 6));
    residual(43) = (log(y(59))) - (params(26)*log(y(16))+x(it_, 7));

end
