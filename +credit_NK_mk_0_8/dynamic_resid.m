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
    T = credit_NK_mk_0_8.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(43, 1);
    residual(1) = (y(42)) - (y(58)*T(1));
    residual(2) = (params(3)*y(70)/y(42)*y(23)) - (1);
    residual(3) = (y(42)*y(29)) - (params(8)*y(28)^params(7));
    residual(4) = (y(60)*y(43)) - (1+y(60)*y(43)*T(2)*T(3)+T(7)*T(8));
    residual(5) = (y(30)) - (T(10)*T(11));
    residual(6) = (y(33)+y(34)) - (y(71)*y(59)*params(12)*y(31)/y(23)-y(28)*y(29)*y(65)*params(11));
    residual(7) = (y(60)*y(32)*T(13)) - (y(31)-y(5)*(1-params(4)));
    residual(8) = (y(36)) - (y(58)*T(14));
    residual(9) = (1-y(37)) - (y(23)*T(4));
    residual(10) = ((1-y(37))*(y(71)*(1-params(4))+params(5)*y(72)*y(66)/y(31))+params(12)*y(59)*y(71)*y(37)) - (y(23)*y(43));
    residual(11) = (y(29)) - (y(30)*(1-params(5))*y(44)/(y(28)*(1+y(65)*params(11)*y(37))));
residual(12) = 1-params(14)+params(14)*y(38)-params(21)*y(39)*(y(39)-(steady_state(17)))+T(16)*(y(69)-(steady_state(17)));
    residual(13) = ((y(45)*params(32)*T(17)/(params(34)*params(33)))^(1/(params(34)-1))) - (y(46));
    residual(14) = (y(44)) - (y(38)-T(18)-params(32)*y(45)*(1-params(35))*(1-y(46))*T(19));
    residual(15) = (y(32)+y(26)+y(29)*y(28)+y(10)/y(39)*y(7)+y(11)/y(39)*y(8)+y(30)*T(18)+y(45)*y(47)) - (y(34)+y(33)+y(30)*y(38)+y(30)*(1-y(38)-T(20)));
    residual(16) = (y(30)) - (y(30)*T(18)+y(32)+y(25)+y(48)+y(30)*T(20));
    residual(17) = (y(25)) - (y(27)+y(26));
    residual(18) = (y(47)) - (T(17)*params(32)*(1-y(46)));
    residual(19) = (y(34)) - (y(24)*y(35));
    residual(20) = (y(35)) - (y(33)+y(34));
    residual(21) = (y(41)) - (y(40)-params(23));
    residual(22) = (params(34)*params(33)*y(46)^(params(34)-1)) - (y(24)*params(1));
    residual(23) = (y(23)) - (y(40)/y(69));
    residual(24) = (y(40)) - (T(21)*T(25)*y(61));
    residual(25) = (y(48)) - ((steady_state(8))*params(9)*y(57));
    residual(26) = (y(45)) - (params(36)*y(62));
    residual(27) = (y(49)) - (log(y(30)/y(4)));
    residual(28) = (y(50)) - (log(y(25)/y(1)));
    residual(29) = (y(51)) - (log(T(12)));
    residual(30) = (y(52)) - (y(39)-(steady_state(17)));
    residual(31) = (y(53)) - (y(40)-(steady_state(18)));
    residual(32) = (y(54)) - (log(y(35)/y(9)));
    residual(33) = (y(55)) - (log(y(47)/y(12)));
    residual(34) = (log(y(56))) - (params(24)*log(y(13))+x(it_, 1));
    residual(35) = (log(y(57))) - (params(25)*log(y(14))+x(it_, 2));
    residual(36) = (log(y(58))) - (params(26)*log(y(15))+x(it_, 3));
    residual(37) = (log(y(60))) - (params(28)*log(y(17))+x(it_, 5));
    residual(38) = (log(y(59))) - (params(27)*log(y(16))+x(it_, 4));
    residual(39) = (log(y(61))) - (params(29)*log(y(18))+x(it_, 6));
    residual(40) = (log(y(62))) - (params(30)*log(y(19))+x(it_, 7));
    residual(41) = (log(y(63))) - (params(31)*log(y(20))+x(it_, 8));
    residual(42) = (log(y(64))) - (params(19)*log(y(21))+x(it_, 9));
    residual(43) = (log(y(65))) - (params(20)*log(y(22))+x(it_, 10));

end
