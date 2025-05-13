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
residual = zeros(39, 1);
    residual(1) = (y(35)) - (y(51)*T(1));
    residual(2) = (params(2)*y(63)/y(35)*y(20)) - (1);
    residual(3) = (y(35)*y(25)) - (params(7)*y(24)^params(6));
    residual(4) = (y(53)*y(36)) - (1+y(53)*y(36)*T(2)*T(3)+T(7)*T(8));
    residual(5) = (y(26)) - (T(10)*T(11));
    residual(6) = (y(29)) - (y(64)*y(52)*params(11)*y(27)/y(20)-y(24)*y(25)*y(58)*params(10));
    residual(7) = (y(53)*y(28)*T(13)) - (y(27)-y(5)*(1-params(3)));
    residual(8) = (y(30)) - (y(51)*T(14));
    residual(9) = (1-y(31)) - (y(20)*T(4));
    residual(10) = ((1-y(31))*(y(64)*(1-params(3))+params(4)*y(65)*y(59)/y(27))+params(11)*y(52)*y(64)*y(31)) - (y(20)*y(36));
    residual(11) = (y(25)) - (y(26)*(1-params(4))*y(37)/(y(24)*(1+y(58)*params(10)*y(31))));
residual(12) = 1-params(13)+params(13)*y(32)-params(18)*y(33)*(y(33)-(steady_state(14)))+T(16)*(y(62)-(steady_state(14)));
    residual(13) = (y(37)) - (y(32)-T(17)-y(38)*(1-params(33))*params(30)*(1-y(39))*T(18));
    residual(14) = ((y(38)*params(30)*T(19)/(params(31)*params(32)))^(1/(params(32)-1))) - (y(39));
    residual(15) = (y(28)+y(22)+y(25)*y(24)+y(8)/y(33)*y(7)+y(26)*T(17)+y(38)*y(40)) - (y(29)+y(26)*y(32)+y(26)*(1-y(32)-params(18)/2*T(20)));
    residual(16) = (y(26)) - (y(26)*T(17)+y(28)+y(21)+y(41)+T(20)*y(26)*params(18)/2);
    residual(17) = (y(21)) - (y(23)+y(22));
    residual(18) = (y(40)) - (T(19)*params(30)*(1-y(39))*y(57));
    residual(19) = (y(20)) - (y(34)/y(62));
    residual(20) = (y(34)) - (T(21)*T(25)*y(54));
    residual(21) = (y(41)) - ((steady_state(7))*params(8)*y(50));
    residual(22) = (y(38)) - (params(34)*y(55));
    residual(23) = (y(42)) - (log(y(26)/y(4)));
    residual(24) = (y(43)) - (log(y(21)/y(1)));
    residual(25) = (y(44)) - (log(T(12)));
    residual(26) = (y(45)) - (y(33)-(steady_state(14)));
    residual(27) = (y(46)) - (y(34)-(steady_state(15)));
    residual(28) = (y(47)) - (log(y(29)/y(7)));
    residual(29) = (y(48)) - (log(y(40)/y(9)));
    residual(30) = (log(y(49))) - (params(20)*log(y(10))+x(it_, 1));
    residual(31) = (log(y(50))) - (params(21)*log(y(11))+x(it_, 2));
    residual(32) = (log(y(51))) - (params(22)*log(y(12))+x(it_, 3));
    residual(33) = (log(y(56))) - (params(27)*log(y(17))+x(it_, 8));
    residual(34) = (log(y(53))) - (params(24)*log(y(14))+x(it_, 5));
    residual(35) = (log(y(52))) - (params(23)*log(y(13))+x(it_, 4));
    residual(36) = (log(y(54))) - (params(25)*log(y(15))+x(it_, 6));
    residual(37) = (log(y(55))) - (params(26)*log(y(16))+x(it_, 7));
    residual(38) = (log(y(57))) - (params(28)*log(y(18))+x(it_, 9));
    residual(39) = (log(y(58))) - (params(29)*log(y(19))+x(it_, 10));

end
