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
residual = zeros(36, 1);
lhs = y(32);
rhs = y(47)*T(1);
residual(1) = lhs - rhs;
lhs = params(2)*y(57)/y(32)*y(17);
rhs = 1;
residual(2) = lhs - rhs;
lhs = y(32)*y(22);
rhs = params(7)*y(21)^params(6);
residual(3) = lhs - rhs;
lhs = y(49)*y(33);
rhs = 1+y(49)*y(33)*T(2)*T(3)+T(7)*T(8);
residual(4) = lhs - rhs;
lhs = y(23);
rhs = T(10)*T(11);
residual(5) = lhs - rhs;
lhs = y(26);
rhs = y(58)*y(48)*params(11)*y(24)/y(17)-y(21)*y(22)*params(10);
residual(6) = lhs - rhs;
lhs = y(49)*y(25)*T(13);
rhs = y(24)-y(5)*(1-params(3));
residual(7) = lhs - rhs;
lhs = y(27);
rhs = y(47)*T(14);
residual(8) = lhs - rhs;
lhs = 1-y(28);
rhs = y(17)*T(4);
residual(9) = lhs - rhs;
lhs = (1-y(28))*(y(58)*(1-params(3))+params(4)*y(59)*y(53)/y(24))+params(11)*y(48)*y(58)*y(28);
rhs = y(17)*y(33);
residual(10) = lhs - rhs;
lhs = y(22);
rhs = y(23)*(1-params(4))*y(34)/(y(21)*(1+params(10)*y(28)));
residual(11) = lhs - rhs;
residual(12) = 1-params(13)+params(13)*y(29)-params(18)*y(30)*(y(30)-(steady_state(14)))+T(16)*(y(56)-(steady_state(14)));
lhs = y(34);
rhs = y(29)-T(17)-y(35)*(1-params(31))*params(28)*(1-y(36))*T(18);
residual(13) = lhs - rhs;
lhs = (y(35)*params(28)*T(19)/(params(29)*params(30)))^(1/(params(30)-1));
rhs = y(36);
residual(14) = lhs - rhs;
lhs = y(25)+y(19)+y(22)*y(21)+y(8)/y(30)*y(7)+y(23)*T(17)+y(35)*y(37);
rhs = y(26)+y(23)*y(29)+y(23)*(1-y(29)-params(18)/2*T(20));
residual(15) = lhs - rhs;
lhs = y(23);
rhs = y(23)*T(17)+y(25)+y(18)+y(38)+T(20)*y(23)*params(18)/2;
residual(16) = lhs - rhs;
lhs = y(18);
rhs = y(20)+y(19);
residual(17) = lhs - rhs;
lhs = y(37);
rhs = T(19)*params(28)*(1-y(36));
residual(18) = lhs - rhs;
lhs = y(17);
rhs = y(31)/y(56);
residual(19) = lhs - rhs;
lhs = y(31);
rhs = T(21)*T(25)*y(50);
residual(20) = lhs - rhs;
lhs = y(38);
rhs = (steady_state(7))*params(8)*y(46);
residual(21) = lhs - rhs;
lhs = y(35);
rhs = params(32)*y(51);
residual(22) = lhs - rhs;
lhs = y(39);
rhs = log(y(23)/y(4));
residual(23) = lhs - rhs;
lhs = y(40);
rhs = log(y(18)/y(1));
residual(24) = lhs - rhs;
lhs = y(41);
rhs = log(T(12));
residual(25) = lhs - rhs;
lhs = y(42);
rhs = y(30)-(steady_state(14));
residual(26) = lhs - rhs;
lhs = y(43);
rhs = y(31)-(steady_state(15));
residual(27) = lhs - rhs;
lhs = y(44);
rhs = log(y(26)/y(7));
residual(28) = lhs - rhs;
lhs = log(y(45));
rhs = params(20)*log(y(9))+x(it_, 1);
residual(29) = lhs - rhs;
lhs = log(y(46));
rhs = params(21)*log(y(10))+x(it_, 2);
residual(30) = lhs - rhs;
lhs = log(y(47));
rhs = params(22)*log(y(11))+x(it_, 3);
residual(31) = lhs - rhs;
lhs = log(y(52));
rhs = params(27)*log(y(16))+x(it_, 8);
residual(32) = lhs - rhs;
lhs = log(y(49));
rhs = params(24)*log(y(13))+x(it_, 5);
residual(33) = lhs - rhs;
lhs = log(y(48));
rhs = params(23)*log(y(12))+x(it_, 4);
residual(34) = lhs - rhs;
lhs = log(y(50));
rhs = params(25)*log(y(14))+x(it_, 6);
residual(35) = lhs - rhs;
lhs = log(y(51));
rhs = params(26)*log(y(15))+x(it_, 7);
residual(36) = lhs - rhs;

end
