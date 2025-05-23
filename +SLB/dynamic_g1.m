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
    T = SLB.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(40, 75);
g1(1,3)=(-(y(52)*(-params(12))*T(36)));
g1(1,22)=(-(y(52)*T(36)));
g1(1,34)=1;
g1(1,52)=(-T(1));
g1(2,19)=params(2)*y(63)/y(34);
g1(2,34)=y(19)*(-(params(2)*y(63)))/(y(34)*y(34));
g1(2,63)=y(19)*params(2)/y(34);
g1(3,23)=(-(params(7)*getPowerDeriv(y(23),params(6),1)));
g1(3,24)=y(34);
g1(3,34)=y(24);
g1(4,6)=(-(y(54)*y(35)*T(2)*T(54)/(y(6)*y(6))));
g1(4,27)=(-(y(54)*y(35)*T(2)*T(56)/y(6)+T(8)*T(5)*(-T(57))+T(7)*T(59)));
g1(4,60)=(-(T(8)*T(5)*(-T(61))+T(7)*T(62)));
g1(4,29)=(-(T(8)*T(6)*T(66)));
g1(4,61)=(-(T(8)*T(6)*T(70)));
g1(4,35)=y(54)-T(3)*y(54)*T(2);
g1(4,64)=(-(T(8)*T(6)*params(14)*T(4)*y(66)));
g1(4,54)=y(35)-T(3)*y(35)*T(2);
g1(4,66)=(-(T(8)*T(6)*params(14)*T(4)*y(64)));
g1(5,32)=T(10)*T(73)*T(74);
g1(5,62)=(-(params(2)*y(63)/y(34)*y(49)))/(y(62)*y(62));
g1(5,34)=y(49)*params(2)*(-y(63))/(y(34)*y(34))/y(62)+T(11)*T(78);
g1(5,63)=y(49)*params(2)*1/y(34)/y(62);
g1(5,47)=T(10)*T(74)*T(76);
g1(5,49)=params(2)*y(63)/y(34)/y(62);
g1(5,58)=T(9)*T(11);
g1(6,23)=(-(T(13)*T(37)));
g1(6,25)=1;
g1(6,5)=(-(T(14)*T(53)));
g1(6,50)=(-(T(14)*params(9)*T(12)));
g1(7,19)=(-((-(y(64)*y(53)*params(11)*y(26)))/(y(19)*y(19))));
g1(7,23)=y(24)*params(10);
g1(7,24)=y(23)*params(10);
g1(7,26)=(-(y(64)*y(53)*params(11)/y(19)));
g1(7,28)=1;
g1(7,64)=(-(y(53)*params(11)*y(26)/y(19)));
g1(7,53)=(-(y(26)*y(64)*params(11)/y(19)));
g1(8,5)=1-params(3);
g1(8,26)=(-1);
g1(8,6)=y(54)*y(27)*(-(T(2)*T(55)*2*(T(15)-1)));
g1(8,27)=y(54)*T(16)+y(54)*y(27)*(-(T(2)*2*(T(15)-1)*T(60)));
g1(8,54)=y(27)*T(16);
g1(9,2)=(-(y(52)*(-params(12))*T(35)));
g1(9,21)=(-(y(52)*T(35)));
g1(9,29)=1;
g1(9,52)=(-T(17));
g1(10,19)=(-T(4));
g1(10,29)=(-(y(19)*T(65)));
g1(10,61)=(-(y(19)*T(69)));
g1(10,30)=(-1);
g1(11,19)=(-y(35));
g1(11,59)=(1-y(30))*params(4)*y(65)/y(26);
g1(11,26)=(1-y(30))*(-(params(4)*y(65)*y(59)))/(y(26)*y(26));
g1(11,30)=params(11)*y(64)*y(53)-(y(64)*(1-params(3))+params(4)*y(65)*y(59)/y(26));
g1(11,35)=(-y(19));
g1(11,64)=(1-params(3))*(1-y(30))+params(11)*y(53)*y(30);
g1(11,65)=(1-y(30))*params(4)*y(59)/y(26);
g1(11,53)=params(11)*y(64)*y(30);
g1(12,23)=(-((-(y(25)*(1-params(4))*y(36)*(1+params(10)*y(30))))/T(38)));
g1(12,24)=1;
g1(12,25)=(-((1-params(4))*y(36)/(y(23)*(1+params(10)*y(30)))));
g1(12,30)=(-((-(y(25)*(1-params(4))*y(36)*y(23)*params(10)))/T(38)));
g1(12,36)=(-(y(25)*(1-params(4))/(y(23)*(1+params(10)*y(30)))));
g1(13,25)=(y(62)-(steady_state(14)))*T(41);
g1(13,59)=(y(62)-(steady_state(14)))*T(51);
g1(13,29)=(y(62)-(steady_state(14)))*T(68);
g1(13,61)=(y(62)-(steady_state(14)))*T(72);
g1(13,31)=params(13);
g1(13,32)=(-(y(32)*params(18)+params(18)*(y(32)-(steady_state(14)))));
g1(13,62)=T(19)+T(18)*(y(62)-(steady_state(14)));
g1(14,25)=y(37)*(1-params(31))*params(28)*(1-y(38))*T(42);
g1(14,31)=(-1);
g1(14,36)=1;
g1(14,37)=T(21)*(1-y(38))*(1-params(31))*params(28);
g1(14,38)=(-((-T(79))-T(21)*(-(y(37)*(1-params(31))*params(28)))));
g1(15,25)=T(44)*T(45);
g1(15,37)=T(45)*params(28)*T(22)/(params(29)*params(30));
g1(15,38)=(-1);
g1(16,29)=1-params(1)*y(49);
g1(16,49)=(-(params(1)*y(29)));
g1(17,21)=1;
g1(17,23)=y(24);
g1(17,24)=y(23);
g1(17,25)=T(20)-(y(31)+1-y(31)-params(18)/2*T(24));
g1(17,27)=1;
g1(17,7)=y(8)/y(32);
g1(17,28)=(-1);
g1(17,32)=y(7)*(-y(8))/(y(32)*y(32))+y(9)*(-y(49))/(y(32)*y(32))-y(25)*(-(params(18)/2*2*(y(32)-(steady_state(14)))));
g1(17,8)=y(7)*T(76);
g1(17,37)=y(39);
g1(17,38)=y(25)*T(79);
g1(17,39)=y(37);
g1(17,9)=y(49)/y(32);
g1(17,48)=(-1);
g1(17,49)=y(9)*T(76);
g1(18,47)=1;
g1(18,48)=(-1);
g1(19,20)=(-1);
g1(19,25)=1-(T(20)+params(18)/2*T(24));
g1(19,27)=(-1);
g1(19,32)=(-(y(25)*params(18)/2*2*(y(32)-(steady_state(14)))));
g1(19,38)=(-(y(25)*T(79)));
g1(19,40)=(-1);
g1(20,20)=1;
g1(20,21)=(-1);
g1(20,22)=(-1);
g1(21,25)=(-(params(28)*(1-y(38))*T(43)));
g1(21,38)=(-(T(22)*(-params(28))));
g1(21,39)=1;
g1(22,19)=1;
g1(22,62)=(-((-y(33))/(y(62)*y(62))));
g1(22,33)=(-(1/y(62)));
g1(23,25)=(-(y(55)*T(25)*T(47)*T(48)));
g1(23,32)=(-(y(55)*T(25)*T(48)*T(27)*T(75)));
g1(23,8)=(-(y(55)*T(29)*T(77)));
g1(23,33)=1;
g1(23,55)=(-(T(25)*T(29)));
g1(24,40)=1;
g1(24,51)=(-((steady_state(7))*params(8)));
g1(25,37)=1;
g1(25,56)=(-params(32));
g1(26,4)=(-(T(39)/T(30)));
g1(26,25)=(-(T(49)/T(30)));
g1(26,41)=1;
g1(27,1)=(-(T(33)/T(31)));
g1(27,20)=(-(T(34)/T(31)));
g1(27,42)=1;
g1(28,6)=(-(T(55)/T(15)));
g1(28,27)=(-(T(60)/T(15)));
g1(28,43)=1;
g1(29,32)=(-1);
g1(29,44)=1;
g1(30,33)=(-1);
g1(30,45)=1;
g1(31,7)=(-(T(63)/T(32)));
g1(31,28)=(-(T(64)/T(32)));
g1(31,46)=1;
g1(32,10)=(-(params(20)*1/y(10)));
g1(32,50)=1/y(50);
g1(32,67)=(-1);
g1(33,11)=(-(params(21)*1/y(11)));
g1(33,51)=1/y(51);
g1(33,68)=(-1);
g1(34,12)=(-(params(22)*1/y(12)));
g1(34,52)=1/y(52);
g1(34,69)=(-1);
g1(35,17)=(-(params(27)*1/y(17)));
g1(35,57)=1/y(57);
g1(35,74)=(-1);
g1(36,14)=(-(params(24)*1/y(14)));
g1(36,54)=1/y(54);
g1(36,71)=(-1);
g1(37,13)=(-(params(23)*1/y(13)));
g1(37,53)=1/y(53);
g1(37,70)=(-1);
g1(38,15)=(-(params(25)*1/y(15)));
g1(38,55)=1/y(55);
g1(38,72)=(-1);
g1(39,16)=(-(params(26)*1/y(16)));
g1(39,56)=1/y(56);
g1(39,73)=(-1);
g1(40,18)=(-(params(39)*1/y(18)));
g1(40,58)=1/y(58);
g1(40,75)=(-1);

end
