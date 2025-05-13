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
    T = credit_NK_SLB.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(40, 75);
g1(1,3)=(-(y(54)*(-params(14))*T(27)));
g1(1,24)=(-(y(54)*T(27)));
g1(1,39)=1;
g1(1,54)=(-T(1));
g1(2,20)=params(4)*y(64)/y(39);
g1(2,39)=y(20)*(-(params(4)*y(64)))/(y(39)*y(39));
g1(2,64)=y(20)*params(4)/y(39);
g1(3,25)=(-(params(9)*getPowerDeriv(y(25),params(8),1)));
g1(3,26)=y(39);
g1(3,39)=y(26);
g1(4,6)=(-(y(56)*y(40)*T(2)*(y(6)*y(29)*(-(3*y(29)))/(y(6)*y(6))-y(29)*(3*y(29)/y(6)-4))/(y(6)*y(6))));
g1(4,29)=(-(y(56)*y(40)*T(2)*(3*y(29)/y(6)-4+y(29)*3/y(6))/y(6)+T(8)*T(5)*(-((-y(61))/(y(29)*y(29))))+T(7)*(-y(61))/(y(29)*y(29))*2*y(61)/y(29)));
g1(4,61)=(-(T(8)*T(5)*(-(1/y(29)))+T(7)*2*y(61)/y(29)*1/y(29)));
g1(4,33)=(-(T(8)*T(6)*params(16)*y(65)*y(67)*params(3)*(-y(62))/(y(33)*y(33))));
g1(4,62)=(-(T(8)*T(6)*params(16)*y(65)*y(67)*params(3)*1/y(33)));
g1(4,40)=y(56)-T(3)*y(56)*T(2);
g1(4,65)=(-(T(8)*T(6)*params(16)*T(4)*y(67)));
g1(4,56)=y(40)-T(3)*y(40)*T(2);
g1(4,67)=(-(T(8)*T(6)*params(16)*T(4)*y(65)));
g1(5,25)=(-(T(10)*getPowerDeriv(y(25),1-params(6),1)));
g1(5,27)=1;
g1(5,5)=(-(T(11)*y(52)*params(11)*getPowerDeriv(y(5),params(6),1)));
g1(5,52)=(-(T(11)*params(11)*T(9)));
g1(6,20)=(-((-(y(65)*y(55)*params(13)*y(28)))/(y(20)*y(20))));
g1(6,25)=y(26)*params(12);
g1(6,26)=y(25)*params(12);
g1(6,28)=(-(y(65)*y(55)*params(13)/y(20)));
g1(6,30)=1;
g1(6,31)=1;
g1(6,65)=(-(y(55)*params(13)*y(28)/y(20)));
g1(6,55)=(-(y(28)*y(65)*params(13)/y(20)));
g1(7,5)=1-params(5);
g1(7,28)=(-1);
g1(7,6)=y(56)*y(29)*(-(T(2)*(-y(29))/(y(6)*y(6))*2*(T(12)-1)));
g1(7,29)=y(56)*T(13)+y(56)*y(29)*(-(T(2)*2*(T(12)-1)*1/y(6)));
g1(7,56)=y(29)*T(13);
g1(8,2)=(-(y(54)*(-params(14))*T(26)));
g1(8,23)=(-(y(54)*T(26)));
g1(8,33)=1;
g1(8,54)=(-T(14));
g1(9,20)=(-T(4));
g1(9,33)=(-(y(20)*params(3)*(-y(62))/(y(33)*y(33))));
g1(9,62)=(-(y(20)*params(3)*1/y(33)));
g1(9,34)=(-1);
g1(10,20)=(-y(40));
g1(10,60)=(1-y(34))*params(6)*y(66)/y(28);
g1(10,28)=(1-y(34))*(-(params(6)*y(66)*y(60)))/(y(28)*y(28));
g1(10,34)=params(13)*y(65)*y(55)-(y(65)*(1-params(5))+params(6)*y(66)*y(60)/y(28));
g1(10,40)=(-y(20));
g1(10,65)=(1-params(5))*(1-y(34))+params(13)*y(55)*y(34);
g1(10,66)=(1-y(34))*params(6)*y(60)/y(28);
g1(10,55)=params(13)*y(65)*y(34);
g1(11,25)=(-((-(y(27)*(1-params(6))*y(41)*(1+params(12)*y(34))))/(y(25)*(1+params(12)*y(34))*y(25)*(1+params(12)*y(34)))));
g1(11,26)=1;
g1(11,27)=(-((1-params(6))*y(41)/(y(25)*(1+params(12)*y(34)))));
g1(11,34)=(-((-(y(27)*(1-params(6))*y(41)*y(25)*params(12)))/(y(25)*(1+params(12)*y(34))*y(25)*(1+params(12)*y(34)))));
g1(11,41)=(-(y(27)*(1-params(6))/(y(25)*(1+params(12)*y(34)))));
g1(12,27)=(y(63)-(steady_state(17)))*y(63)*y(62)/y(33)*params(3)*params(20)*(-y(60))/(y(27)*y(27));
g1(12,60)=(y(63)-(steady_state(17)))*y(63)*y(62)/y(33)*params(3)*params(20)*1/y(27);
g1(12,33)=(y(63)-(steady_state(17)))*y(63)*y(60)/y(27)*params(3)*params(20)*(-y(62))/(y(33)*y(33));
g1(12,62)=(y(63)-(steady_state(17)))*y(63)*y(60)/y(27)*params(3)*params(20)*1/y(33);
g1(12,35)=params(15);
g1(12,36)=(-(params(20)*y(36)+params(20)*(y(36)-(steady_state(17)))));
g1(12,63)=T(16)+T(15)*(y(63)-(steady_state(17)));
g1(13,43)=1;
g1(14,27)=y(42)*(1-params(34))*params(31)*(1-y(43))*getPowerDeriv(y(27),(-params(34)),1);
g1(14,35)=(-1);
g1(14,41)=1;
g1(14,42)=T(18)*(1-y(43))*(1-params(34))*params(31);
g1(14,43)=(-((-T(29))-T(18)*(-(y(42)*(1-params(34))*params(31)))));
g1(15,23)=1;
g1(15,25)=y(26);
g1(15,26)=y(25);
g1(15,27)=T(17)-(y(35)+1-y(35)-T(19));
g1(15,29)=1;
g1(15,7)=y(10)/y(36);
g1(15,30)=(-1);
g1(15,8)=y(11)/y(36);
g1(15,31)=(-1);
g1(15,36)=y(7)*(-y(10))/(y(36)*y(36))+y(8)*(-y(11))/(y(36)*y(36))-y(27)*(-(params(20)/2*2*(y(36)-(steady_state(17)))));
g1(15,10)=y(7)*1/y(36);
g1(15,11)=y(8)*1/y(36);
g1(15,42)=y(44);
g1(15,43)=y(27)*T(29);
g1(15,44)=y(42);
g1(16,22)=(-1);
g1(16,27)=1-(T(17)+T(19));
g1(16,29)=(-1);
g1(16,36)=(-(y(27)*params(20)/2*2*(y(36)-(steady_state(17)))));
g1(16,43)=(-(y(27)*T(29)));
g1(16,45)=(-1);
g1(17,22)=1;
g1(17,23)=(-1);
g1(17,24)=(-1);
g1(18,27)=(-(params(31)*(1-y(43))*getPowerDeriv(y(27),1-params(34),1)));
g1(18,43)=(-(T(20)*(-params(31))));
g1(18,44)=1;
g1(19,21)=(-y(32));
g1(19,31)=1;
g1(19,32)=(-y(21));
g1(20,30)=(-1);
g1(20,31)=(-1);
g1(20,32)=1;
g1(21,37)=(-1);
g1(21,38)=1;
g1(22,21)=(-params(2));
g1(22,43)=params(32)*params(33)*getPowerDeriv(y(43),params(33)-1,1);
g1(23,20)=1;
g1(23,63)=(-((-y(37))/(y(63)*y(63))));
g1(23,37)=(-(1/y(63)));
g1(24,27)=(-(y(57)*T(21)*T(22)*1/(steady_state(8))*getPowerDeriv(y(27)/(steady_state(8)),params(18),1)*T(28)));
g1(24,36)=(-(y(57)*T(21)*T(28)*T(23)*(steady_state(18))*1/(steady_state(17))*getPowerDeriv(y(36)/(steady_state(17)),params(19),1)));
g1(24,10)=(-(y(57)*T(25)*getPowerDeriv(y(10),params(17),1)));
g1(24,37)=1;
g1(24,57)=(-(T(21)*T(25)));
g1(25,45)=1;
g1(25,53)=(-((steady_state(8))*params(10)));
g1(26,42)=1;
g1(26,58)=(-params(35));
g1(27,4)=(-((-y(27))/(y(4)*y(4))/(y(27)/y(4))));
g1(27,27)=(-(1/y(4)/(y(27)/y(4))));
g1(27,46)=1;
g1(28,1)=(-((-y(22))/(y(1)*y(1))/(y(22)/y(1))));
g1(28,22)=(-(1/y(1)/(y(22)/y(1))));
g1(28,47)=1;
g1(29,6)=(-((-y(29))/(y(6)*y(6))/T(12)));
g1(29,29)=(-(1/y(6)/T(12)));
g1(29,48)=1;
g1(30,36)=(-1);
g1(30,49)=1;
g1(31,37)=(-1);
g1(31,50)=1;
g1(32,9)=(-((-y(32))/(y(9)*y(9))/(y(32)/y(9))));
g1(32,32)=(-(1/y(9)/(y(32)/y(9))));
g1(32,51)=1;
g1(33,12)=(-(params(23)*1/y(12)));
g1(33,52)=1/y(52);
g1(33,68)=(-1);
g1(34,13)=(-(params(24)*1/y(13)));
g1(34,53)=1/y(53);
g1(34,69)=(-1);
g1(35,14)=(-(params(25)*1/y(14)));
g1(35,54)=1/y(54);
g1(35,70)=(-1);
g1(36,16)=(-(params(27)*1/y(16)));
g1(36,56)=1/y(56);
g1(36,72)=(-1);
g1(37,15)=(-(params(26)*1/y(15)));
g1(37,55)=1/y(55);
g1(37,71)=(-1);
g1(38,17)=(-(params(28)*1/y(17)));
g1(38,57)=1/y(57);
g1(38,73)=(-1);
g1(39,18)=(-(params(29)*1/y(18)));
g1(39,58)=1/y(58);
g1(39,74)=(-1);
g1(40,19)=(-(params(30)*1/y(19)));
g1(40,59)=1/y(59);
g1(40,75)=(-1);

end
