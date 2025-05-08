function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = credit_NK.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(43, 76);
g1(1,3)=(-(y(55)*(-params(12))*T(29)));
g1(1,21)=(-(y(55)*T(29)));
g1(1,33)=1;
g1(1,55)=(-T(1));
g1(2,18)=params(2)*y(65)/y(33);
g1(2,33)=y(18)*(-(params(2)*y(65)))/(y(33)*y(33));
g1(2,65)=y(18)*params(2)/y(33);
g1(3,22)=(-(params(7)*getPowerDeriv(y(22),params(6),1)));
g1(3,23)=y(33);
g1(3,33)=y(23);
g1(4,6)=(-(y(57)*y(34)*T(2)*(y(6)*y(26)*(-(3*y(26)))/(y(6)*y(6))-y(26)*(3*y(26)/y(6)-4))/(y(6)*y(6))));
g1(4,26)=(-(y(57)*y(34)*T(2)*(3*y(26)/y(6)-4+y(26)*3/y(6))/y(6)+T(8)*T(5)*(-((-y(62))/(y(26)*y(26))))+T(7)*(-y(62))/(y(26)*y(26))*2*y(62)/y(26)));
g1(4,62)=(-(T(8)*T(5)*(-(1/y(26)))+T(7)*2*y(62)/y(26)*1/y(26)));
g1(4,28)=(-(T(8)*T(6)*params(14)*y(66)*y(68)*(-(params(1)*y(63)))/(y(28)*y(28))));
g1(4,63)=(-(T(8)*T(6)*params(14)*y(66)*y(68)*params(1)/y(28)));
g1(4,34)=y(57)-T(3)*y(57)*T(2);
g1(4,66)=(-(T(8)*T(6)*params(14)*T(4)*y(68)));
g1(4,57)=y(34)-T(3)*y(34)*T(2);
g1(4,68)=(-(T(8)*T(6)*params(14)*T(4)*y(66)));
g1(5,22)=(-(T(10)*getPowerDeriv(y(22),1-params(4),1)));
g1(5,24)=1;
g1(5,5)=(-(T(11)*y(53)*params(9)*getPowerDeriv(y(5),params(4),1)));
g1(5,53)=(-(T(11)*params(9)*T(9)));
g1(6,18)=(-((-(y(66)*y(56)*params(11)*y(25)))/(y(18)*y(18))));
g1(6,22)=y(23)*params(10);
g1(6,23)=y(22)*params(10);
g1(6,25)=(-(y(66)*y(56)*params(11)/y(18)));
g1(6,27)=1;
g1(6,66)=(-(y(56)*params(11)*y(25)/y(18)));
g1(6,56)=(-(y(25)*y(66)*params(11)/y(18)));
g1(7,5)=1-params(3);
g1(7,25)=(-1);
g1(7,6)=y(57)*y(26)*(-(T(2)*(-y(26))/(y(6)*y(6))*2*(T(12)-1)));
g1(7,26)=y(57)*T(13)+y(57)*y(26)*(-(T(2)*2*(T(12)-1)*1/y(6)));
g1(7,57)=y(26)*T(13);
g1(8,2)=(-(y(55)*(-params(12))*T(28)));
g1(8,20)=(-(y(55)*T(28)));
g1(8,28)=1;
g1(8,55)=(-T(14));
g1(9,18)=(-T(4));
g1(9,28)=(-(y(18)*(-(params(1)*y(63)))/(y(28)*y(28))));
g1(9,63)=(-(y(18)*params(1)/y(28)));
g1(9,29)=(-1);
g1(10,18)=(-y(34));
g1(10,61)=(1-y(29))*params(4)*y(67)/y(25);
g1(10,25)=(1-y(29))*(-(params(4)*y(67)*y(61)))/(y(25)*y(25));
g1(10,29)=params(11)*y(66)*y(56)-(y(66)*(1-params(3))+params(4)*y(67)*y(61)/y(25));
g1(10,34)=(-y(18));
g1(10,66)=(1-params(3))*(1-y(29))+params(11)*y(56)*y(29);
g1(10,67)=(1-y(29))*params(4)*y(61)/y(25);
g1(10,56)=params(11)*y(66)*y(29);
g1(11,22)=(-((-(y(24)*(1-params(4))*y(35)*(1+params(10)*y(29))))/(y(22)*(1+params(10)*y(29))*y(22)*(1+params(10)*y(29)))));
g1(11,23)=1;
g1(11,24)=(-((1-params(4))*y(35)/(y(22)*(1+params(10)*y(29)))));
g1(11,29)=(-((-(y(24)*(1-params(4))*y(35)*y(22)*params(10)))/(y(22)*(1+params(10)*y(29))*y(22)*(1+params(10)*y(29)))));
g1(11,35)=(-(y(24)*(1-params(4))/(y(22)*(1+params(10)*y(29)))));
g1(12,24)=(y(64)-(steady_state(14)))*y(64)*(-(y(61)*y(63)*params(1)*params(18)/y(28)))/(y(24)*y(24));
g1(12,61)=(y(64)-(steady_state(14)))*y(64)*y(63)*params(1)*params(18)/y(28)/y(24);
g1(12,28)=(y(64)-(steady_state(14)))*y(64)*y(61)*(-(y(63)*params(1)*params(18)))/(y(28)*y(28))/y(24);
g1(12,63)=(y(64)-(steady_state(14)))*y(64)*y(61)*params(1)*params(18)/y(28)/y(24);
g1(12,30)=params(13);
g1(12,31)=(-(params(18)*y(31)+params(18)*(y(31)-(steady_state(14)))));
g1(12,64)=T(16)+T(15)*(y(64)-(steady_state(14)));
g1(13,24)=y(36)*(1-params(31))*params(28)*(1-y(37))*getPowerDeriv(y(24),(-params(31)),1);
g1(13,30)=(-1);
g1(13,35)=1;
g1(13,36)=T(18)*(1-y(37))*(1-params(31))*params(28);
g1(13,37)=(-((-T(33))-T(18)*(-(y(36)*(1-params(31))*params(28)))));
g1(14,24)=y(36)*params(28)*T(30)/(params(29)*params(30))*T(31);
g1(14,36)=T(31)*params(28)*T(19)/(params(29)*params(30));
g1(14,37)=(-1);
g1(15,20)=1;
g1(15,22)=y(23);
g1(15,23)=y(22);
g1(15,24)=T(17)-(y(30)+1-y(30)-params(18)/2*T(20));
g1(15,26)=1;
g1(15,7)=y(8)/y(31);
g1(15,27)=(-1);
g1(15,31)=y(7)*(-y(8))/(y(31)*y(31))-y(24)*(-(params(18)/2*2*(y(31)-(steady_state(14)))));
g1(15,8)=y(7)*1/y(31);
g1(15,36)=y(38);
g1(15,37)=y(24)*T(33);
g1(15,38)=y(36);
g1(16,19)=(-1);
g1(16,24)=1-(T(17)+params(18)/2*T(20));
g1(16,26)=(-1);
g1(16,31)=(-(y(24)*params(18)/2*2*(y(31)-(steady_state(14)))));
g1(16,37)=(-(y(24)*T(33)));
g1(16,39)=(-1);
g1(17,19)=1;
g1(17,20)=(-1);
g1(17,21)=(-1);
g1(18,24)=(-(params(28)*(1-y(37))*T(30)));
g1(18,37)=(-(T(19)*(-params(28))));
g1(18,38)=1;
g1(19,18)=1;
g1(19,64)=(-((-y(32))/(y(64)*y(64))));
g1(19,32)=(-(1/y(64)));
g1(20,24)=(-(y(58)*T(21)*T(23)*1/(steady_state(7))*getPowerDeriv(T(24),params(16),1)*T(32)));
g1(20,31)=(-(y(58)*T(21)*T(32)*T(25)*(steady_state(15))*1/(steady_state(14))*getPowerDeriv(T(22),params(17),1)));
g1(20,8)=(-(y(58)*T(27)*getPowerDeriv(y(8),params(15),1)));
g1(20,32)=1;
g1(20,58)=(-(T(21)*T(27)));
g1(21,39)=1;
g1(21,54)=(-((steady_state(7))*params(8)));
g1(22,36)=1;
g1(22,59)=(-params(32));
g1(23,4)=(-((-y(24))/(y(4)*y(4))/(y(24)/y(4))));
g1(23,24)=(-(1/y(4)/(y(24)/y(4))));
g1(23,40)=1;
g1(24,1)=(-((-y(19))/(y(1)*y(1))/(y(19)/y(1))));
g1(24,19)=(-(1/y(1)/(y(19)/y(1))));
g1(24,41)=1;
g1(25,6)=(-((-y(26))/(y(6)*y(6))/T(12)));
g1(25,26)=(-(1/y(6)/T(12)));
g1(25,42)=1;
g1(26,31)=(-1);
g1(26,43)=1;
g1(27,32)=(-1);
g1(27,44)=1;
g1(28,7)=(-((-y(27))/(y(7)*y(7))/(y(27)/y(7))));
g1(28,27)=(-(1/y(7)/(y(27)/y(7))));
g1(28,45)=1;
g1(29,7)=1/y(7);
g1(29,27)=(-(1/y(27)));
g1(29,51)=1;
g1(30,9)=1/y(9);
g1(30,38)=(-(1/y(38)));
g1(30,52)=1;
g1(31,24)=(-(1/(steady_state(7))/T(24)));
g1(31,46)=1;
g1(32,19)=(-(1/(steady_state(2))/(y(19)/(steady_state(2)))));
g1(32,47)=1;
g1(33,26)=(-(1/(steady_state(9))/(y(26)/(steady_state(9)))));
g1(33,48)=1;
g1(34,31)=(-(1/(steady_state(14))/T(22)));
g1(34,49)=1;
g1(35,32)=(-(1/(steady_state(15))/(y(32)/(steady_state(15)))));
g1(35,50)=1;
g1(36,10)=(-(params(20)*1/y(10)));
g1(36,53)=1/y(53);
g1(36,69)=(-1);
g1(37,11)=(-(params(21)*1/y(11)));
g1(37,54)=1/y(54);
g1(37,70)=(-1);
g1(38,12)=(-(params(22)*1/y(12)));
g1(38,55)=1/y(55);
g1(38,71)=(-1);
g1(39,17)=(-(params(27)*1/y(17)));
g1(39,60)=1/y(60);
g1(39,76)=(-1);
g1(40,14)=(-(params(24)*1/y(14)));
g1(40,57)=1/y(57);
g1(40,73)=(-1);
g1(41,13)=(-(params(23)*1/y(13)));
g1(41,56)=1/y(56);
g1(41,72)=(-1);
g1(42,15)=(-(params(25)*1/y(15)));
g1(42,58)=1/y(58);
g1(42,74)=(-1);
g1(43,16)=(-(params(26)*1/y(16)));
g1(43,59)=1/y(59);
g1(43,75)=(-1);

end
