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
lhs = y(23);
rhs = y(43)*T(1);
residual(1) = lhs - rhs;
lhs = T(2)*y(13);
rhs = 1;
residual(2) = lhs - rhs;
lhs = y(23)*y(16);
rhs = params(6)*y(15)^params(5);
residual(3) = lhs - rhs;
lhs = y(44)*y(24);
rhs = 1+y(44)*y(24)*T(3)*T(4)+T(7)*T(8);
residual(4) = lhs - rhs;
lhs = y(17);
rhs = T(10)*T(11);
residual(5) = lhs - rhs;
lhs = y(44)*y(19)*T(13);
rhs = y(18)-y(3)*(1-params(2));
residual(6) = lhs - rhs;
lhs = y(52)*(1-params(2))+params(3)*y(53)*y(48)/y(18);
rhs = y(13)*y(24);
residual(7) = lhs - rhs;
lhs = y(16);
rhs = y(17)*(1-params(3))*y(25)/y(15);
residual(8) = lhs - rhs;
residual(9) = 1-params(10)*y(47)+y(47)*params(10)*y(20)-params(16)*y(21)*(y(21)-(steady_state(9)))+T(15)*(y(50)-(steady_state(9)));
lhs = y(25);
rhs = y(20)-T(16)-y(26)*(1-params(29))*params(26)*(1-y(27))*T(17);
residual(10) = lhs - rhs;
lhs = (y(26)*params(26)*T(18)/(params(27)*params(28)))^(1/(params(28)-1));
rhs = y(27);
residual(11) = lhs - rhs;
lhs = y(17);
rhs = y(14)+y(19)+y(29)+y(17)*T(16)+y(17)*params(16)/2*T(19);
residual(12) = lhs - rhs;
lhs = y(28);
rhs = T(18)*params(26)*(1-y(27));
residual(13) = lhs - rhs;
lhs = y(13);
rhs = y(22)/y(50);
residual(14) = lhs - rhs;
lhs = y(22);
rhs = T(27)*T(29)*y(45);
residual(15) = lhs - rhs;
lhs = y(29);
rhs = (steady_state(5))*params(7)*y(42);
residual(16) = lhs - rhs;
lhs = y(26);
rhs = params(30)*y(46);
residual(17) = lhs - rhs;
lhs = y(30);
rhs = log(T(28));
residual(18) = lhs - rhs;
lhs = y(31);
rhs = log(y(14)/y(1));
residual(19) = lhs - rhs;
lhs = y(32);
rhs = log(T(12));
residual(20) = lhs - rhs;
lhs = y(33);
rhs = y(21)-(steady_state(9));
residual(21) = lhs - rhs;
lhs = y(34);
rhs = y(22)-(steady_state(10));
residual(22) = lhs - rhs;
lhs = y(35);
rhs = log(y(15)/(steady_state(3)));
residual(23) = lhs - rhs;
lhs = y(36);
rhs = log(T(23));
residual(24) = lhs - rhs;
lhs = y(37);
rhs = log(y(14)/(steady_state(2)));
residual(25) = lhs - rhs;
lhs = y(38);
rhs = log(y(19)/(steady_state(7)));
residual(26) = lhs - rhs;
lhs = y(39);
rhs = log(T(21));
residual(27) = lhs - rhs;
lhs = y(40);
rhs = log(y(22)/(steady_state(10)));
residual(28) = lhs - rhs;
lhs = log(y(41));
rhs = params(19)*log(y(6))+x(it_, 1);
residual(29) = lhs - rhs;
lhs = log(y(42));
rhs = params(20)*log(y(7))+x(it_, 2);
residual(30) = lhs - rhs;
lhs = log(y(43));
rhs = params(21)*log(y(8))+x(it_, 3);
residual(31) = lhs - rhs;
lhs = log(y(47));
rhs = params(25)*log(y(12))+params(11)/params(10)*x(it_, 7);
residual(32) = lhs - rhs;
lhs = log(y(44));
rhs = params(22)*log(y(9))+x(it_, 4);
residual(33) = lhs - rhs;
lhs = log(y(45));
rhs = params(23)*log(y(10))+x(it_, 5);
residual(34) = lhs - rhs;
lhs = log(y(46));
rhs = params(24)*log(y(11))+x(it_, 6);
residual(35) = lhs - rhs;

end
