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
    T = estim_NK.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(35, 61);
g1(1,1)=(-(y(43)*(-params(9))*T(30)));
g1(1,14)=(-(y(43)*T(30)));
g1(1,23)=1;
g1(1,43)=(-T(1));
g1(2,13)=T(2);
g1(2,23)=y(13)*(-(params(1)*y(51)))/(y(23)*y(23));
g1(2,51)=y(13)*params(1)/y(23);
g1(3,15)=(-(params(6)*getPowerDeriv(y(15),params(5),1)));
g1(3,16)=y(23);
g1(3,23)=y(16);
g1(4,4)=(-(y(44)*y(24)*T(3)*(y(4)*y(19)*(-(3*y(19)))/(y(4)*y(4))-y(19)*(3*y(19)/y(4)-4))/(y(4)*y(4))));
g1(4,19)=(-(y(44)*y(24)*T(3)*(3*y(19)/y(4)-4+y(19)*3/y(4))/y(4)+T(8)*T(5)*(-((-y(49))/(y(19)*y(19))))+T(7)*(-y(49))/(y(19)*y(19))*2*y(49)/y(19)));
g1(4,49)=(-(T(8)*T(5)*(-(1/y(19)))+T(7)*2*y(49)/y(19)*1/y(19)));
g1(4,23)=(-(T(8)*T(6)*params(11)*y(52)*y(54)*(-(params(1)*y(51)))/(y(23)*y(23))));
g1(4,51)=(-(T(8)*T(6)*params(11)*y(52)*y(54)*params(1)/y(23)));
g1(4,24)=y(44)-T(4)*y(44)*T(3);
g1(4,52)=(-(T(8)*T(6)*params(11)*T(2)*y(54)));
g1(4,44)=y(24)-T(4)*y(24)*T(3);
g1(4,54)=(-(T(8)*T(6)*params(11)*T(2)*y(52)));
g1(5,15)=(-(T(10)*getPowerDeriv(y(15),1-params(3),1)));
g1(5,17)=1;
g1(5,3)=(-(T(11)*y(41)*params(8)*getPowerDeriv(y(3),params(3),1)));
g1(5,41)=(-(T(11)*params(8)*T(9)));
g1(6,3)=1-params(2);
g1(6,18)=(-1);
g1(6,4)=y(44)*y(19)*(-(T(3)*(-y(19))/(y(4)*y(4))*2*(T(12)-1)));
g1(6,19)=y(44)*T(13)+y(44)*y(19)*(-(T(3)*2*(T(12)-1)*1/y(4)));
g1(6,44)=y(19)*T(13);
g1(7,13)=(-y(24));
g1(7,48)=params(3)*y(53)/y(18);
g1(7,18)=(-(params(3)*y(53)*y(48)))/(y(18)*y(18));
g1(7,24)=(-y(13));
g1(7,52)=1-params(2);
g1(7,53)=params(3)*y(48)/y(18);
g1(8,15)=(-((-(y(17)*(1-params(3))*y(25)))/(y(15)*y(15))));
g1(8,16)=1;
g1(8,17)=(-((1-params(3))*y(25)/y(15)));
g1(8,25)=(-(y(17)*(1-params(3))/y(15)));
g1(9,17)=(y(50)-(steady_state(9)))*y(50)*(-(y(48)*y(51)*params(1)*params(16)/y(23)))/(y(17)*y(17));
g1(9,48)=(y(50)-(steady_state(9)))*y(50)*y(51)*params(1)*params(16)/y(23)/y(17);
g1(9,20)=params(10)*y(47);
g1(9,21)=(-(params(16)*y(21)+params(16)*(y(21)-(steady_state(9)))));
g1(9,50)=T(15)+T(14)*(y(50)-(steady_state(9)));
g1(9,23)=(y(50)-(steady_state(9)))*y(50)*y(48)*(-(y(51)*params(1)*params(16)))/(y(23)*y(23))/y(17);
g1(9,51)=(y(50)-(steady_state(9)))*y(50)*y(48)*params(1)*params(16)/y(23)/y(17);
g1(9,47)=params(10)*y(20)-params(10);
g1(10,17)=y(26)*(1-params(29))*params(26)*(1-y(27))*getPowerDeriv(y(17),(-params(29)),1);
g1(10,20)=(-1);
g1(10,25)=1;
g1(10,26)=T(17)*(1-y(27))*(1-params(29))*params(26);
g1(10,27)=(-((-T(35))-T(17)*(-(y(26)*(1-params(29))*params(26)))));
g1(11,17)=y(26)*params(26)*T(32)/(params(27)*params(28))*T(33);
g1(11,26)=T(33)*params(26)*T(18)/(params(27)*params(28));
g1(11,27)=(-1);
g1(12,14)=(-1);
g1(12,17)=1-(T(16)+T(19)*params(16)/2);
g1(12,19)=(-1);
g1(12,21)=(-(y(17)*params(16)/2*2*(y(21)-(steady_state(9)))));
g1(12,27)=(-(y(17)*T(35)));
g1(12,29)=(-1);
g1(13,17)=(-(params(26)*(1-y(27))*T(32)));
g1(13,27)=(-(T(18)*(-params(26))));
g1(13,28)=1;
g1(14,13)=1;
g1(14,50)=(-((-y(22))/(y(50)*y(50))));
g1(14,22)=(-(1/y(50)));
g1(15,2)=(-(y(45)*T(27)*(-y(17))/(y(2)*y(2))*T(31)));
g1(15,17)=(-(y(45)*(T(29)*T(20)*T(22)*1/(steady_state(5))*getPowerDeriv(T(23),params(13),1)*T(34)+T(27)*T(31)*1/y(2))));
g1(15,21)=(-(y(45)*T(29)*T(20)*T(34)*T(24)*(steady_state(10))*1/(steady_state(9))*getPowerDeriv(T(21),params(15),1)));
g1(15,5)=(-(y(45)*T(29)*T(26)*getPowerDeriv(y(5),params(12),1)));
g1(15,22)=1;
g1(15,45)=(-(T(27)*T(29)));
g1(16,29)=1;
g1(16,42)=(-((steady_state(5))*params(7)));
g1(17,26)=1;
g1(17,46)=(-params(30));
g1(18,2)=(-((-y(17))/(y(2)*y(2))/T(28)));
g1(18,17)=(-(1/y(2)/T(28)));
g1(18,30)=1;
g1(19,1)=(-((-y(14))/(y(1)*y(1))/(y(14)/y(1))));
g1(19,14)=(-(1/y(1)/(y(14)/y(1))));
g1(19,31)=1;
g1(20,4)=(-((-y(19))/(y(4)*y(4))/T(12)));
g1(20,19)=(-(1/y(4)/T(12)));
g1(20,32)=1;
g1(21,21)=(-1);
g1(21,33)=1;
g1(22,22)=(-1);
g1(22,34)=1;
g1(23,15)=(-(1/(steady_state(3))/(y(15)/(steady_state(3)))));
g1(23,35)=1;
g1(24,17)=(-(1/(steady_state(5))/T(23)));
g1(24,36)=1;
g1(25,14)=(-(1/(steady_state(2))/(y(14)/(steady_state(2)))));
g1(25,37)=1;
g1(26,19)=(-(1/(steady_state(7))/(y(19)/(steady_state(7)))));
g1(26,38)=1;
g1(27,21)=(-(1/(steady_state(9))/T(21)));
g1(27,39)=1;
g1(28,22)=(-(1/(steady_state(10))/(y(22)/(steady_state(10)))));
g1(28,40)=1;
g1(29,6)=(-(params(19)*1/y(6)));
g1(29,41)=1/y(41);
g1(29,55)=(-1);
g1(30,7)=(-(params(20)*1/y(7)));
g1(30,42)=1/y(42);
g1(30,56)=(-1);
g1(31,8)=(-(params(21)*1/y(8)));
g1(31,43)=1/y(43);
g1(31,57)=(-1);
g1(32,12)=(-(params(25)*1/y(12)));
g1(32,47)=1/y(47);
g1(32,61)=(-(params(11)/params(10)));
g1(33,9)=(-(params(22)*1/y(9)));
g1(33,44)=1/y(44);
g1(33,58)=(-1);
g1(34,10)=(-(params(23)*1/y(10)));
g1(34,45)=1/y(45);
g1(34,59)=(-1);
g1(35,11)=(-(params(24)*1/y(11)));
g1(35,46)=1/y(46);
g1(35,60)=(-1);

end
