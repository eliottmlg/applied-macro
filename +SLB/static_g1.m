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
    T = SLB.static_g1_tt(T, y, x, params);
end
g1 = zeros(40, 40);
g1(1,4)=(-(y(34)*(1-params(12))*getPowerDeriv(y(4)-y(4)*params(12),(-params(5)),1)));
g1(1,16)=1;
g1(1,34)=(-T(1));
g1(2,1)=params(2);
g1(3,5)=(-(params(7)*getPowerDeriv(y(5),params(6),1)));
g1(3,6)=y(16);
g1(3,16)=y(6);
g1(4,17)=y(36)-(1+(-y(9))/y(9))*y(36)*params(14)/2;
g1(4,36)=y(17)-(1+(-y(9))/y(9))*y(17)*params(14)/2;
g1(5,14)=(-(params(2)*y(31)))/(y(14)*y(14))+y(40)*params(37)/y(16)*(-y(29))/(y(14)*y(14))*T(20);
g1(5,16)=T(2)*y(40)*(-params(37))/(y(16)*y(16));
g1(5,29)=y(40)*params(37)/y(16)*T(20)*T(21);
g1(5,31)=params(2)/y(14);
g1(5,40)=params(37)/y(16)*T(2);
g1(6,5)=(-(T(4)*getPowerDeriv(y(5),1-params(4),1)));
g1(6,7)=1;
g1(6,8)=(-(T(5)*y(32)*params(9)*getPowerDeriv(y(8),params(4),1)));
g1(6,32)=(-(T(5)*params(9)*T(3)));
g1(7,1)=(-((-(y(8)*y(17)*y(35)*params(11)))/(y(1)*y(1))));
g1(7,5)=y(6)*params(10);
g1(7,6)=y(5)*params(10);
g1(7,8)=(-(y(17)*y(35)*params(11)/y(1)));
g1(7,10)=1;
g1(7,17)=(-(y(8)*y(35)*params(11)/y(1)));
g1(7,35)=(-(y(8)*y(17)*params(11)/y(1)));
g1(8,8)=(-(1-(1-params(3))));
g1(8,9)=y(36);
g1(8,36)=y(9);
g1(9,3)=(-(y(34)*(1-params(12))*getPowerDeriv(y(3)-params(12)*y(3),(-params(5)),1)));
g1(9,11)=1;
g1(9,34)=(-T(6));
g1(10,1)=(-params(1));
g1(10,12)=(-1);
g1(11,1)=(-y(17));
g1(11,7)=(1-y(12))*params(4)*y(18)/y(8);
g1(11,8)=(1-y(12))*(-(y(7)*params(4)*y(18)))/(y(8)*y(8));
g1(11,12)=params(11)*y(17)*y(35)-(y(17)*(1-params(3))+y(7)*params(4)*y(18)/y(8));
g1(11,17)=(1-params(3))*(1-y(12))+params(11)*y(35)*y(12)-y(1);
g1(11,18)=(1-y(12))*y(7)*params(4)/y(8);
g1(11,35)=params(11)*y(17)*y(12);
g1(12,5)=(-((-(y(7)*(1-params(4))*y(18)*(1+params(10)*y(12))))/(y(5)*(1+params(10)*y(12))*y(5)*(1+params(10)*y(12)))));
g1(12,6)=1;
g1(12,7)=(-((1-params(4))*y(18)/(y(5)*(1+params(10)*y(12)))));
g1(12,12)=(-((-(y(7)*(1-params(4))*y(18)*y(5)*params(10)))/(y(5)*(1+params(10)*y(12))*y(5)*(1+params(10)*y(12)))));
g1(12,18)=(-(y(7)*(1-params(4))/(y(5)*(1+params(10)*y(12)))));
g1(13,13)=params(13);
g1(13,14)=(y(14)-(y(14)))*params(1)*params(18)-params(18)*(y(14)-(y(14)));
g1(14,7)=y(19)*(1-params(31))*params(28)*(1-y(20))*getPowerDeriv(y(7),(-params(31)),1);
g1(14,13)=(-1);
g1(14,18)=1;
g1(14,19)=T(8)*(1-y(20))*(1-params(31))*params(28);
g1(14,20)=(-((-T(22))-T(8)*(-(y(19)*(1-params(31))*params(28)))));
g1(15,7)=y(19)*params(28)*T(17)/(params(29)*params(30))*T(18);
g1(15,19)=T(18)*params(28)*T(9)/(params(29)*params(30));
g1(15,20)=(-1);
g1(16,11)=1-params(1)*y(31);
g1(16,31)=(-(params(1)*y(11)));
g1(17,3)=1;
g1(17,5)=y(6);
g1(17,6)=y(5);
g1(17,7)=T(7)-(y(13)+1-y(13)-params(18)/2*T(10));
g1(17,9)=1;
g1(17,10)=y(15)/y(14)-1;
g1(17,14)=y(10)*(-y(15))/(y(14)*y(14))+y(30)*(-y(31))/(y(14)*y(14));
g1(17,15)=y(10)*T(21);
g1(17,19)=y(21);
g1(17,20)=y(7)*T(22);
g1(17,21)=y(19);
g1(17,30)=y(31)/y(14)-1;
g1(17,31)=y(30)*T(21);
g1(18,29)=1;
g1(18,30)=(-1);
g1(19,2)=(-1);
g1(19,7)=1-(T(7)+params(18)/2*T(10));
g1(19,9)=(-1);
g1(19,20)=(-(y(7)*T(22)));
g1(19,22)=(-1);
g1(20,2)=1;
g1(20,3)=(-1);
g1(20,4)=(-1);
g1(21,7)=(-(params(28)*(1-y(20))*T(17)));
g1(21,20)=(-(T(9)*(-params(28))));
g1(21,21)=1;
g1(22,1)=1;
g1(22,14)=(-((-y(15))/(y(14)*y(14))));
g1(22,15)=(-T(21));
g1(23,7)=(-(y(37)*T(11)*T(13)*((y(7))-y(7))/((y(7))*(y(7)))*getPowerDeriv(y(7)/(y(7)),params(16),1)*T(19)));
g1(23,14)=(-(y(37)*T(11)*T(19)*T(14)*(y(15))*((y(14))-y(14))/((y(14))*(y(14)))*getPowerDeriv(y(14)/(y(14)),params(17),1)));
g1(23,15)=1-y(37)*(T(16)*getPowerDeriv(y(15),params(15),1)+T(11)*T(19)*T(12)*T(14));
g1(23,37)=(-(T(11)*T(16)));
g1(24,7)=(-(params(8)*y(33)));
g1(24,22)=1;
g1(24,33)=(-((y(7))*params(8)));
g1(25,19)=1;
g1(25,38)=(-params(32));
g1(26,23)=1;
g1(27,24)=1;
g1(28,25)=1;
g1(29,26)=1;
g1(30,27)=1;
g1(31,28)=1;
g1(32,32)=1/y(32)-params(20)*1/y(32);
g1(33,33)=1/y(33)-params(21)*1/y(33);
g1(34,34)=1/y(34)-params(22)*1/y(34);
g1(35,39)=1/y(39)-params(27)*1/y(39);
g1(36,36)=1/y(36)-params(24)*1/y(36);
g1(37,35)=1/y(35)-params(23)*1/y(35);
g1(38,37)=1/y(37)-params(25)*1/y(37);
g1(39,38)=1/y(38)-params(26)*1/y(38);
g1(40,40)=1/y(40)-params(39)*1/y(40);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
