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
    T = FBC.static_g1_tt(T, y, x, params);
end
g1 = zeros(16, 16);
g1(1,1)=(-1);
g1(1,6)=1;
g1(1,7)=1-y(14);
g1(1,11)=(-y(15));
g1(1,14)=(-y(7));
g1(1,15)=(-y(11));
g1(2,6)=(-1)/(y(6)*y(6))-y(14)*params(1)*(-1)/(y(6)*y(6));
g1(2,14)=(-(T(1)*params(1)));
g1(3,6)=(-y(15))/(y(6)*y(6));
g1(3,11)=(-(params(4)/((1-y(11))*(1-y(11)))));
g1(3,15)=T(1);
g1(4,6)=(-y(12))/(y(6)*y(6))-(-(y(12)*params(1)))/(y(6)*y(6));
g1(4,9)=(-((-params(6))/(y(9)*y(9))));
g1(4,12)=T(1)-params(1)/y(6);
g1(5,1)=1;
g1(5,4)=1;
g1(5,7)=y(14)-1;
g1(5,10)=1-y(13);
g1(5,13)=(-y(10));
g1(5,14)=y(7);
g1(6,1)=params(9);
g1(6,7)=1;
g1(6,10)=(-params(9));
g1(7,2)=y(4);
g1(7,4)=1-params(9)+y(2)-params(3)*(y(13)-y(14)*params(9));
g1(7,13)=(-(y(4)*params(3)));
g1(7,14)=(-(y(4)*params(3)*(-params(9))));
g1(8,5)=1;
g1(8,10)=y(13)-1;
g1(8,11)=y(15);
g1(8,13)=y(10);
g1(8,15)=y(11);
g1(8,16)=(-1);
g1(9,8)=(-(T(3)*getPowerDeriv(y(8),params(5),1)));
g1(9,11)=(-(T(2)*getPowerDeriv(y(11),1-params(5),1)));
g1(9,16)=1;
g1(10,8)=(-(params(8)*y(12)/y(13)));
g1(10,10)=1;
g1(10,11)=y(15)*params(7);
g1(10,12)=(-(y(8)*params(8)*1/y(13)));
g1(10,13)=(-(y(8)*params(8)*(-y(12))/(y(13)*y(13))));
g1(10,15)=y(11)*params(7);
g1(11,3)=y(12)*params(8)/y(13)*T(4);
g1(11,5)=(y(12)-(1-y(3))*y(12)*params(8)/y(13))*(-1)/(y(5)*y(5))-params(2)*(y(12)*(1-params(8))+params(5)*y(16)/y(8))*(-1)/(y(5)*y(5));
g1(11,8)=(-(T(4)*params(2)*params(5)*(-y(16))/(y(8)*y(8))));
g1(11,12)=T(4)*(1-(1-y(3))*params(8)/y(13))-T(4)*params(2)*(1-params(8));
g1(11,13)=T(4)*(-((1-y(3))*(-(y(12)*params(8)))/(y(13)*y(13))));
g1(11,16)=(-(T(4)*params(2)*params(5)*1/y(8)));
g1(12,3)=(-(y(15)*y(11)*(-params(7))));
g1(12,11)=(-(y(15)*(1+params(7)*(1-y(3)-y(13)*params(2)))));
g1(12,13)=(-(y(15)*y(11)*params(7)*(-params(2))));
g1(12,15)=(-(y(11)*(1+params(7)*(1-y(3)-y(13)*params(2)))));
g1(12,16)=1-params(5);
g1(13,8)=1;
g1(13,9)=1;
g1(14,1)=1-params(13);
g1(15,2)=1;
g1(16,3)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
