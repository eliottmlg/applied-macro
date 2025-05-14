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
    T = SLBnum.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(43, 1);
    residual(1) = (y(37)) - (y(56)*T(1));
    residual(2) = (params(2)*y(69)/y(37)*y(22)) - (1);
    residual(3) = (y(37)*y(27)) - (params(7)*y(26)^params(6));
    residual(4) = (y(58)*y(38)) - (1+y(58)*y(38)*T(2)*T(3)+T(7)*T(8));
    residual(5) = (params(2)*y(69)/y(37)*y(72)/y(68)+y(62)*params(37)/y(37)*T(9)) - (1);
    residual(6) = (y(28)) - (T(11)*T(12));
    residual(7) = (y(31)) - (y(70)*y(57)*params(11)*y(29)/y(22)-y(26)*y(27)*params(10));
    residual(8) = (y(58)*y(30)*T(14)) - (y(29)-y(5)*(1-params(3)));
    residual(9) = (y(32)) - (y(56)*T(15));
    residual(10) = (1-y(33)) - (y(22)*T(4));
    residual(11) = ((1-y(33))*(y(70)*(1-params(3))+params(4)*y(71)*y(65)/y(29))+params(11)*y(57)*y(70)*y(33)+y(70)*y(53)*y(64)*params(43)/y(51)) - (y(22)*y(38));
    residual(12) = (y(27)) - (y(28)*(1-params(4))*y(39)/(y(26)*(1+params(10)*y(33))));
residual(13) = 1-params(13)+params(13)*y(34)-params(18)*y(35)*(y(35)-(steady_state(14)))+T(17)*(y(68)-(steady_state(14)));
    residual(14) = (y(39)) - (y(34)-T(18)-y(40)*(1-params(31))*params(28)*(1-y(41))*T(19));
    residual(15) = (((y(40)*params(28)*T(20)+y(53)*params(41))/(params(29)*params(30)))^(1/(params(30)-1))) - (y(41));
    residual(16) = (1-y(53)) - (params(1)*y(67)/y(32)*y(52));
    residual(17) = (y(30)+y(24)+y(27)*y(26)+y(8)/y(35)*y(7)+y(10)/y(35)*y(9)+y(28)*T(18)+y(40)*y(42)) - (y(50)+y(31)+y(28)*y(34)+y(28)*(1-y(34)-params(18)/2*T(21)));
    residual(18) = (y(28)) - (y(28)*T(18)+y(30)+y(23)+y(43)+T(21)*y(28)*params(18)/2);
    residual(19) = (y(23)) - (y(25)+y(24));
    residual(20) = (y(42)) - (T(20)*params(28)*(1-y(41)));
    residual(21) = (y(22)) - (y(36)/y(68));
    residual(22) = (y(52)) - (y(51)/y(35));
    residual(23) = (y(51)) - (y(36)-params(35));
    residual(24) = (y(36)) - (T(22)*T(26)*y(59));
    residual(25) = (y(43)) - ((steady_state(7))*params(8)*y(55));
    residual(26) = (y(40)) - (params(32)*y(60));
    residual(27) = (y(44)) - (log(y(28)/y(4)));
    residual(28) = (y(45)) - (log(y(23)/y(1)));
    residual(29) = (y(46)) - (log(T(13)));
    residual(30) = (y(47)) - (y(35)-(steady_state(14)));
    residual(31) = (y(48)) - (y(36)-(steady_state(15)));
    residual(32) = (y(49)) - (log(y(31)/y(7)));
    residual(33) = (log(y(54))) - (params(20)*log(y(11))+x(it_, 1));
    residual(34) = (log(y(55))) - (params(21)*log(y(12))+x(it_, 2));
    residual(35) = (log(y(56))) - (params(22)*log(y(13))+x(it_, 3));
    residual(36) = (log(y(61))) - (params(27)*log(y(18))+x(it_, 8));
    residual(37) = (log(y(58))) - (params(24)*log(y(15))+x(it_, 5));
    residual(38) = (log(y(57))) - (params(23)*log(y(14))+x(it_, 4));
    residual(39) = (log(y(59))) - (params(25)*log(y(16))+x(it_, 6));
    residual(40) = (log(y(60))) - (params(26)*log(y(17))+x(it_, 7));
    residual(41) = (log(y(62))) - (params(39)*log(y(19))+x(it_, 9));
    residual(42) = (log(y(63))) - (params(42)*log(y(20))+x(it_, 10));
    residual(43) = (log(y(64))) - (params(44)*log(y(21))+x(it_, 11));

end
