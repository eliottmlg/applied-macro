function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
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
%   residual
%

if T_flag
    T = SLBnum.static_resid_tt(T, y, x, params);
end
residual = zeros(43, 1);
lhs = y(16);
rhs = y(35)*T(1);
residual(1) = lhs - rhs;
lhs = params(2)*y(1);
rhs = 1;
residual(2) = lhs - rhs;
lhs = y(16)*y(6);
rhs = params(7)*y(5)^params(6);
residual(3) = lhs - rhs;
lhs = y(37)*y(17);
rhs = 1+y(37)*y(17)*params(14)/2*(1+(-y(9))/y(9));
residual(4) = lhs - rhs;
lhs = params(2)*y(30)/y(14)+y(41)*params(37)/y(16)*T(2);
rhs = 1;
residual(5) = lhs - rhs;
lhs = y(7);
rhs = T(4)*T(5);
residual(6) = lhs - rhs;
lhs = y(10);
rhs = y(8)*y(17)*y(36)*params(11)/y(1)-y(5)*y(6)*params(10);
residual(7) = lhs - rhs;
lhs = y(37)*y(9);
rhs = y(8)-y(8)*(1-params(3));
residual(8) = lhs - rhs;
lhs = y(11);
rhs = y(35)*T(6);
residual(9) = lhs - rhs;
lhs = 1-y(12);
rhs = y(1)*params(1);
residual(10) = lhs - rhs;
lhs = (1-y(12))*(y(17)*(1-params(3))+y(7)*params(4)*y(18)/y(8))+params(11)*y(36)*y(17)*y(12)+y(17)*y(32)*y(43)*params(43)*T(7);
rhs = y(1)*y(17);
residual(11) = lhs - rhs;
lhs = y(6);
rhs = y(7)*(1-params(4))*y(18)/(y(5)*(1+params(10)*y(12)));
residual(12) = lhs - rhs;
residual(13) = 1-params(13)+params(13)*y(13)-y(14)*params(18)*(y(14)-(y(14)))+(y(14)-(y(14)))*y(14)*params(1)*params(18);
lhs = y(18);
rhs = y(13)-params(29)*T(8)-y(19)*(1-params(31))*params(28)*(1-y(20))*T(9)-T(8)*params(29)*y(32)*params(41);
residual(14) = lhs - rhs;
lhs = (y(19)*params(28)*T(10)/(params(29)*params(30)*(1+y(32))))^(1/(params(30)-1));
rhs = y(20);
residual(15) = lhs - rhs;
lhs = 1-y(32);
rhs = params(1)*y(31);
residual(16) = lhs - rhs;
lhs = y(9)+y(3)+y(6)*y(5)+y(10)*y(15)/y(14)+y(29)*y(30)/y(14)+y(7)*params(29)*T(8)+y(19)*y(21);
rhs = y(29)+y(10)+y(7)*y(13)+y(7)*(1-y(13)-params(18)/2*T(11));
residual(17) = lhs - rhs;
lhs = y(7);
rhs = y(7)*params(29)*T(8)+y(9)+y(2)+y(22)+T(11)*y(7)*params(18)/2;
residual(18) = lhs - rhs;
lhs = y(2);
rhs = y(4)+y(3);
residual(19) = lhs - rhs;
lhs = y(21);
rhs = T(10)*params(28)*(1-y(20));
residual(20) = lhs - rhs;
lhs = y(1);
rhs = y(15)/y(14);
residual(21) = lhs - rhs;
lhs = y(31);
rhs = y(30)/y(14);
residual(22) = lhs - rhs;
lhs = y(30);
rhs = y(15)-params(35);
residual(23) = lhs - rhs;
lhs = y(15);
rhs = T(12)*T(17)*y(38);
residual(24) = lhs - rhs;
lhs = y(22);
rhs = (y(7))*params(8)*y(34);
residual(25) = lhs - rhs;
lhs = y(19);
rhs = params(32)*y(39);
residual(26) = lhs - rhs;
residual(27) = y(23);
residual(28) = y(24);
residual(29) = y(25);
lhs = y(26);
rhs = y(14)-(y(14));
residual(30) = lhs - rhs;
lhs = y(27);
rhs = y(15)-(y(15));
residual(31) = lhs - rhs;
residual(32) = y(28);
lhs = log(y(33));
rhs = log(y(33))*params(20)+x(1);
residual(33) = lhs - rhs;
lhs = log(y(34));
rhs = log(y(34))*params(21)+x(2);
residual(34) = lhs - rhs;
lhs = log(y(35));
rhs = log(y(35))*params(22)+x(3);
residual(35) = lhs - rhs;
lhs = log(y(40));
rhs = log(y(40))*params(27)+x(8);
residual(36) = lhs - rhs;
lhs = log(y(37));
rhs = log(y(37))*params(24)+x(5);
residual(37) = lhs - rhs;
lhs = log(y(36));
rhs = log(y(36))*params(23)+x(4);
residual(38) = lhs - rhs;
lhs = log(y(38));
rhs = log(y(38))*params(25)+x(6);
residual(39) = lhs - rhs;
lhs = log(y(39));
rhs = log(y(39))*params(26)+x(7);
residual(40) = lhs - rhs;
lhs = log(y(41));
rhs = log(y(41))*params(39)+x(9);
residual(41) = lhs - rhs;
lhs = log(y(42));
rhs = log(y(42))*params(42)+x(10);
residual(42) = lhs - rhs;
lhs = log(y(43));
rhs = log(y(43))*params(44)+x(11);
residual(43) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
