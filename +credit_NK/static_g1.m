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
g1 = zeros(38, 38);
g1(1,4)=(-(y(32)*(1-params(12))*getPowerDeriv(y(4)-y(4)*params(12),(-params(5)),1)));
g1(1,16)=1;
g1(1,32)=(-T(1));
g1(2,1)=params(2);
g1(3,5)=(-(params(7)*getPowerDeriv(y(5),params(6),1)));
g1(3,6)=y(16);
g1(3,16)=y(6);
g1(4,17)=y(34)-(1+(-y(9))/y(9))*y(34)*params(14)/2;
g1(4,34)=y(17)-(1+(-y(9))/y(9))*y(17)*params(14)/2;
g1(5,5)=(-(T(3)*getPowerDeriv(y(5),1-params(4),1)));
g1(5,7)=1;
g1(5,8)=(-(T(4)*y(30)*params(9)*getPowerDeriv(y(8),params(4),1)));
g1(5,30)=(-(T(4)*params(9)*T(2)));
g1(6,1)=(-((-(y(8)*y(17)*y(33)*params(11)))/(y(1)*y(1))));
g1(6,5)=y(6)*params(10);
g1(6,6)=y(5)*params(10);
g1(6,8)=(-(y(17)*y(33)*params(11)/y(1)));
g1(6,10)=1;
g1(6,17)=(-(y(8)*y(33)*params(11)/y(1)));
g1(6,33)=(-(y(8)*y(17)*params(11)/y(1)));
g1(7,8)=(-(1-(1-params(3))));
g1(7,9)=y(34);
g1(7,34)=y(9);
g1(8,3)=(-(y(32)*(1-params(12))*getPowerDeriv(y(3)-params(12)*y(3),(-params(5)),1)));
g1(8,11)=1;
g1(8,32)=(-T(5));
g1(9,1)=(-params(1));
g1(9,12)=(-1);
g1(10,1)=(-y(17));
g1(10,7)=(1-y(12))*params(4)*y(18)/y(8);
g1(10,8)=(1-y(12))*(-(y(7)*params(4)*y(18)))/(y(8)*y(8));
g1(10,12)=params(11)*y(17)*y(33)-(y(17)*(1-params(3))+y(7)*params(4)*y(18)/y(8));
g1(10,17)=(1-params(3))*(1-y(12))+params(11)*y(33)*y(12)-y(1);
g1(10,18)=(1-y(12))*y(7)*params(4)/y(8);
g1(10,33)=params(11)*y(17)*y(12);
g1(11,5)=(-((-(y(7)*(1-params(4))*y(18)*(1+params(10)*y(12))))/(y(5)*(1+params(10)*y(12))*y(5)*(1+params(10)*y(12)))));
g1(11,6)=1;
g1(11,7)=(-((1-params(4))*y(18)/(y(5)*(1+params(10)*y(12)))));
g1(11,12)=(-((-(y(7)*(1-params(4))*y(18)*y(5)*params(10)))/(y(5)*(1+params(10)*y(12))*y(5)*(1+params(10)*y(12)))));
g1(11,18)=(-(y(7)*(1-params(4))/(y(5)*(1+params(10)*y(12)))));
g1(12,13)=params(13);
g1(12,14)=(y(14)-(y(14)))*params(1)*params(18)-params(18)*(y(14)-(y(14)));
g1(13,7)=y(19)*(1-params(32))*params(29)*(1-y(20))*getPowerDeriv(y(7),(-params(32)),1);
g1(13,13)=(-1);
g1(13,18)=1;
g1(13,19)=T(7)*(1-y(20))*(1-params(32))*params(29);
g1(13,20)=(-((-T(19))-T(7)*(-(y(19)*(1-params(32))*params(29)))));
g1(14,7)=y(19)*params(29)*T(16)/(params(30)*params(31))*T(17);
g1(14,19)=T(17)*params(29)*T(8)/(params(30)*params(31));
g1(14,20)=(-1);
g1(15,3)=1;
g1(15,5)=y(6);
g1(15,6)=y(5);
g1(15,7)=T(6)-(y(13)+1-y(13)-params(18)/2*T(9));
g1(15,9)=1;
g1(15,10)=y(15)/y(14)-1;
g1(15,14)=y(10)*(-y(15))/(y(14)*y(14));
g1(15,15)=y(10)*1/y(14);
g1(15,19)=y(21);
g1(15,20)=y(7)*T(19);
g1(15,21)=y(19);
g1(16,2)=(-1);
g1(16,7)=1-(T(6)+params(18)/2*T(9));
g1(16,9)=(-1);
g1(16,20)=(-(y(7)*T(19)));
g1(16,22)=(-1);
g1(17,2)=1;
g1(17,3)=(-1);
g1(17,4)=(-1);
g1(18,7)=(-(y(38)*params(29)*(1-y(20))*T(16)));
g1(18,20)=(-(y(38)*T(8)*(-params(29))));
g1(18,21)=1;
g1(18,38)=(-(T(8)*params(29)*(1-y(20))));
g1(19,1)=1;
g1(19,14)=(-((-y(15))/(y(14)*y(14))));
g1(19,15)=(-(1/y(14)));
g1(20,7)=(-(y(35)*T(10)*T(12)*((y(7))-y(7))/((y(7))*(y(7)))*getPowerDeriv(y(7)/(y(7)),params(16),1)*T(18)));
g1(20,14)=(-(y(35)*T(10)*T(18)*T(13)*(y(15))*((y(14))-y(14))/((y(14))*(y(14)))*getPowerDeriv(y(14)/(y(14)),params(17),1)));
g1(20,15)=1-y(35)*(T(15)*getPowerDeriv(y(15),params(15),1)+T(10)*T(18)*T(11)*T(13));
g1(20,35)=(-(T(10)*T(15)));
g1(21,7)=(-(params(8)*y(31)));
g1(21,22)=1;
g1(21,31)=(-((y(7))*params(8)));
g1(22,19)=1;
g1(22,36)=(-params(33));
g1(23,23)=1;
g1(24,24)=1;
g1(25,25)=1;
g1(26,26)=1;
g1(27,27)=1;
g1(28,28)=1;
g1(29,29)=1;
g1(30,30)=1/y(30)-params(20)*1/y(30);
g1(31,31)=1/y(31)-params(21)*1/y(31);
g1(32,32)=1/y(32)-params(22)*1/y(32);
g1(33,37)=1/y(37)-params(27)*1/y(37);
g1(34,34)=1/y(34)-params(24)*1/y(34);
g1(35,33)=1/y(33)-params(23)*1/y(33);
g1(36,35)=1/y(35)-params(25)*1/y(35);
g1(37,36)=1/y(36)-params(26)*1/y(36);
g1(38,38)=1/y(38)-params(28)*1/y(38);

end
