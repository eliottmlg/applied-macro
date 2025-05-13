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
g1 = zeros(40, 40);
g1(1,5)=(-(y(35)*(1-params(14))*getPowerDeriv(y(5)-y(5)*params(14),(-params(7)),1)));
g1(1,20)=1;
g1(1,35)=(-T(1));
g1(2,1)=params(4);
g1(3,6)=(-(params(9)*getPowerDeriv(y(6),params(8),1)));
g1(3,7)=y(20);
g1(3,20)=y(7);
g1(4,21)=y(37)-(1+(-y(10))/y(10))*y(37)*params(16)/2;
g1(4,37)=y(21)-(1+(-y(10))/y(10))*y(21)*params(16)/2;
g1(5,6)=(-(T(3)*getPowerDeriv(y(6),1-params(6),1)));
g1(5,8)=1;
g1(5,9)=(-(T(4)*y(33)*params(11)*getPowerDeriv(y(9),params(6),1)));
g1(5,33)=(-(T(4)*params(11)*T(2)));
g1(6,1)=(-((-(y(9)*y(21)*y(36)*params(13)))/(y(1)*y(1))));
g1(6,6)=y(7)*params(12);
g1(6,7)=y(6)*params(12);
g1(6,9)=(-(y(21)*y(36)*params(13)/y(1)));
g1(6,11)=1;
g1(6,12)=1;
g1(6,21)=(-(y(9)*y(36)*params(13)/y(1)));
g1(6,36)=(-(y(9)*y(21)*params(13)/y(1)));
g1(7,9)=(-(1-(1-params(5))));
g1(7,10)=y(37);
g1(7,37)=y(10);
g1(8,4)=(-(y(35)*(1-params(14))*getPowerDeriv(y(4)-params(14)*y(4),(-params(7)),1)));
g1(8,14)=1;
g1(8,35)=(-T(5));
g1(9,1)=(-params(3));
g1(9,15)=(-1);
g1(10,1)=(-y(21));
g1(10,8)=(1-y(15))*params(6)*y(22)/y(9);
g1(10,9)=(1-y(15))*(-(y(8)*params(6)*y(22)))/(y(9)*y(9));
g1(10,15)=params(13)*y(21)*y(36)-(y(21)*(1-params(5))+y(8)*params(6)*y(22)/y(9));
g1(10,21)=(1-params(5))*(1-y(15))+params(13)*y(36)*y(15)-y(1);
g1(10,22)=(1-y(15))*y(8)*params(6)/y(9);
g1(10,36)=params(13)*y(21)*y(15);
g1(11,6)=(-((-(y(8)*(1-params(6))*y(22)*(1+params(12)*y(15))))/(y(6)*(1+params(12)*y(15))*y(6)*(1+params(12)*y(15)))));
g1(11,7)=1;
g1(11,8)=(-((1-params(6))*y(22)/(y(6)*(1+params(12)*y(15)))));
g1(11,15)=(-((-(y(8)*(1-params(6))*y(22)*y(6)*params(12)))/(y(6)*(1+params(12)*y(15))*y(6)*(1+params(12)*y(15)))));
g1(11,22)=(-(y(8)*(1-params(6))/(y(6)*(1+params(12)*y(15)))));
g1(12,16)=params(15);
g1(12,17)=(y(17)-(y(17)))*params(3)*params(20)-params(20)*(y(17)-(y(17)));
g1(13,24)=1;
g1(14,8)=y(23)*(1-params(34))*params(31)*(1-y(24))*getPowerDeriv(y(8),(-params(34)),1);
g1(14,16)=(-1);
g1(14,22)=1;
g1(14,23)=T(7)*(1-y(24))*(1-params(34))*params(31);
g1(14,24)=(-((-T(17))-T(7)*(-(y(23)*(1-params(34))*params(31)))));
g1(15,4)=1;
g1(15,6)=y(7);
g1(15,7)=y(6);
g1(15,8)=T(6)-(y(16)+1-y(16)-T(8));
g1(15,10)=1;
g1(15,11)=y(18)/y(17)-1;
g1(15,12)=y(19)/y(17)-1;
g1(15,17)=y(11)*(-y(18))/(y(17)*y(17))+y(12)*(-y(19))/(y(17)*y(17));
g1(15,18)=y(11)*1/y(17);
g1(15,19)=y(12)*1/y(17);
g1(15,23)=y(25);
g1(15,24)=y(8)*T(17);
g1(15,25)=y(23);
g1(16,3)=(-1);
g1(16,8)=1-(T(6)+T(8));
g1(16,10)=(-1);
g1(16,24)=(-(y(8)*T(17)));
g1(16,26)=(-1);
g1(17,3)=1;
g1(17,4)=(-1);
g1(17,5)=(-1);
g1(18,8)=(-(params(31)*(1-y(24))*getPowerDeriv(y(8),1-params(34),1)));
g1(18,24)=(-(T(9)*(-params(31))));
g1(18,25)=1;
g1(19,2)=(-y(13));
g1(19,12)=1;
g1(19,13)=(-y(2));
g1(20,11)=(-1);
g1(20,12)=(-1);
g1(20,13)=1;
g1(21,18)=(-1);
g1(21,19)=1;
g1(22,2)=(-params(2));
g1(22,24)=params(32)*params(33)*getPowerDeriv(y(24),params(33)-1,1);
g1(23,1)=1;
g1(23,17)=(-((-y(18))/(y(17)*y(17))));
g1(23,18)=(-(1/y(17)));
g1(24,8)=(-(y(38)*T(10)*T(12)*((y(8))-y(8))/((y(8))*(y(8)))*getPowerDeriv(y(8)/(y(8)),params(18),1)*T(16)));
g1(24,17)=(-(y(38)*T(10)*T(16)*T(13)*(y(18))*((y(17))-y(17))/((y(17))*(y(17)))*getPowerDeriv(y(17)/(y(17)),params(19),1)));
g1(24,18)=1-y(38)*(T(15)*getPowerDeriv(y(18),params(17),1)+T(10)*T(16)*T(11)*T(13));
g1(24,38)=(-(T(10)*T(15)));
g1(25,8)=(-(params(10)*y(34)));
g1(25,26)=1;
g1(25,34)=(-((y(8))*params(10)));
g1(26,23)=1;
g1(26,39)=(-params(35));
g1(27,27)=1;
g1(28,28)=1;
g1(29,29)=1;
g1(30,30)=1;
g1(31,31)=1;
g1(32,32)=1;
g1(33,33)=1/y(33)-params(23)*1/y(33);
g1(34,34)=1/y(34)-params(24)*1/y(34);
g1(35,35)=1/y(35)-params(25)*1/y(35);
g1(36,37)=1/y(37)-params(27)*1/y(37);
g1(37,36)=1/y(36)-params(26)*1/y(36);
g1(38,38)=1/y(38)-params(28)*1/y(38);
g1(39,39)=1/y(39)-params(29)*1/y(39);
g1(40,40)=1/y(40)-params(30)*1/y(40);

end
