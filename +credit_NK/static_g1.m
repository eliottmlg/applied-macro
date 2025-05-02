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
    T = credit_NK.static_g1_tt(T, y, x, params);
end
g1 = zeros(44, 44);
g1(1,4)=(-(y(37)*(1-params(12))*getPowerDeriv(y(4)-y(4)*params(12),(-params(5)),1)));
g1(1,16)=1;
g1(1,37)=(-T(1));
g1(2,1)=params(2);
g1(3,5)=(-(params(7)*getPowerDeriv(y(5),params(6),1)));
g1(3,6)=y(16);
g1(3,16)=y(6);
g1(4,17)=y(39)-(1+(-y(9))/y(9))*y(39)*params(14)/2;
g1(4,39)=y(17)-(1+(-y(9))/y(9))*y(17)*params(14)/2;
g1(5,14)=(-(params(2)*y(34)))/(y(14)*y(14))+y(44)*params(35)*(-(y(16)*y(30)))/(y(16)*y(14)*y(16)*y(14))*T(21);
g1(5,16)=y(44)*params(35)*T(21)*(-(y(14)*y(30)))/(y(16)*y(14)*y(16)*y(14));
g1(5,30)=y(44)*params(35)*T(21)*1/(y(16)*y(14));
g1(5,34)=params(2)/y(14);
g1(5,44)=params(35)*T(2);
g1(6,14)=(-(params(2)*y(33)))/(y(14)*y(14))+y(43)*params(34)*(-(y(16)*y(29)))/(y(16)*y(14)*y(16)*y(14))*T(22);
g1(6,16)=y(43)*params(34)*T(22)*(-(y(14)*y(29)))/(y(16)*y(14)*y(16)*y(14));
g1(6,29)=y(43)*params(34)*T(22)*1/(y(16)*y(14));
g1(6,33)=params(2)/y(14);
g1(6,43)=params(34)*T(3);
g1(7,5)=(-(T(5)*getPowerDeriv(y(5),1-params(4),1)));
g1(7,7)=1;
g1(7,8)=(-(T(6)*y(35)*params(9)*getPowerDeriv(y(8),params(4),1)));
g1(7,35)=(-(T(6)*params(9)*T(4)));
g1(8,1)=(-((-(y(8)*y(17)*y(38)*params(11)))/(y(1)*y(1))));
g1(8,5)=y(6)*params(10);
g1(8,6)=y(5)*params(10);
g1(8,8)=(-(y(17)*y(38)*params(11)/y(1)));
g1(8,10)=1;
g1(8,17)=(-(y(8)*y(38)*params(11)/y(1)));
g1(8,38)=(-(y(8)*y(17)*params(11)/y(1)));
g1(9,8)=(-(1-(1-params(3))));
g1(9,9)=y(39);
g1(9,39)=y(9);
g1(10,3)=(-(y(37)*(1-params(12))*getPowerDeriv(y(3)-params(12)*y(3),(-params(5)),1)));
g1(10,11)=1;
g1(10,37)=(-T(7));
g1(11,1)=(-params(1));
g1(11,12)=(-1);
g1(12,1)=(-y(17));
g1(12,7)=(1-y(12))*params(4)*y(18)/y(8);
g1(12,8)=(1-y(12))*(-(y(7)*params(4)*y(18)))/(y(8)*y(8));
g1(12,12)=params(11)*y(17)*y(38)-(y(17)*(1-params(3))+y(7)*params(4)*y(18)/y(8));
g1(12,17)=(1-params(3))*(1-y(12))+params(11)*y(38)*y(12)-y(1);
g1(12,18)=(1-y(12))*y(7)*params(4)/y(8);
g1(12,38)=params(11)*y(17)*y(12);
g1(13,5)=(-((-(y(7)*(1-params(4))*y(18)*(1+params(10)*y(12))))/(y(5)*(1+params(10)*y(12))*y(5)*(1+params(10)*y(12)))));
g1(13,6)=1;
g1(13,7)=(-((1-params(4))*y(18)/(y(5)*(1+params(10)*y(12)))));
g1(13,12)=(-((-(y(7)*(1-params(4))*y(18)*y(5)*params(10)))/(y(5)*(1+params(10)*y(12))*y(5)*(1+params(10)*y(12)))));
g1(13,18)=(-(y(7)*(1-params(4))/(y(5)*(1+params(10)*y(12)))));
g1(14,13)=params(13);
g1(14,14)=(y(14)-(y(14)))*params(1)*params(18)-params(18)*(y(14)-(y(14)));
g1(15,7)=y(19)*(1-params(31))*params(28)*(1-y(20))*getPowerDeriv(y(7),(-params(31)),1);
g1(15,13)=(-1);
g1(15,18)=1;
g1(15,19)=T(9)*(1-y(20))*(1-params(31))*params(28);
g1(15,20)=(-((-T(24))-T(9)*(-(y(19)*(1-params(31))*params(28)))));
g1(16,7)=y(19)*params(28)*T(18)/(params(29)*params(30))*T(19);
g1(16,19)=T(19)*params(28)*T(10)/(params(29)*params(30));
g1(16,20)=(-1);
g1(17,11)=1-params(1)*y(33);
g1(17,33)=(-(params(1)*y(11)));
g1(18,11)=1-params(1)*y(34);
g1(18,34)=(-(params(1)*y(11)));
g1(19,3)=1;
g1(19,5)=y(6);
g1(19,6)=y(5);
g1(19,7)=T(8)-(y(13)+1-y(13)-params(18)/2*T(11));
g1(19,9)=1;
g1(19,10)=y(15)/y(14)-1;
g1(19,14)=y(10)*(-y(15))/(y(14)*y(14))+y(29)*(-y(33))/(y(14)*y(14))+y(30)*(-y(34))/(y(14)*y(14));
g1(19,15)=y(10)*T(23);
g1(19,19)=y(21);
g1(19,20)=y(7)*T(24);
g1(19,21)=y(19);
g1(19,29)=y(33)/y(14);
g1(19,30)=y(34)/y(14);
g1(19,31)=(-1);
g1(19,32)=(-1);
g1(19,33)=y(29)*T(23);
g1(19,34)=y(30)*T(23);
g1(20,30)=1;
g1(20,32)=(-1);
g1(21,29)=1;
g1(21,31)=(-1);
g1(22,2)=(-1);
g1(22,7)=1-(T(8)+params(18)/2*T(11));
g1(22,9)=(-1);
g1(22,20)=(-(y(7)*T(24)));
g1(22,22)=(-1);
g1(23,2)=1;
g1(23,3)=(-1);
g1(23,4)=(-1);
g1(24,7)=(-(params(28)*(1-y(20))*T(18)));
g1(24,20)=(-(T(10)*(-params(28))));
g1(24,21)=1;
g1(25,1)=1;
g1(25,14)=(-((-y(15))/(y(14)*y(14))));
g1(25,15)=(-T(23));
g1(26,7)=(-(y(40)*T(12)*T(14)*((y(7))-y(7))/((y(7))*(y(7)))*getPowerDeriv(y(7)/(y(7)),params(16),1)*T(20)));
g1(26,14)=(-(y(40)*T(12)*T(20)*T(15)*(y(15))*((y(14))-y(14))/((y(14))*(y(14)))*getPowerDeriv(y(14)/(y(14)),params(17),1)));
g1(26,15)=1-y(40)*(T(17)*getPowerDeriv(y(15),params(15),1)+T(12)*T(20)*T(13)*T(15));
g1(26,40)=(-(T(12)*T(17)));
g1(27,7)=(-(params(8)*y(36)));
g1(27,22)=1;
g1(27,36)=(-((y(7))*params(8)));
g1(28,19)=1;
g1(28,41)=(-params(32));
g1(29,23)=1;
g1(30,24)=1;
g1(31,25)=1;
g1(32,26)=1;
g1(33,27)=1;
g1(34,28)=1;
g1(35,35)=1/y(35)-params(20)*1/y(35);
g1(36,36)=1/y(36)-params(21)*1/y(36);
g1(37,37)=1/y(37)-params(22)*1/y(37);
g1(38,42)=1/y(42)-params(27)*1/y(42);
g1(39,39)=1/y(39)-params(24)*1/y(39);
g1(40,38)=1/y(38)-params(23)*1/y(38);
g1(41,40)=1/y(40)-params(25)*1/y(40);
g1(42,41)=1/y(41)-params(26)*1/y(41);
g1(43,44)=1/y(44)-params(39)*1/y(44);
g1(44,43)=1/y(43)-params(38)*1/y(43);

end
