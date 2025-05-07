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
    T = SLB.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(40, 1);
lhs = y(34);
rhs = y(52)*T(1);
residual(1) = lhs - rhs;
lhs = params(2)*y(63)/y(34)*y(19);
rhs = 1;
residual(2) = lhs - rhs;
lhs = y(34)*y(24);
rhs = params(7)*y(23)^params(6);
residual(3) = lhs - rhs;
lhs = y(54)*y(35);
rhs = 1+y(54)*y(35)*T(2)*T(3)+T(7)*T(8);
residual(4) = lhs - rhs;
lhs = params(2)*y(63)/y(34)*y(49)/y(62)+T(10)*T(11);
rhs = 1;
residual(5) = lhs - rhs;
lhs = y(25);
rhs = T(13)*T(14);
residual(6) = lhs - rhs;
lhs = y(28);
rhs = y(64)*y(53)*params(11)*y(26)/y(19)-y(23)*y(24)*params(10);
residual(7) = lhs - rhs;
lhs = y(54)*y(27)*T(16);
rhs = y(26)-y(5)*(1-params(3));
residual(8) = lhs - rhs;
lhs = y(29);
rhs = y(52)*T(17);
residual(9) = lhs - rhs;
lhs = 1-y(30);
rhs = y(19)*T(4);
residual(10) = lhs - rhs;
lhs = (1-y(30))*(y(64)*(1-params(3))+params(4)*y(65)*y(59)/y(26))+params(11)*y(53)*y(64)*y(30);
rhs = y(19)*y(35);
residual(11) = lhs - rhs;
lhs = y(24);
rhs = y(25)*(1-params(4))*y(36)/(y(23)*(1+params(10)*y(30)));
residual(12) = lhs - rhs;
residual(13) = 1-params(13)+params(13)*y(31)-y(32)*params(18)*(y(32)-(steady_state(14)))+T(19)*(y(62)-(steady_state(14)));
lhs = y(36);
rhs = y(31)-T(20)-y(37)*(1-params(31))*params(28)*(1-y(38))*T(21);
residual(14) = lhs - rhs;
lhs = T(23)^(1/(params(30)-1));
rhs = y(38);
residual(15) = lhs - rhs;
lhs = y(29);
rhs = y(49)*params(1)*y(29);
residual(16) = lhs - rhs;
lhs = y(27)+y(21)+y(24)*y(23)+y(8)/y(32)*y(7)+y(49)/y(32)*y(9)+y(25)*T(20)+y(37)*y(39);
rhs = y(28)+y(25)*y(31)+y(25)*(1-y(31)-params(18)/2*T(24))+y(48);
residual(17) = lhs - rhs;
lhs = y(47);
rhs = y(48);
residual(18) = lhs - rhs;
lhs = y(25);
rhs = y(25)*T(20)+y(27)+y(20)+y(40)+T(24)*y(25)*params(18)/2;
residual(19) = lhs - rhs;
lhs = y(20);
rhs = y(22)+y(21);
residual(20) = lhs - rhs;
lhs = y(39);
rhs = T(22)*params(28)*(1-y(38));
residual(21) = lhs - rhs;
lhs = y(19);
rhs = y(33)/y(62);
residual(22) = lhs - rhs;
lhs = y(33);
rhs = T(25)*T(29)*y(55);
residual(23) = lhs - rhs;
lhs = y(40);
rhs = (steady_state(7))*params(8)*y(51);
residual(24) = lhs - rhs;
lhs = y(37);
rhs = params(32)*y(56);
residual(25) = lhs - rhs;
lhs = y(41);
rhs = log(T(30));
residual(26) = lhs - rhs;
lhs = y(42);
rhs = log(T(31));
residual(27) = lhs - rhs;
lhs = y(43);
rhs = log(T(15));
residual(28) = lhs - rhs;
lhs = y(44);
rhs = y(32)-(steady_state(14));
residual(29) = lhs - rhs;
lhs = y(45);
rhs = y(33)-(steady_state(15));
residual(30) = lhs - rhs;
lhs = y(46);
rhs = log(T(32));
residual(31) = lhs - rhs;
lhs = log(y(50));
rhs = params(20)*log(y(10))+x(it_, 1);
residual(32) = lhs - rhs;
lhs = log(y(51));
rhs = params(21)*log(y(11))+x(it_, 2);
residual(33) = lhs - rhs;
lhs = log(y(52));
rhs = params(22)*log(y(12))+x(it_, 3);
residual(34) = lhs - rhs;
lhs = log(y(57));
rhs = params(27)*log(y(17))+x(it_, 8);
residual(35) = lhs - rhs;
lhs = log(y(54));
rhs = params(24)*log(y(14))+x(it_, 5);
residual(36) = lhs - rhs;
lhs = log(y(53));
rhs = params(23)*log(y(13))+x(it_, 4);
residual(37) = lhs - rhs;
lhs = log(y(55));
rhs = params(25)*log(y(15))+x(it_, 6);
residual(38) = lhs - rhs;
lhs = log(y(56));
rhs = params(26)*log(y(16))+x(it_, 7);
residual(39) = lhs - rhs;
lhs = log(y(58));
rhs = params(39)*log(y(18))+x(it_, 9);
residual(40) = lhs - rhs;

end
