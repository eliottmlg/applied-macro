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
    residual(1) = (y(36)) - (y(57)*T(1));
    residual(2) = (T(2)*y(21)) - (1);
    residual(3) = (y(36)*y(26)) - (params(7)*y(25)^params(6));
    residual(4) = (y(59)*y(37)) - (1+y(59)*y(37)*T(3)*T(4)+T(8)*T(9));
    residual(5) = (T(2)*y(73)/y(68)+y(64)*params(35)*T(10)) - (1);
    residual(6) = (T(2)*y(72)/y(68)+y(63)*params(34)*T(11)) - (1);
    residual(7) = (y(27)) - (T(13)*T(14));
    residual(8) = (y(30)) - (y(70)*y(58)*params(11)*y(28)/y(21)-y(25)*y(26)*params(10));
    residual(9) = (y(59)*y(29)*T(16)) - (y(28)-y(5)*(1-params(3)));
    residual(10) = (y(31)) - (y(57)*T(17));
    residual(11) = (1-y(32)) - (y(21)*T(5));
    residual(12) = ((1-y(32))*(y(70)*(1-params(3))+params(4)*y(71)*y(65)/y(28))+params(11)*y(58)*y(70)*y(32)) - (y(21)*y(37));
    residual(13) = (y(26)) - (y(27)*(1-params(4))*y(38)/(y(25)*(1+params(10)*y(32))));
residual(14) = 1-params(13)+params(13)*y(33)-y(34)*params(18)*(y(34)-(steady_state(14)))+T(19)*(y(68)-(steady_state(14)));
    residual(15) = (y(38)) - (y(33)-T(20)-y(39)*(1-params(31))*params(28)*(1-y(40))*T(21));
    residual(16) = ((y(39)*params(28)*T(22)/(params(29)*params(30)))^(1/(params(30)-1))) - (y(40));
    residual(17) = (y(29)+y(23)+y(26)*y(25)+y(8)/y(34)*y(7)+y(53)/y(34)*y(9)+y(54)/y(34)*y(10)+y(27)*T(20)+y(39)*y(41)) - (y(30)+y(27)*y(33)+y(27)*(1-y(33)-params(18)/2*T(23))+y(52)+y(51));
    residual(18) = (y(50)) - (y(52));
    residual(19) = (y(49)) - (y(51));
    residual(20) = (y(53)) - (y(35)+params(41));
    residual(21) = (y(52)+y(51)) - (params(40)*(y(30)+y(52)+y(51)));
    residual(22) = (y(27)) - (y(27)*T(20)+y(29)+y(22)+y(42)+T(23)*y(27)*params(18)/2);
    residual(23) = (y(22)) - (y(24)+y(23));
    residual(24) = (y(41)) - (T(22)*params(28)*(1-y(40)));
    residual(25) = (y(21)) - (y(35)/y(68));
    residual(26) = (y(35)) - (T(24)*T(28)*y(60));
    residual(27) = (y(42)) - ((steady_state(7))*params(8)*y(56));
    residual(28) = (y(39)) - (params(32)*y(61));
    residual(29) = (y(43)) - (log(y(27)/y(4)));
    residual(30) = (y(44)) - (log(y(22)/y(1)));
    residual(31) = (y(45)) - (log(T(15)));
    residual(32) = (y(46)) - (y(34)-(steady_state(14)));
    residual(33) = (y(47)) - (y(35)-(steady_state(15)));
    residual(34) = (y(48)) - (log(y(30)/y(7)));
    residual(35) = (log(y(55))) - (params(20)*log(y(11))+x(it_, 1));
    residual(36) = (log(y(56))) - (params(21)*log(y(12))+x(it_, 2));
    residual(37) = (log(y(57))) - (params(22)*log(y(13))+x(it_, 3));
    residual(38) = (log(y(62))) - (params(27)*log(y(18))+x(it_, 8));
    residual(39) = (log(y(59))) - (params(24)*log(y(15))+x(it_, 5));
    residual(40) = (log(y(58))) - (params(23)*log(y(14))+x(it_, 4));
    residual(41) = (log(y(60))) - (params(25)*log(y(16))+x(it_, 6));
    residual(42) = (log(y(61))) - (params(26)*log(y(17))+x(it_, 7));
    residual(43) = (log(y(64))) - (params(39)*log(y(20))+x(it_, 9));
    residual(44) = (log(y(63))) - (params(38)*log(y(19))+x(it_, 10));

end
