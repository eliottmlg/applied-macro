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
residual = zeros(39, 1);
    residual(1) = (y(38)) - (y(53)*T(1));
    residual(2) = (params(2)*y(63)/y(38)*y(20)) - (1);
    residual(3) = (y(38)*y(25)) - (params(7)*y(24)^params(6));
    residual(4) = (y(55)*y(39)) - (1+y(55)*y(39)*T(2)*T(3)+T(7)*T(8));
    residual(5) = (y(26)) - (T(10)*T(11));
    residual(6) = (y(29)+y(30)) - (y(64)*y(54)*params(11)*y(27)/y(20)-y(24)*y(25)*params(10));
    residual(7) = (y(55)*y(28)*T(13)) - (y(27)-y(5)*(1-params(3)));
    residual(8) = (y(32)) - (y(53)*T(14));
    residual(9) = (1-y(33)) - (y(20)*T(4));
    residual(10) = ((1-y(33))*(y(64)*(1-params(3))+params(4)*y(65)*y(59)/y(27))+params(11)*y(54)*y(64)*y(33)) - (y(20)*y(39));
    residual(11) = (y(25)) - (y(26)*(1-params(4))*y(40)/(y(24)*(1+params(10)*y(33))));
residual(12) = 1-params(13)+params(13)*y(34)-params(18)*y(35)*(y(35)-(steady_state(16)))+T(18)*(y(62)-(steady_state(16)));
    residual(13) = (T(20)^(1/(params(32)-1))) - (y(42));
    residual(14) = (y(40)) - (y(34)-T(21)-params(30)*y(41)*(1-params(33))*(1-y(42))*T(22));
    residual(15) = (y(28)+y(22)+y(25)*y(24)+y(10)/y(35)*y(7)+y(11)/y(35)*y(8)+y(26)*T(21)+y(41)*y(43)) - (y(30)+y(29)+y(26)*y(34)+y(26)*(1-y(34)-T(23)));
    residual(16) = (y(26)) - (y(26)*T(21)+y(28)+y(21)+y(44)+y(26)*T(23));
    residual(17) = (y(21)) - (y(23)+y(22));
    residual(18) = (y(43)) - (T(19)*params(30)*(1-y(42)));
    residual(19) = (y(30)) - (params(21)*y(31));
    residual(20) = (y(31)) - (y(29)+y(30));
    residual(21) = (y(37)) - (y(36)-params(20));
    residual(22) = (y(20)) - (y(36)/y(62));
    residual(23) = (y(36)) - (T(24)*T(28)*y(56));
    residual(24) = (y(44)) - ((steady_state(7))*params(8)*y(52));
    residual(25) = (y(41)) - (params(34)*y(57));
    residual(26) = (y(45)) - (log(T(29)));
    residual(27) = (y(46)) - (log(T(30)));
    residual(28) = (y(47)) - (log(T(12)));
    residual(29) = (y(48)) - (y(35)-(steady_state(16)));
    residual(30) = (y(49)) - (y(36)-(steady_state(17)));
    residual(31) = (y(50)) - (log(T(31)));
    residual(32) = (log(y(51))) - (params(22)*log(y(12))+x(it_, 1));
    residual(33) = (log(y(52))) - (params(23)*log(y(13))+x(it_, 2));
    residual(34) = (log(y(53))) - (params(24)*log(y(14))+x(it_, 3));
    residual(35) = (log(y(55))) - (params(26)*log(y(16))+x(it_, 5));
    residual(36) = (log(y(54))) - (params(25)*log(y(15))+x(it_, 4));
    residual(37) = (log(y(56))) - (params(27)*log(y(17))+x(it_, 6));
    residual(38) = (log(y(57))) - (params(28)*log(y(18))+x(it_, 7));
    residual(39) = (log(y(58))) - (params(29)*log(y(19))+x(it_, 8));

end
