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
    T = policy_noE.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(38, 73);
g1(1,3)=(-(y(50)*(-params(12))*T(27)));
g1(1,22)=(-(y(50)*T(27)));
g1(1,34)=1;
g1(1,50)=(-T(1));
g1(2,19)=params(2)*y(61)/y(34);
g1(2,34)=y(19)*(-(params(2)*y(61)))/(y(34)*y(34));
g1(2,61)=y(19)*params(2)/y(34);
g1(3,23)=(-(params(7)*getPowerDeriv(y(23),params(6),1)));
g1(3,24)=y(34);
g1(3,34)=y(24);
g1(4,6)=(-(y(52)*y(35)*T(2)*(y(6)*y(27)*(-(3*y(27)))/(y(6)*y(6))-y(27)*(3*y(27)/y(6)-4))/(y(6)*y(6))));
g1(4,27)=(-(y(52)*y(35)*T(2)*(3*y(27)/y(6)-4+y(27)*3/y(6))/y(6)+T(8)*T(5)*(-((-y(58))/(y(27)*y(27))))+T(7)*(-y(58))/(y(27)*y(27))*2*y(58)/y(27)));
g1(4,58)=(-(T(8)*T(5)*(-(1/y(27)))+T(7)*2*y(58)/y(27)*1/y(27)));
g1(4,29)=(-(T(8)*T(6)*params(14)*y(62)*y(64)*(-(params(1)*y(59)))/(y(29)*y(29))));
g1(4,59)=(-(T(8)*T(6)*params(14)*y(62)*y(64)*params(1)/y(29)));
g1(4,35)=y(52)-T(3)*y(52)*T(2);
g1(4,62)=(-(T(8)*T(6)*params(14)*T(4)*y(64)));
g1(4,52)=y(35)-T(3)*y(35)*T(2);
g1(4,64)=(-(T(8)*T(6)*params(14)*T(4)*y(62)));
g1(5,23)=(-(T(10)*getPowerDeriv(y(23),1-params(4),1)));
g1(5,25)=1;
g1(5,5)=(-(T(11)*y(48)*params(9)*getPowerDeriv(y(5),params(4),1)));
g1(5,48)=(-(T(11)*params(9)*T(9)));
g1(6,19)=(-((-(y(62)*y(51)*params(11)*y(26)))/(y(19)*y(19))));
g1(6,23)=y(24)*y(56)*params(10);
g1(6,24)=y(23)*y(56)*params(10);
g1(6,26)=(-(y(62)*y(51)*params(11)/y(19)));
g1(6,28)=1;
g1(6,62)=(-(y(51)*params(11)*y(26)/y(19)));
g1(6,51)=(-(y(26)*y(62)*params(11)/y(19)));
g1(6,56)=y(23)*y(24)*params(10);
g1(7,5)=1-params(3);
g1(7,26)=(-1);
g1(7,6)=y(52)*y(27)*(-(T(2)*(-y(27))/(y(6)*y(6))*2*(T(12)-1)));
g1(7,27)=y(52)*T(13)+y(52)*y(27)*(-(T(2)*2*(T(12)-1)*1/y(6)));
g1(7,52)=y(27)*T(13);
g1(8,2)=(-(y(50)*(-params(12))*T(26)));
g1(8,21)=(-(y(50)*T(26)));
g1(8,29)=1;
g1(8,50)=(-T(14));
g1(9,19)=(-T(4));
g1(9,29)=(-(y(19)*(-(params(1)*y(59)))/(y(29)*y(29))));
g1(9,59)=(-(y(19)*params(1)/y(29)));
g1(9,30)=(-1);
g1(10,19)=(-y(35));
g1(10,57)=(1-y(30))*params(4)*y(63)/y(26);
g1(10,26)=(1-y(30))*(-(params(4)*y(63)*y(57)))/(y(26)*y(26));
g1(10,30)=params(11)*y(62)*y(51)-(y(62)*(1-params(3))+params(4)*y(63)*y(57)/y(26));
g1(10,35)=(-y(19));
g1(10,62)=(1-params(3))*(1-y(30))+params(11)*y(51)*y(30);
g1(10,63)=(1-y(30))*params(4)*y(57)/y(26);
g1(10,51)=params(11)*y(62)*y(30);
g1(11,23)=(-((-(y(25)*(1-params(4))*y(36)*(1+y(56)*params(10)*y(30))))/(y(23)*(1+y(56)*params(10)*y(30))*y(23)*(1+y(56)*params(10)*y(30)))));
g1(11,24)=1;
g1(11,25)=(-((1-params(4))*y(36)/(y(23)*(1+y(56)*params(10)*y(30)))));
g1(11,30)=(-((-(y(25)*(1-params(4))*y(36)*y(23)*y(56)*params(10)))/(y(23)*(1+y(56)*params(10)*y(30))*y(23)*(1+y(56)*params(10)*y(30)))));
g1(11,36)=(-(y(25)*(1-params(4))/(y(23)*(1+y(56)*params(10)*y(30)))));
g1(11,56)=(-((-(y(25)*(1-params(4))*y(36)*y(23)*params(10)*y(30)))/(y(23)*(1+y(56)*params(10)*y(30))*y(23)*(1+y(56)*params(10)*y(30)))));
g1(12,25)=(y(60)-(steady_state(14)))*y(60)*(-(y(57)*y(59)*params(1)*params(18)/y(29)))/(y(25)*y(25));
g1(12,57)=(y(60)-(steady_state(14)))*y(60)*y(59)*params(1)*params(18)/y(29)/y(25);
g1(12,29)=(y(60)-(steady_state(14)))*y(60)*y(57)*(-(y(59)*params(1)*params(18)))/(y(29)*y(29))/y(25);
g1(12,59)=(y(60)-(steady_state(14)))*y(60)*y(57)*params(1)*params(18)/y(29)/y(25);
g1(12,31)=params(13);
g1(12,32)=(-(params(18)*y(32)+params(18)*(y(32)-(steady_state(14)))));
g1(12,60)=T(16)+T(15)*(y(60)-(steady_state(14)));
g1(13,25)=y(37)*(1-params(33))*params(30)*(1-y(38))*getPowerDeriv(y(25),(-params(33)),1);
g1(13,31)=(-1);
g1(13,36)=1;
g1(13,37)=T(18)*(1-y(38))*(1-params(33))*params(30);
g1(13,38)=(-((-T(31))-T(18)*(-(y(37)*(1-params(33))*params(30)))));
g1(14,25)=y(37)*params(30)*T(28)/(params(31)*params(32))*T(29);
g1(14,37)=T(29)*params(30)*T(19)/(params(31)*params(32));
g1(14,38)=(-1);
g1(15,21)=1;
g1(15,23)=y(24);
g1(15,24)=y(23);
g1(15,25)=T(17)-(y(31)+1-y(31)-params(18)/2*T(20));
g1(15,27)=1;
g1(15,7)=y(8)/y(32);
g1(15,28)=(-1);
g1(15,32)=y(7)*(-y(8))/(y(32)*y(32))-y(25)*(-(params(18)/2*2*(y(32)-(steady_state(14)))));
g1(15,8)=y(7)*1/y(32);
g1(15,37)=y(39);
g1(15,38)=y(25)*T(31);
g1(15,39)=y(37);
g1(16,20)=(-1);
g1(16,25)=1-(T(17)+params(18)/2*T(20));
g1(16,27)=(-1);
g1(16,32)=(-(y(25)*params(18)/2*2*(y(32)-(steady_state(14)))));
g1(16,38)=(-(y(25)*T(31)));
g1(16,40)=(-1);
g1(17,20)=1;
g1(17,21)=(-1);
g1(17,22)=(-1);
g1(18,25)=(-(params(30)*(1-y(38))*T(28)));
g1(18,38)=(-(T(19)*(-params(30))));
g1(18,39)=1;
g1(19,19)=1;
g1(19,60)=(-((-y(33))/(y(60)*y(60))));
g1(19,33)=(-(1/y(60)));
g1(20,25)=(-(y(53)*T(21)*T(22)*1/(steady_state(7))*getPowerDeriv(y(25)/(steady_state(7)),params(16),1)*T(30)));
g1(20,32)=(-(y(53)*T(21)*T(30)*T(23)*(steady_state(15))*1/(steady_state(14))*getPowerDeriv(y(32)/(steady_state(14)),params(17),1)));
g1(20,8)=(-(y(53)*T(25)*getPowerDeriv(y(8),params(15),1)));
g1(20,33)=1;
g1(20,53)=(-(T(21)*T(25)));
g1(21,40)=1;
g1(21,49)=(-((steady_state(7))*params(8)));
g1(22,37)=1;
g1(22,54)=(-params(34));
g1(23,4)=(-((-y(25))/(y(4)*y(4))/(y(25)/y(4))));
g1(23,25)=(-(1/y(4)/(y(25)/y(4))));
g1(23,41)=1;
g1(24,1)=(-((-y(20))/(y(1)*y(1))/(y(20)/y(1))));
g1(24,20)=(-(1/y(1)/(y(20)/y(1))));
g1(24,42)=1;
g1(25,6)=(-((-y(27))/(y(6)*y(6))/T(12)));
g1(25,27)=(-(1/y(6)/T(12)));
g1(25,43)=1;
g1(26,32)=(-1);
g1(26,44)=1;
g1(27,33)=(-1);
g1(27,45)=1;
g1(28,7)=(-((-y(28))/(y(7)*y(7))/(y(28)/y(7))));
g1(28,28)=(-(1/y(7)/(y(28)/y(7))));
g1(28,46)=1;
g1(29,9)=(-((-y(39))/(y(9)*y(9))/(y(39)/y(9))));
g1(29,39)=(-(1/y(9)/(y(39)/y(9))));
g1(29,47)=1;
g1(30,10)=(-(params(20)*1/y(10)));
g1(30,48)=1/y(48);
g1(30,65)=(-1);
g1(31,11)=(-(params(21)*1/y(11)));
g1(31,49)=1/y(49);
g1(31,66)=(-1);
g1(32,12)=(-(params(22)*1/y(12)));
g1(32,50)=1/y(50);
g1(32,67)=(-1);
g1(33,17)=(-(params(27)*1/y(17)));
g1(33,55)=1/y(55);
g1(33,72)=(-1);
g1(34,14)=(-(params(24)*1/y(14)));
g1(34,52)=1/y(52);
g1(34,69)=(-1);
g1(35,13)=(-(params(23)*1/y(13)));
g1(35,51)=1/y(51);
g1(35,68)=(-1);
g1(36,15)=(-(params(25)*1/y(15)));
g1(36,53)=1/y(53);
g1(36,70)=(-1);
g1(37,16)=(-(params(26)*1/y(16)));
g1(37,54)=1/y(54);
g1(37,71)=(-1);
g1(38,18)=(-(params(29)*1/y(18)));
g1(38,56)=1/y(56);
g1(38,73)=(-1);

end
