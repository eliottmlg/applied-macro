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
    T = credit_NK_SLB.static_g1_tt(T, y, x, params);
end
g1 = zeros(39, 39);
g1(1,4)=(-(y(34)*(1-params(12))*getPowerDeriv(y(4)-y(4)*params(12),(-params(5)),1)));
g1(1,19)=1;
g1(1,34)=(-T(1));
g1(2,1)=params(2);
g1(3,5)=(-(params(7)*getPowerDeriv(y(5),params(6),1)));
g1(3,6)=y(19);
g1(3,19)=y(6);
g1(4,20)=y(36)-(1+(-y(9))/y(9))*y(36)*params(14)/2;
g1(4,36)=y(20)-(1+(-y(9))/y(9))*y(20)*params(14)/2;
g1(5,5)=(-(T(3)*getPowerDeriv(y(5),1-params(4),1)));
g1(5,7)=1;
g1(5,8)=(-(T(4)*y(32)*params(9)*getPowerDeriv(y(8),params(4),1)));
g1(5,32)=(-(T(4)*params(9)*T(2)));
g1(6,1)=(-((-(y(8)*y(20)*y(35)*params(11)))/(y(1)*y(1))));
g1(6,5)=y(6)*params(10);
g1(6,6)=y(5)*params(10);
g1(6,8)=(-(y(20)*y(35)*params(11)/y(1)));
g1(6,10)=1;
g1(6,11)=1;
g1(6,20)=(-(y(8)*y(35)*params(11)/y(1)));
g1(6,35)=(-(y(8)*y(20)*params(11)/y(1)));
g1(7,8)=(-(1-(1-params(3))));
g1(7,9)=y(36);
g1(7,36)=y(9);
g1(8,3)=(-(y(34)*(1-params(12))*getPowerDeriv(y(3)-params(12)*y(3),(-params(5)),1)));
g1(8,13)=1;
g1(8,34)=(-T(5));
g1(9,1)=(-params(1));
g1(9,14)=(-1);
g1(10,1)=(-y(20));
g1(10,7)=(1-y(14))*params(4)*y(21)/y(8);
g1(10,8)=(1-y(14))*(-(y(7)*params(4)*y(21)))/(y(8)*y(8));
g1(10,14)=params(11)*y(20)*y(35)-(y(20)*(1-params(3))+y(7)*params(4)*y(21)/y(8));
g1(10,20)=(1-params(3))*(1-y(14))+params(11)*y(35)*y(14)-y(1);
g1(10,21)=(1-y(14))*y(7)*params(4)/y(8);
g1(10,35)=params(11)*y(20)*y(14);
g1(11,5)=(-((-(y(7)*(1-params(4))*y(21)*(1+params(10)*y(14))))/(y(5)*(1+params(10)*y(14))*y(5)*(1+params(10)*y(14)))));
g1(11,6)=1;
g1(11,7)=(-((1-params(4))*y(21)/(y(5)*(1+params(10)*y(14)))));
g1(11,14)=(-((-(y(7)*(1-params(4))*y(21)*y(5)*params(10)))/(y(5)*(1+params(10)*y(14))*y(5)*(1+params(10)*y(14)))));
g1(11,21)=(-(y(7)*(1-params(4))/(y(5)*(1+params(10)*y(14)))));
g1(12,15)=params(13);
g1(12,16)=(y(16)-(y(16)))*params(1)*params(18)-params(18)*(y(16)-(y(16)));
g1(13,7)=y(22)*params(30)*T(16)/(params(32)*params(31))*T(17);
g1(13,22)=T(17)*params(30)*T(6)/(params(32)*params(31));
g1(13,23)=(-1);
g1(14,7)=params(30)*y(22)*(1-params(33))*(1-y(23))*getPowerDeriv(y(7),(-params(33)),1);
g1(14,15)=(-1);
g1(14,21)=1;
g1(14,22)=T(8)*(1-y(23))*params(30)*(1-params(33));
g1(14,23)=(-((-T(19))-T(8)*(-(params(30)*y(22)*(1-params(33))))));
g1(15,3)=1;
g1(15,5)=y(6);
g1(15,6)=y(5);
g1(15,7)=T(7)-(y(15)+1-y(15)-T(9));
g1(15,9)=1;
g1(15,10)=y(17)/y(16)-1;
g1(15,11)=y(18)/y(16)-1;
g1(15,16)=y(10)*(-y(17))/(y(16)*y(16))+y(11)*(-y(18))/(y(16)*y(16));
g1(15,17)=y(10)*1/y(16);
g1(15,18)=y(11)*1/y(16);
g1(15,22)=y(24);
g1(15,23)=y(7)*T(19);
g1(15,24)=y(22);
g1(16,2)=(-1);
g1(16,7)=1-(T(7)+T(9));
g1(16,9)=(-1);
g1(16,23)=(-(y(7)*T(19)));
g1(16,25)=(-1);
g1(17,2)=1;
g1(17,3)=(-1);
g1(17,4)=(-1);
g1(18,7)=(-(params(30)*(1-y(23))*T(16)));
g1(18,23)=(-(T(6)*(-params(30))));
g1(18,24)=1;
g1(19,11)=1;
g1(19,12)=(-params(21));
g1(20,10)=(-1);
g1(20,11)=(-1);
g1(20,12)=1;
g1(21,17)=(-1);
g1(21,18)=1;
g1(22,1)=1;
g1(22,16)=(-((-y(17))/(y(16)*y(16))));
g1(22,17)=(-(1/y(16)));
g1(23,7)=(-(y(37)*T(10)*T(12)*((y(7))-y(7))/((y(7))*(y(7)))*getPowerDeriv(y(7)/(y(7)),params(16),1)*T(18)));
g1(23,16)=(-(y(37)*T(10)*T(18)*T(13)*(y(17))*((y(16))-y(16))/((y(16))*(y(16)))*getPowerDeriv(y(16)/(y(16)),params(17),1)));
g1(23,17)=1-y(37)*(T(15)*getPowerDeriv(y(17),params(15),1)+T(10)*T(18)*T(11)*T(13));
g1(23,37)=(-(T(10)*T(15)));
g1(24,7)=(-(params(8)*y(33)));
g1(24,25)=1;
g1(24,33)=(-((y(7))*params(8)));
g1(25,22)=1;
g1(25,38)=(-params(34));
g1(26,26)=1;
g1(27,27)=1;
g1(28,28)=1;
g1(29,29)=1;
g1(30,30)=1;
g1(31,31)=1;
g1(32,32)=1/y(32)-params(22)*1/y(32);
g1(33,33)=1/y(33)-params(23)*1/y(33);
g1(34,34)=1/y(34)-params(24)*1/y(34);
g1(35,36)=1/y(36)-params(26)*1/y(36);
g1(36,35)=1/y(35)-params(25)*1/y(35);
g1(37,37)=1/y(37)-params(27)*1/y(37);
g1(38,38)=1/y(38)-params(28)*1/y(38);
g1(39,39)=1/y(39)-params(29)*1/y(39);

end
