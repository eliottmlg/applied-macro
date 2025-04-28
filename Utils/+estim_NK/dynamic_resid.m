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
    T = estim_NK.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(35, 1);
    residual(1) = (y(23)) - (y(43)*T(1));
    residual(2) = (T(2)*y(13)) - (1);
    residual(3) = (y(23)*y(16)) - (params(6)*y(15)^params(5));
    residual(4) = (y(44)*y(24)) - (1+y(44)*y(24)*T(3)*T(4)+T(7)*T(8));
    residual(5) = (y(17)) - (T(10)*T(11));
    residual(6) = (y(44)*y(19)*T(13)) - (y(18)-y(3)*(1-params(2)));
    residual(7) = (y(52)*(1-params(2))+params(3)*y(53)*y(48)/y(18)) - (y(13)*y(24));
    residual(8) = (y(16)) - (y(17)*(1-params(3))*y(25)/y(15));
residual(9) = 1-params(10)*y(47)+y(47)*params(10)*y(20)-params(16)*y(21)*(y(21)-(steady_state(9)))+T(15)*(y(50)-(steady_state(9)));
    residual(10) = (y(25)) - (y(20)-T(16)-y(26)*(1-params(29))*params(26)*(1-y(27))*T(17));
    residual(11) = ((y(26)*params(26)*T(18)/(params(27)*params(28)))^(1/(params(28)-1))) - (y(27));
    residual(12) = (y(17)) - (y(14)+y(19)+y(29)+y(17)*T(16)+y(17)*params(16)/2*T(19));
    residual(13) = (y(28)) - (T(18)*params(26)*(1-y(27)));
    residual(14) = (y(13)) - (y(22)/y(50));
    residual(15) = (y(22)) - (T(27)*T(29)*y(45));
    residual(16) = (y(29)) - ((steady_state(5))*params(7)*y(42));
    residual(17) = (y(26)) - (params(30)*y(46));
    residual(18) = (y(30)) - (log(T(28)));
    residual(19) = (y(31)) - (log(y(14)/y(1)));
    residual(20) = (y(32)) - (log(T(12)));
    residual(21) = (y(33)) - (y(21)-(steady_state(9)));
    residual(22) = (y(34)) - (y(22)-(steady_state(10)));
    residual(23) = (y(35)) - (log(y(15)/(steady_state(3))));
    residual(24) = (y(36)) - (log(T(23)));
    residual(25) = (y(37)) - (log(y(14)/(steady_state(2))));
    residual(26) = (y(38)) - (log(y(19)/(steady_state(7))));
    residual(27) = (y(39)) - (log(T(21)));
    residual(28) = (y(40)) - (log(y(22)/(steady_state(10))));
    residual(29) = (log(y(41))) - (params(19)*log(y(6))+x(it_, 1));
    residual(30) = (log(y(42))) - (params(20)*log(y(7))+x(it_, 2));
    residual(31) = (log(y(43))) - (params(21)*log(y(8))+x(it_, 3));
    residual(32) = (log(y(47))) - (params(25)*log(y(12))+params(11)/params(10)*x(it_, 7));
    residual(33) = (log(y(44))) - (params(22)*log(y(9))+x(it_, 4));
    residual(34) = (log(y(45))) - (params(23)*log(y(10))+x(it_, 5));
    residual(35) = (log(y(46))) - (params(24)*log(y(11))+x(it_, 6));

end
