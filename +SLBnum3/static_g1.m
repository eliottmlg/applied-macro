function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = SLBnum3.static_g1_tt(T, y, x, params);
end
g1 = zeros(43, 43);
g1(1,4)=(-(y(35)*(1-params(7))*getPowerDeriv(y(4)-y(4)*params(7),(-params(5)),1)));
g1(1,12)=1;
g1(1,35)=(-T(1));
g1(2,1)=params(2);
g1(3,5)=(-(params(19)*getPowerDeriv(y(5),params(6),1)));
g1(3,6)=y(12);
g1(3,12)=y(6);
g1(4,17)=y(37)-(1+(-y(9))/y(9))*y(37)*params(15)/2;
g1(4,37)=y(17)-(1+(-y(9))/y(9))*y(17)*params(15)/2;
g1(5,12)=T(2)*(-params(27))/(y(12)*y(12));
g1(5,15)=(-(params(2)*y(24)))/(y(15)*y(15));
g1(5,23)=params(27)/y(12)*getPowerDeriv(y(23),(-params(26)),1);
g1(5,24)=params(2)/y(15);
g1(6,5)=(-(T(4)*getPowerDeriv(y(5),1-params(4),1)));
g1(6,7)=1;
g1(6,8)=(-(T(5)*y(33)*params(8)*getPowerDeriv(y(8),params(4),1)));
g1(6,33)=(-(T(5)*params(8)*T(3)));
g1(7,1)=(-((-(y(8)*y(17)*y(36)*params(18)))/(y(1)*y(1))));
g1(7,5)=y(6)*params(17);
g1(7,6)=y(5)*params(17);
g1(7,8)=(-(y(17)*y(36)*params(18)/y(1)));
g1(7,10)=1;
g1(7,17)=(-(y(8)*y(36)*params(18)/y(1)));
g1(7,36)=(-(y(8)*y(17)*params(18)/y(1)));
g1(8,8)=(-(1-(1-params(3))));
g1(8,9)=y(37);
g1(8,37)=y(9);
g1(9,3)=(-(y(35)*(1-params(7))*getPowerDeriv(y(3)-params(7)*y(3),(-params(5)),1)));
g1(9,11)=1;
g1(9,35)=(-T(6));
g1(10,1)=(-params(1));
g1(10,13)=(-1);
g1(11,1)=y(17)*y(26)*y(43)*params(33)*1/y(25)-y(17);
g1(11,7)=(1-y(13))*params(4)*y(18)/y(8);
g1(11,8)=(1-y(13))*(-(y(7)*params(4)*y(18)))/(y(8)*y(8));
g1(11,13)=params(18)*y(17)*y(36)-(y(17)*(1-params(3))+y(7)*params(4)*y(18)/y(8));
g1(11,17)=(1-params(3))*(1-y(13))+params(18)*y(36)*y(13)+T(7)*params(33)*y(26)*y(43)-y(1);
g1(11,18)=(1-y(13))*y(7)*params(4)/y(8);
g1(11,25)=y(17)*y(26)*y(43)*params(33)*(-y(1))/(y(25)*y(25));
g1(11,26)=T(7)*params(33)*y(17)*y(43);
g1(11,36)=params(18)*y(17)*y(13);
g1(11,43)=T(7)*y(17)*y(26)*params(33);
g1(12,5)=(-((-(y(7)*(1-params(4))*y(18)*(1+params(17)*y(13))))/(y(5)*(1+params(17)*y(13))*y(5)*(1+params(17)*y(13)))));
g1(12,6)=1;
g1(12,7)=(-((1-params(4))*y(18)/(y(5)*(1+params(17)*y(13)))));
g1(12,13)=(-((-(y(7)*(1-params(4))*y(18)*y(5)*params(17)))/(y(5)*(1+params(17)*y(13))*y(5)*(1+params(17)*y(13)))));
g1(12,18)=(-(y(7)*(1-params(4))/(y(5)*(1+params(17)*y(13)))));
g1(13,14)=params(14);
g1(13,15)=(y(15)-(y(15)))*params(1)*params(10)-params(10)*(y(15)-(y(15)));
g1(14,7)=y(19)*(1-params(22))*params(21)*(1-y(20))*getPowerDeriv(y(7),(-params(22)),1);
g1(14,14)=(-1);
g1(14,18)=1;
g1(14,19)=T(9)*(1-y(20))*(1-params(22))*params(21);
g1(14,20)=(-((-(params(23)*T(21)))-T(9)*(-(y(19)*(1-params(22))*params(21)))-params(23)*y(26)*params(32)*T(21)));
g1(14,26)=T(8)*params(23)*params(32);
g1(15,7)=(-(y(19)*params(21)*T(18)/(params(23)*params(24)*(1+y(26)))*T(19)));
g1(15,19)=(-(T(19)*params(21)*T(10)/(params(23)*params(24)*(1+y(26)))));
g1(15,20)=1;
g1(15,26)=(-(T(19)*(-(y(19)*params(21)*T(10)*params(23)*params(24)))/(params(23)*params(24)*(1+y(26))*params(23)*params(24)*(1+y(26)))));
g1(16,25)=(-params(1));
g1(16,26)=(-1);
g1(17,3)=1;
g1(17,5)=y(6);
g1(17,6)=y(5);
g1(17,7)=params(23)*T(8)-(y(14)+1-y(14)-T(11));
g1(17,9)=1;
g1(17,10)=y(16)/y(15)-1;
g1(17,15)=y(10)*(-y(16))/(y(15)*y(15))+y(23)*(-y(24))/(y(15)*y(15));
g1(17,16)=y(10)*1/y(15);
g1(17,19)=y(21);
g1(17,20)=y(7)*params(23)*T(21);
g1(17,21)=y(19);
g1(17,23)=y(24)/y(15)-1;
g1(17,24)=y(23)*1/y(15);
g1(18,2)=(-1);
g1(18,7)=1-(params(23)*T(8)+T(11));
g1(18,9)=(-1);
g1(18,20)=(-(y(7)*params(23)*T(21)));
g1(18,22)=(-1);
g1(19,2)=1;
g1(19,3)=(-1);
g1(19,4)=(-1);
g1(20,7)=(-(params(21)*(1-y(20))*T(18)));
g1(20,20)=(-(T(10)*(-params(21))));
g1(20,21)=1;
g1(21,1)=1;
g1(21,15)=(-((-y(16))/(y(15)*y(15))));
g1(21,16)=(-(1/y(15)));
g1(22,15)=(-((-y(24))/(y(15)*y(15))));
g1(22,24)=(-(1/y(15)));
g1(22,25)=1;
g1(23,16)=(-1);
g1(23,24)=1;
g1(24,7)=(-(y(38)*T(12)*T(14)*((y(7))-y(7))/((y(7))*(y(7)))*getPowerDeriv(y(7)/(y(7)),params(12),1)*T(20)));
g1(24,15)=(-(y(38)*T(12)*T(20)*T(15)*(y(16))*((y(15))-y(15))/((y(15))*(y(15)))*getPowerDeriv(y(15)/(y(15)),params(11),1)));
g1(24,16)=1-y(38)*(T(17)*getPowerDeriv(y(16),params(13),1)+T(12)*T(20)*T(13)*T(15));
g1(24,38)=(-(T(12)*T(17)));
g1(25,7)=(-(params(9)*y(34)));
g1(25,22)=1;
g1(25,34)=(-((y(7))*params(9)));
g1(26,19)=1;
g1(26,39)=(-params(20));
g1(27,27)=1;
g1(28,28)=1;
g1(29,29)=1;
g1(30,30)=1;
g1(31,31)=1;
g1(32,32)=1;
g1(33,33)=1/y(33)-params(34)*1/y(33);
g1(34,34)=1/y(34)-params(35)*1/y(34);
g1(35,35)=1/y(35)-params(36)*1/y(35);
g1(36,40)=1/y(40)-params(41)*1/y(40);
g1(37,37)=1/y(37)-params(38)*1/y(37);
g1(38,36)=1/y(36)-params(37)*1/y(36);
g1(39,38)=1/y(38)-params(39)*1/y(38);
g1(40,39)=1/y(39)-params(40)*1/y(39);
g1(41,41)=1/y(41)-params(42)*1/y(41);
g1(42,42)=1/y(42)-params(43)*1/y(42);
g1(43,43)=1/y(43)-params(44)*1/y(43);

end
