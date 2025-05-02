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
residual = zeros(44, 1);
    residual(1) = (y(38)) - (y(59)*T(1));
    residual(2) = (T(2)*y(23)) - (1);
    residual(3) = (y(38)*y(28)) - (params(7)*y(27)^params(6));
    residual(4) = (y(61)*y(39)) - (1+y(61)*y(39)*T(3)*T(4)+T(8)*T(9));
    residual(5) = (T(2)*y(75)/y(70)+y(66)*params(35)*T(10)) - (1);
    residual(6) = (T(2)*y(74)/y(70)+y(65)*params(34)*T(11)) - (1);
    residual(7) = (y(29)) - (T(13)*T(14));
    residual(8) = (y(32)) - (y(72)*y(60)*params(11)*y(30)/y(23)-y(27)*y(28)*params(10));
    residual(9) = (y(61)*y(31)*T(16)) - (y(30)-y(5)*(1-params(3)));
    residual(10) = (y(33)) - (y(59)*T(17));
    residual(11) = (1-y(34)) - (y(23)*T(5));
    residual(12) = ((1-y(34))*(y(72)*(1-params(3))+params(4)*y(73)*y(67)/y(30))+params(11)*y(60)*y(72)*y(34)) - (y(23)*y(39));
    residual(13) = (y(28)) - (y(29)*(1-params(4))*y(40)/(y(27)*(1+params(10)*y(34))));
residual(14) = 1-params(13)+params(13)*y(35)-y(36)*params(18)*(y(36)-(steady_state(14)))+T(19)*(y(70)-(steady_state(14)));
    residual(15) = (y(40)) - (y(35)-T(20)-y(41)*(1-params(31))*params(28)*(1-y(42))*T(21));
    residual(16) = ((y(41)*params(28)*T(22)/(params(29)*params(30)))^(1/(params(30)-1))) - (y(42));
    residual(17) = (y(33)) - (params(1)*y(33)*y(55));
    residual(18) = (y(33)) - (params(1)*y(33)*y(56));
    residual(19) = (y(31)+y(25)+y(28)*y(27)+y(8)/y(36)*y(7)+y(11)/y(36)*y(9)+y(12)/y(36)*y(10)+y(29)*T(20)+y(41)*y(43)) - (y(32)+y(29)*y(35)+y(29)*(1-y(35)-params(18)/2*T(23))+y(54)+y(53));
    residual(20) = (y(52)) - (y(54));
    residual(21) = (y(51)) - (y(53));
    residual(22) = (y(29)) - (y(29)*T(20)+y(31)+y(24)+y(44)+T(23)*y(29)*params(18)/2);
    residual(23) = (y(24)) - (y(26)+y(25));
    residual(24) = (y(43)) - (T(22)*params(28)*(1-y(42)));
    residual(25) = (y(23)) - (y(37)/y(70));
    residual(26) = (y(37)) - (T(24)*T(28)*y(62));
    residual(27) = (y(44)) - ((steady_state(7))*params(8)*y(58));
    residual(28) = (y(41)) - (params(32)*y(63));
    residual(29) = (y(45)) - (log(y(29)/y(4)));
    residual(30) = (y(46)) - (log(y(24)/y(1)));
    residual(31) = (y(47)) - (log(T(15)));
    residual(32) = (y(48)) - (y(36)-(steady_state(14)));
    residual(33) = (y(49)) - (y(37)-(steady_state(15)));
    residual(34) = (y(50)) - (log(y(32)/y(7)));
    residual(35) = (log(y(57))) - (params(20)*log(y(13))+x(it_, 1));
    residual(36) = (log(y(58))) - (params(21)*log(y(14))+x(it_, 2));
    residual(37) = (log(y(59))) - (params(22)*log(y(15))+x(it_, 3));
    residual(38) = (log(y(64))) - (params(27)*log(y(20))+x(it_, 8));
    residual(39) = (log(y(61))) - (params(24)*log(y(17))+x(it_, 5));
    residual(40) = (log(y(60))) - (params(23)*log(y(16))+x(it_, 4));
    residual(41) = (log(y(62))) - (params(25)*log(y(18))+x(it_, 6));
    residual(42) = (log(y(63))) - (params(26)*log(y(19))+x(it_, 7));
    residual(43) = (log(y(66))) - (params(39)*log(y(22))+x(it_, 9));
    residual(44) = (log(y(65))) - (params(38)*log(y(21))+x(it_, 10));

end
