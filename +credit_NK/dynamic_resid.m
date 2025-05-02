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
lhs = y(36);
rhs = y(57)*T(1);
residual(1) = lhs - rhs;
lhs = T(2)*y(21);
rhs = 1;
residual(2) = lhs - rhs;
lhs = y(36)*y(26);
rhs = params(7)*y(25)^params(6);
residual(3) = lhs - rhs;
lhs = y(59)*y(37);
rhs = 1+y(59)*y(37)*T(3)*T(4)+T(8)*T(9);
residual(4) = lhs - rhs;
lhs = T(2)*y(73)/y(68)+y(64)*params(35)*T(10);
rhs = 1;
residual(5) = lhs - rhs;
lhs = T(2)*y(72)/y(68)+y(63)*params(34)*T(11);
rhs = 1;
residual(6) = lhs - rhs;
lhs = y(27);
rhs = T(13)*T(14);
residual(7) = lhs - rhs;
lhs = y(30);
rhs = y(70)*y(58)*params(11)*y(28)/y(21)-y(25)*y(26)*params(10);
residual(8) = lhs - rhs;
lhs = y(59)*y(29)*T(16);
rhs = y(28)-y(5)*(1-params(3));
residual(9) = lhs - rhs;
lhs = y(31);
rhs = y(57)*T(17);
residual(10) = lhs - rhs;
lhs = 1-y(32);
rhs = y(21)*T(5);
residual(11) = lhs - rhs;
lhs = (1-y(32))*(y(70)*(1-params(3))+params(4)*y(71)*y(65)/y(28))+params(11)*y(58)*y(70)*y(32);
rhs = y(21)*y(37);
residual(12) = lhs - rhs;
lhs = y(26);
rhs = y(27)*(1-params(4))*y(38)/(y(25)*(1+params(10)*y(32)));
residual(13) = lhs - rhs;
residual(14) = 1-params(13)+params(13)*y(33)-y(34)*params(18)*(y(34)-(steady_state(14)))+T(19)*(y(68)-(steady_state(14)));
lhs = y(38);
rhs = y(33)-T(20)-y(39)*(1-params(31))*params(28)*(1-y(40))*T(21);
residual(15) = lhs - rhs;
lhs = (y(39)*params(28)*T(22)/(params(29)*params(30)))^(1/(params(30)-1));
rhs = y(40);
residual(16) = lhs - rhs;
lhs = y(29)+y(23)+y(26)*y(25)+y(8)/y(34)*y(7)+y(53)/y(34)*y(9)+y(54)/y(34)*y(10)+y(27)*T(20)+y(39)*y(41);
rhs = y(30)+y(27)*y(33)+y(27)*(1-y(33)-params(18)/2*T(23))+y(52)+y(51);
residual(17) = lhs - rhs;
lhs = y(50);
rhs = y(52);
residual(18) = lhs - rhs;
lhs = y(49);
rhs = y(51);
residual(19) = lhs - rhs;
lhs = y(52)+y(51);
rhs = params(40)*(y(30)+y(52)+y(51));
residual(20) = lhs - rhs;
lhs = y(30)+y(52)+y(51);
rhs = y(28)*0.99;
residual(21) = lhs - rhs;
lhs = y(27);
rhs = y(27)*T(20)+y(29)+y(22)+y(42)+T(23)*y(27)*params(18)/2;
residual(22) = lhs - rhs;
lhs = y(22);
rhs = y(24)+y(23);
residual(23) = lhs - rhs;
lhs = y(41);
rhs = T(22)*params(28)*(1-y(40));
residual(24) = lhs - rhs;
lhs = y(21);
rhs = y(35)/y(68);
residual(25) = lhs - rhs;
lhs = y(35);
rhs = T(24)*T(28)*y(60);
residual(26) = lhs - rhs;
lhs = y(42);
rhs = (steady_state(7))*params(8)*y(56);
residual(27) = lhs - rhs;
lhs = y(39);
rhs = params(32)*y(61);
residual(28) = lhs - rhs;
lhs = y(43);
rhs = log(y(27)/y(4));
residual(29) = lhs - rhs;
lhs = y(44);
rhs = log(y(22)/y(1));
residual(30) = lhs - rhs;
lhs = y(45);
rhs = log(T(15));
residual(31) = lhs - rhs;
lhs = y(46);
rhs = y(34)-(steady_state(14));
residual(32) = lhs - rhs;
lhs = y(47);
rhs = y(35)-(steady_state(15));
residual(33) = lhs - rhs;
lhs = y(48);
rhs = log(y(30)/y(7));
residual(34) = lhs - rhs;
lhs = log(y(55));
rhs = params(20)*log(y(11))+x(it_, 1);
residual(35) = lhs - rhs;
lhs = log(y(56));
rhs = params(21)*log(y(12))+x(it_, 2);
residual(36) = lhs - rhs;
lhs = log(y(57));
rhs = params(22)*log(y(13))+x(it_, 3);
residual(37) = lhs - rhs;
lhs = log(y(62));
rhs = params(27)*log(y(18))+x(it_, 8);
residual(38) = lhs - rhs;
lhs = log(y(59));
rhs = params(24)*log(y(15))+x(it_, 5);
residual(39) = lhs - rhs;
lhs = log(y(58));
rhs = params(23)*log(y(14))+x(it_, 4);
residual(40) = lhs - rhs;
lhs = log(y(60));
rhs = params(25)*log(y(16))+x(it_, 6);
residual(41) = lhs - rhs;
lhs = log(y(61));
rhs = params(26)*log(y(17))+x(it_, 7);
residual(42) = lhs - rhs;
lhs = log(y(64));
rhs = params(39)*log(y(20))+x(it_, 9);
residual(43) = lhs - rhs;
lhs = log(y(63));
rhs = params(38)*log(y(19))+x(it_, 10);
residual(44) = lhs - rhs;

end
