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
g1 = zeros(41, 73);
g1(1,3)=(-(y(52)*(-params(12))*T(29)));
g1(1,20)=(-(y(52)*T(29)));
g1(1,32)=1;
g1(1,52)=(-T(1));
g1(2,17)=params(2)*y(62)/y(32);
g1(2,32)=y(17)*(-(params(2)*y(62)))/(y(32)*y(32));
g1(2,62)=y(17)*params(2)/y(32);
g1(3,21)=(-(params(7)*getPowerDeriv(y(21),params(6),1)));
g1(3,22)=y(32);
g1(3,32)=y(22);
g1(4,6)=(-(y(54)*y(33)*T(2)*(y(6)*y(25)*(-(3*y(25)))/(y(6)*y(6))-y(25)*(3*y(25)/y(6)-4))/(y(6)*y(6))));
g1(4,25)=(-(y(54)*y(33)*T(2)*(3*y(25)/y(6)-4+y(25)*3/y(6))/y(6)+T(8)*T(5)*(-((-y(59))/(y(25)*y(25))))+T(7)*(-y(59))/(y(25)*y(25))*2*y(59)/y(25)));
g1(4,59)=(-(T(8)*T(5)*(-(1/y(25)))+T(7)*2*y(59)/y(25)*1/y(25)));
g1(4,27)=(-(T(8)*T(6)*params(14)*y(63)*y(65)*(-(params(1)*y(60)))/(y(27)*y(27))));
g1(4,60)=(-(T(8)*T(6)*params(14)*y(63)*y(65)*params(1)/y(27)));
g1(4,33)=y(54)-T(3)*y(54)*T(2);
g1(4,63)=(-(T(8)*T(6)*params(14)*T(4)*y(65)));
g1(4,54)=y(33)-T(3)*y(33)*T(2);
g1(4,65)=(-(T(8)*T(6)*params(14)*T(4)*y(63)));
g1(5,21)=(-(T(10)*getPowerDeriv(y(21),1-params(4),1)));
g1(5,23)=1;
g1(5,5)=(-(T(11)*y(50)*params(9)*getPowerDeriv(y(5),params(4),1)));
g1(5,50)=(-(T(11)*params(9)*T(9)));
g1(6,17)=(-((-(y(63)*y(53)*params(11)*y(24)))/(y(17)*y(17))));
g1(6,21)=y(22)*params(10);
g1(6,22)=y(21)*params(10);
g1(6,24)=(-(y(63)*y(53)*params(11)/y(17)));
g1(6,26)=1;
g1(6,63)=(-(y(53)*params(11)*y(24)/y(17)));
g1(6,53)=(-(y(24)*y(63)*params(11)/y(17)));
g1(7,5)=1-params(3);
g1(7,24)=(-1);
g1(7,6)=y(54)*y(25)*(-(T(2)*(-y(25))/(y(6)*y(6))*2*(T(12)-1)));
g1(7,25)=y(54)*T(13)+y(54)*y(25)*(-(T(2)*2*(T(12)-1)*1/y(6)));
g1(7,54)=y(25)*T(13);
g1(8,2)=(-(y(52)*(-params(12))*T(28)));
g1(8,19)=(-(y(52)*T(28)));
g1(8,27)=1;
g1(8,52)=(-T(14));
g1(9,17)=(-T(4));
g1(9,27)=(-(y(17)*(-(params(1)*y(60)))/(y(27)*y(27))));
g1(9,60)=(-(y(17)*params(1)/y(27)));
g1(9,28)=(-1);
g1(10,17)=(-y(33));
g1(10,58)=(1-y(28))*params(4)*y(64)/y(24);
g1(10,24)=(1-y(28))*(-(params(4)*y(64)*y(58)))/(y(24)*y(24));
g1(10,28)=params(11)*y(63)*y(53)-(y(63)*(1-params(3))+params(4)*y(64)*y(58)/y(24));
g1(10,33)=(-y(17));
g1(10,63)=(1-params(3))*(1-y(28))+params(11)*y(53)*y(28);
g1(10,64)=(1-y(28))*params(4)*y(58)/y(24);
g1(10,53)=params(11)*y(63)*y(28);
g1(11,21)=(-((-(y(23)*(1-params(4))*y(34)*(1+params(10)*y(28))))/(y(21)*(1+params(10)*y(28))*y(21)*(1+params(10)*y(28)))));
g1(11,22)=1;
g1(11,23)=(-((1-params(4))*y(34)/(y(21)*(1+params(10)*y(28)))));
g1(11,28)=(-((-(y(23)*(1-params(4))*y(34)*y(21)*params(10)))/(y(21)*(1+params(10)*y(28))*y(21)*(1+params(10)*y(28)))));
g1(11,34)=(-(y(23)*(1-params(4))/(y(21)*(1+params(10)*y(28)))));
g1(12,23)=(y(61)-(steady_state(14)))*y(61)*(-(y(58)*y(60)*params(1)*params(18)/y(27)))/(y(23)*y(23));
g1(12,58)=(y(61)-(steady_state(14)))*y(61)*y(60)*params(1)*params(18)/y(27)/y(23);
g1(12,27)=(y(61)-(steady_state(14)))*y(61)*y(58)*(-(y(60)*params(1)*params(18)))/(y(27)*y(27))/y(23);
g1(12,60)=(y(61)-(steady_state(14)))*y(61)*y(58)*params(1)*params(18)/y(27)/y(23);
g1(12,29)=params(13);
g1(12,30)=(-(params(18)*y(30)+params(18)*(y(30)-(steady_state(14)))));
g1(12,61)=T(16)+T(15)*(y(61)-(steady_state(14)));
g1(13,23)=y(35)*(1-params(31))*params(28)*(1-y(36))*getPowerDeriv(y(23),(-params(31)),1);
g1(13,29)=(-1);
g1(13,34)=1;
g1(13,35)=T(18)*(1-y(36))*(1-params(31))*params(28);
g1(13,36)=(-((-T(33))-T(18)*(-(y(35)*(1-params(31))*params(28)))));
g1(14,23)=y(35)*params(28)*T(30)/(params(29)*params(30))*T(31);
g1(14,35)=T(31)*params(28)*T(19)/(params(29)*params(30));
g1(14,36)=(-1);
g1(15,19)=1;
g1(15,21)=y(22);
g1(15,22)=y(21);
g1(15,23)=T(17)-(y(29)+1-y(29)-params(18)/2*T(20));
g1(15,25)=1;
g1(15,7)=y(8)/y(30);
g1(15,26)=(-1);
g1(15,30)=y(7)*(-y(8))/(y(30)*y(30))-y(23)*(-(params(18)/2*2*(y(30)-(steady_state(14)))));
g1(15,8)=y(7)*1/y(30);
g1(15,35)=y(37);
g1(15,36)=y(23)*T(33);
g1(15,37)=y(35);
g1(16,18)=(-1);
g1(16,23)=1-(T(17)+params(18)/2*T(20));
g1(16,25)=(-1);
g1(16,30)=(-(y(23)*params(18)/2*2*(y(30)-(steady_state(14)))));
g1(16,36)=(-(y(23)*T(33)));
g1(16,38)=(-1);
g1(17,18)=1;
g1(17,19)=(-1);
g1(17,20)=(-1);
g1(18,23)=(-(params(28)*(1-y(36))*T(30)));
g1(18,36)=(-(T(19)*(-params(28))));
g1(18,37)=1;
g1(19,17)=1;
g1(19,61)=(-((-y(31))/(y(61)*y(61))));
g1(19,31)=(-(1/y(61)));
g1(20,23)=(-(y(55)*T(21)*T(23)*1/(steady_state(7))*getPowerDeriv(T(24),params(16),1)*T(32)));
g1(20,30)=(-(y(55)*T(21)*T(32)*T(25)*(steady_state(15))*1/(steady_state(14))*getPowerDeriv(T(22),params(17),1)));
g1(20,8)=(-(y(55)*T(27)*getPowerDeriv(y(8),params(15),1)));
g1(20,31)=1;
g1(20,55)=(-(T(21)*T(27)));
g1(21,38)=1;
g1(21,51)=(-((steady_state(7))*params(8)));
g1(22,35)=1;
g1(22,56)=(-params(32));
g1(23,4)=(-((-y(23))/(y(4)*y(4))/(y(23)/y(4))));
g1(23,23)=(-(1/y(4)/(y(23)/y(4))));
g1(23,39)=1;
g1(24,1)=(-((-y(18))/(y(1)*y(1))/(y(18)/y(1))));
g1(24,18)=(-(1/y(1)/(y(18)/y(1))));
g1(24,40)=1;
g1(25,6)=(-((-y(25))/(y(6)*y(6))/T(12)));
g1(25,25)=(-(1/y(6)/T(12)));
g1(25,41)=1;
g1(26,30)=(-1);
g1(26,42)=1;
g1(27,31)=(-1);
g1(27,43)=1;
g1(28,7)=(-((-y(26))/(y(7)*y(7))/(y(26)/y(7))));
g1(28,26)=(-(1/y(7)/(y(26)/y(7))));
g1(28,44)=1;
g1(29,23)=(-(1/(steady_state(7))/T(24)));
g1(29,45)=1;
g1(30,18)=(-(1/(steady_state(2))/(y(18)/(steady_state(2)))));
g1(30,46)=1;
g1(31,25)=(-(1/(steady_state(9))/(y(25)/(steady_state(9)))));
g1(31,47)=1;
g1(32,30)=(-(1/(steady_state(14))/T(22)));
g1(32,48)=1;
g1(33,31)=(-(1/(steady_state(15))/(y(31)/(steady_state(15)))));
g1(33,49)=1;
g1(34,9)=(-(params(20)*1/y(9)));
g1(34,50)=1/y(50);
g1(34,66)=(-1);
g1(35,10)=(-(params(21)*1/y(10)));
g1(35,51)=1/y(51);
g1(35,67)=(-1);
g1(36,11)=(-(params(22)*1/y(11)));
g1(36,52)=1/y(52);
g1(36,68)=(-1);
g1(37,16)=(-(params(27)*1/y(16)));
g1(37,57)=1/y(57);
g1(37,73)=(-1);
g1(38,13)=(-(params(24)*1/y(13)));
g1(38,54)=1/y(54);
g1(38,70)=(-1);
g1(39,12)=(-(params(23)*1/y(12)));
g1(39,53)=1/y(53);
g1(39,69)=(-1);
g1(40,14)=(-(params(25)*1/y(14)));
g1(40,55)=1/y(55);
g1(40,71)=(-1);
g1(41,15)=(-(params(26)*1/y(15)));
g1(41,56)=1/y(56);
g1(41,72)=(-1);

end
