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
    T = SLBnum3.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(43, 83);
g1(1,3)=(-(y(55)*(-params(7))*T(29)));
g1(1,24)=(-(y(55)*T(29)));
g1(1,32)=1;
g1(1,55)=(-T(1));
g1(2,21)=params(2)*y(67)/y(32);
g1(2,32)=y(21)*(-(params(2)*y(67)))/(y(32)*y(32));
g1(2,67)=y(21)*params(2)/y(32);
g1(3,25)=(-(params(19)*getPowerDeriv(y(25),params(6),1)));
g1(3,26)=y(32);
g1(3,32)=y(26);
g1(4,6)=(-(y(57)*y(37)*T(2)*(y(6)*y(29)*(-(3*y(29)))/(y(6)*y(6))-y(29)*(3*y(29)/y(6)-4))/(y(6)*y(6))));
g1(4,29)=(-(y(57)*y(37)*T(2)*(3*y(29)/y(6)-4+y(29)*3/y(6))/y(6)+T(8)*T(5)*(-((-y(65))/(y(29)*y(29))))+T(7)*(-y(65))/(y(29)*y(29))*2*y(65)/y(29)));
g1(4,65)=(-(T(8)*T(5)*(-(1/y(29)))+T(7)*2*y(65)/y(29)*1/y(29)));
g1(4,31)=(-(T(8)*T(6)*params(15)*y(69)*y(72)*T(33)));
g1(4,66)=(-(T(8)*T(6)*params(15)*y(69)*y(72)*params(1)/y(31)));
g1(4,37)=y(57)-T(3)*y(57)*T(2);
g1(4,69)=(-(T(8)*T(6)*params(15)*T(4)*y(72)));
g1(4,57)=y(37)-T(3)*y(37)*T(2);
g1(4,72)=(-(T(8)*T(6)*params(15)*T(4)*y(69)));
g1(5,32)=y(71)*params(2)*(-y(67))/(y(32)*y(32))/y(68)+T(9)*(-params(27))/(y(32)*y(32));
g1(5,67)=y(71)*params(2)*1/y(32)/y(68);
g1(5,68)=(-(params(2)*y(67)/y(32)*y(71)))/(y(68)*y(68));
g1(5,43)=params(27)/y(32)*getPowerDeriv(y(43),(-params(26)),1);
g1(5,71)=params(2)*y(67)/y(32)/y(68);
g1(6,25)=(-(T(11)*getPowerDeriv(y(25),1-params(4),1)));
g1(6,27)=1;
g1(6,5)=(-(T(12)*y(53)*params(8)*getPowerDeriv(y(5),params(4),1)));
g1(6,53)=(-(T(12)*params(8)*T(10)));
g1(7,21)=(-((-(y(69)*y(56)*params(18)*y(28)))/(y(21)*y(21))));
g1(7,25)=y(26)*params(17);
g1(7,26)=y(25)*params(17);
g1(7,28)=(-(y(69)*y(56)*params(18)/y(21)));
g1(7,30)=1;
g1(7,69)=(-(y(56)*params(18)*y(28)/y(21)));
g1(7,56)=(-(y(28)*y(69)*params(18)/y(21)));
g1(8,5)=1-params(3);
g1(8,28)=(-1);
g1(8,6)=y(57)*y(29)*(-(T(2)*(-y(29))/(y(6)*y(6))*2*(T(13)-1)));
g1(8,29)=y(57)*T(14)+y(57)*y(29)*(-(T(2)*2*(T(13)-1)*1/y(6)));
g1(8,57)=y(29)*T(14);
g1(9,2)=(-(y(55)*(-params(7))*T(28)));
g1(9,23)=(-(y(55)*T(28)));
g1(9,31)=1;
g1(9,55)=(-T(15));
g1(10,21)=(-T(4));
g1(10,31)=(-(y(21)*T(33)));
g1(10,66)=(-(y(21)*params(1)/y(31)));
g1(10,33)=(-1);
g1(11,21)=y(69)*y(46)*y(63)*params(33)*1/y(45)-y(37);
g1(11,64)=(1-y(33))*params(4)*y(70)/y(28);
g1(11,28)=(1-y(33))*(-(params(4)*y(70)*y(64)))/(y(28)*y(28));
g1(11,33)=params(18)*y(69)*y(56)-(y(69)*(1-params(3))+params(4)*y(70)*y(64)/y(28));
g1(11,37)=(-y(21));
g1(11,69)=(1-params(3))*(1-y(33))+params(18)*y(56)*y(33)+T(16)*params(33)*y(46)*y(63);
g1(11,70)=(1-y(33))*params(4)*y(64)/y(28);
g1(11,45)=y(69)*y(46)*y(63)*params(33)*(-y(21))/(y(45)*y(45));
g1(11,46)=T(16)*params(33)*y(69)*y(63);
g1(11,56)=params(18)*y(69)*y(33);
g1(11,63)=T(16)*y(69)*y(46)*params(33);
g1(12,25)=(-((-(y(27)*(1-params(4))*y(38)*(1+params(17)*y(33))))/(y(25)*(1+params(17)*y(33))*y(25)*(1+params(17)*y(33)))));
g1(12,26)=1;
g1(12,27)=(-((1-params(4))*y(38)/(y(25)*(1+params(17)*y(33)))));
g1(12,33)=(-((-(y(27)*(1-params(4))*y(38)*y(25)*params(17)))/(y(25)*(1+params(17)*y(33))*y(25)*(1+params(17)*y(33)))));
g1(12,38)=(-(y(27)*(1-params(4))/(y(25)*(1+params(17)*y(33)))));
g1(13,27)=(y(68)-(steady_state(15)))*y(68)*(-(y(64)*y(66)*params(1)*params(10)/y(31)))/(y(27)*y(27));
g1(13,64)=(y(68)-(steady_state(15)))*y(68)*y(66)*params(1)*params(10)/y(31)/y(27);
g1(13,31)=(y(68)-(steady_state(15)))*y(68)*y(64)*(-(y(66)*params(1)*params(10)))/(y(31)*y(31))/y(27);
g1(13,66)=(y(68)-(steady_state(15)))*y(68)*y(64)*params(1)*params(10)/y(31)/y(27);
g1(13,34)=params(14);
g1(13,35)=(-(params(10)*y(35)+params(10)*(y(35)-(steady_state(15)))));
g1(13,68)=T(18)+T(17)*(y(68)-(steady_state(15)));
g1(14,27)=y(39)*(1-params(22))*params(21)*(1-y(40))*getPowerDeriv(y(27),(-params(22)),1);
g1(14,34)=(-1);
g1(14,38)=1;
g1(14,39)=T(20)*(1-y(40))*(1-params(22))*params(21);
g1(14,40)=(-((-(params(23)*T(34)))-T(20)*(-(y(39)*(1-params(22))*params(21)))-params(23)*y(46)*params(32)*T(34)));
g1(14,46)=T(19)*params(23)*params(32);
g1(15,27)=(-(y(39)*params(21)*T(30)/(params(23)*params(24)*(1+y(46)))*T(31)));
g1(15,39)=(-(T(31)*params(21)*T(21)/(params(23)*params(24)*(1+y(46)))));
g1(15,40)=1;
g1(15,46)=(-(T(31)*(-(y(39)*params(21)*T(21)*params(23)*params(24)))/(params(23)*params(24)*(1+y(46))*params(23)*params(24)*(1+y(46)))));
g1(16,31)=(-(y(45)*T(33)));
g1(16,66)=(-(y(45)*params(1)/y(31)));
g1(16,45)=(-T(4));
g1(16,46)=(-1);
g1(17,23)=1;
g1(17,25)=y(26);
g1(17,26)=y(25);
g1(17,27)=params(23)*T(19)-(y(34)+1-y(34)-T(22));
g1(17,29)=1;
g1(17,7)=y(8)/y(35);
g1(17,30)=(-1);
g1(17,35)=y(7)*(-y(8))/(y(35)*y(35))+y(9)*(-y(44))/(y(35)*y(35))-y(27)*(-(params(10)/2*2*(y(35)-(steady_state(15)))));
g1(17,8)=y(7)*1/y(35);
g1(17,39)=y(41);
g1(17,40)=y(27)*params(23)*T(34);
g1(17,41)=y(39);
g1(17,9)=y(44)/y(35);
g1(17,43)=(-1);
g1(17,44)=y(9)*1/y(35);
g1(18,22)=(-1);
g1(18,27)=1-(params(23)*T(19)+T(22));
g1(18,29)=(-1);
g1(18,35)=(-(y(27)*params(10)/2*2*(y(35)-(steady_state(15)))));
g1(18,40)=(-(y(27)*params(23)*T(34)));
g1(18,42)=(-1);
g1(19,22)=1;
g1(19,23)=(-1);
g1(19,24)=(-1);
g1(20,27)=(-(params(21)*(1-y(40))*T(30)));
g1(20,40)=(-(T(21)*(-params(21))));
g1(20,41)=1;
g1(21,21)=1;
g1(21,68)=(-((-y(36))/(y(68)*y(68))));
g1(21,36)=(-(1/y(68)));
g1(22,68)=(-((-y(44))/(y(68)*y(68))));
g1(22,44)=(-(1/y(68)));
g1(22,45)=1;
g1(23,36)=(-1);
g1(23,44)=1;
g1(24,27)=(-(y(58)*T(23)*T(24)*1/(steady_state(7))*getPowerDeriv(y(27)/(steady_state(7)),params(12),1)*T(32)));
g1(24,35)=(-(y(58)*T(23)*T(32)*T(25)*(steady_state(16))*1/(steady_state(15))*getPowerDeriv(y(35)/(steady_state(15)),params(11),1)));
g1(24,8)=(-(y(58)*T(27)*getPowerDeriv(y(8),params(13),1)));
g1(24,36)=1;
g1(24,58)=(-(T(23)*T(27)));
g1(25,42)=1;
g1(25,54)=(-((steady_state(7))*params(9)));
g1(26,39)=1;
g1(26,59)=(-params(20));
g1(27,4)=(-((-y(27))/(y(4)*y(4))/(y(27)/y(4))));
g1(27,27)=(-(1/y(4)/(y(27)/y(4))));
g1(27,47)=1;
g1(28,1)=(-((-y(22))/(y(1)*y(1))/(y(22)/y(1))));
g1(28,22)=(-(1/y(1)/(y(22)/y(1))));
g1(28,48)=1;
g1(29,6)=(-((-y(29))/(y(6)*y(6))/T(13)));
g1(29,29)=(-(1/y(6)/T(13)));
g1(29,49)=1;
g1(30,35)=(-1);
g1(30,50)=1;
g1(31,36)=(-1);
g1(31,51)=1;
g1(32,7)=(-((-y(30))/(y(7)*y(7))/(y(30)/y(7))));
g1(32,30)=(-(1/y(7)/(y(30)/y(7))));
g1(32,52)=1;
g1(33,10)=(-(params(34)*1/y(10)));
g1(33,53)=1/y(53);
g1(33,73)=(-1);
g1(34,11)=(-(params(35)*1/y(11)));
g1(34,54)=1/y(54);
g1(34,74)=(-1);
g1(35,12)=(-(params(36)*1/y(12)));
g1(35,55)=1/y(55);
g1(35,75)=(-1);
g1(36,17)=(-(params(41)*1/y(17)));
g1(36,60)=1/y(60);
g1(36,80)=(-1);
g1(37,14)=(-(params(38)*1/y(14)));
g1(37,57)=1/y(57);
g1(37,77)=(-1);
g1(38,13)=(-(params(37)*1/y(13)));
g1(38,56)=1/y(56);
g1(38,76)=(-1);
g1(39,15)=(-(params(39)*1/y(15)));
g1(39,58)=1/y(58);
g1(39,78)=(-1);
g1(40,16)=(-(params(40)*1/y(16)));
g1(40,59)=1/y(59);
g1(40,79)=(-1);
g1(41,18)=(-(params(42)*1/y(18)));
g1(41,61)=1/y(61);
g1(41,81)=(-1);
g1(42,19)=(-(params(43)*1/y(19)));
g1(42,62)=1/y(62);
g1(42,82)=(-1);
g1(43,20)=(-(params(44)*1/y(20)));
g1(43,63)=1/y(63);
g1(43,83)=(-1);

end
