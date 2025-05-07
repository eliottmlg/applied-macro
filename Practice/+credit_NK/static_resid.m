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
    T = credit_NK.static_resid_tt(T, y, x, params);
end
<<<<<<< HEAD:+credit_NK/static_resid.m
residual = zeros(44, 1);
    residual(1) = (y(16)) - (y(37)*T(1));
    residual(2) = (params(2)*y(1)) - (1);
    residual(3) = (y(16)*y(6)) - (params(7)*y(5)^params(6));
    residual(4) = (y(39)*y(17)) - (1+y(39)*y(17)*params(14)/2*(1+(-y(9))/y(9)));
    residual(5) = (params(2)*y(34)/y(14)+y(44)*params(35)*T(2)) - (1);
    residual(6) = (params(2)*y(33)/y(14)+y(43)*params(34)*T(3)) - (1);
    residual(7) = (y(7)) - (T(5)*T(6));
    residual(8) = (y(10)) - (y(8)*y(17)*y(38)*params(11)/y(1)-y(5)*y(6)*params(10));
    residual(9) = (y(39)*y(9)) - (y(8)-y(8)*(1-params(3)));
    residual(10) = (y(11)) - (y(37)*T(7));
    residual(11) = (1-y(12)) - (y(1)*params(1));
    residual(12) = ((1-y(12))*(y(17)*(1-params(3))+y(7)*params(4)*y(18)/y(8))+params(11)*y(38)*y(17)*y(12)) - (y(1)*y(17));
    residual(13) = (y(6)) - (y(7)*(1-params(4))*y(18)/(y(5)*(1+params(10)*y(12))));
residual(14) = 1-params(13)+params(13)*y(13)-y(14)*params(18)*(y(14)-(y(14)))+(y(14)-(y(14)))*y(14)*params(1)*params(18);
    residual(15) = (y(18)) - (y(13)-T(8)-y(19)*(1-params(31))*params(28)*(1-y(20))*T(9));
    residual(16) = ((y(19)*params(28)*T(10)/(params(29)*params(30)))^(1/(params(30)-1))) - (y(20));
    residual(17) = (y(9)+y(3)+y(6)*y(5)+y(10)*y(15)/y(14)+y(29)*y(33)/y(14)+y(30)*y(34)/y(14)+y(7)*T(8)+y(19)*y(21)) - (y(10)+y(7)*y(13)+y(7)*(1-y(13)-params(18)/2*T(11))+y(32)+y(31));
    residual(18) = (y(30)) - (y(32));
    residual(19) = (y(29)) - (y(31));
    residual(20) = (y(33)) - (y(15)+params(41));
    residual(21) = (y(32)+y(31)) - (params(40)*(y(10)+y(32)+y(31)));
    residual(22) = (y(7)) - (y(7)*T(8)+y(9)+y(2)+y(22)+T(11)*y(7)*params(18)/2);
    residual(23) = (y(2)) - (y(4)+y(3));
    residual(24) = (y(21)) - (T(10)*params(28)*(1-y(20)));
    residual(25) = (y(1)) - (y(15)/y(14));
    residual(26) = (y(15)) - (T(12)*T(17)*y(40));
    residual(27) = (y(22)) - ((y(7))*params(8)*y(36));
    residual(28) = (y(19)) - (params(32)*y(41));
residual(29) = y(23);
residual(30) = y(24);
residual(31) = y(25);
    residual(32) = (y(26)) - (y(14)-(y(14)));
    residual(33) = (y(27)) - (y(15)-(y(15)));
residual(34) = y(28);
    residual(35) = (log(y(35))) - (log(y(35))*params(20)+x(1));
    residual(36) = (log(y(36))) - (log(y(36))*params(21)+x(2));
    residual(37) = (log(y(37))) - (log(y(37))*params(22)+x(3));
    residual(38) = (log(y(42))) - (log(y(42))*params(27)+x(8));
    residual(39) = (log(y(39))) - (log(y(39))*params(24)+x(5));
    residual(40) = (log(y(38))) - (log(y(38))*params(23)+x(4));
    residual(41) = (log(y(40))) - (log(y(40))*params(25)+x(6));
    residual(42) = (log(y(41))) - (log(y(41))*params(26)+x(7));
    residual(43) = (log(y(44))) - (log(y(44))*params(39)+x(9));
    residual(44) = (log(y(43))) - (log(y(43))*params(38)+x(10));

=======
residual = zeros(36, 1);
lhs = y(16);
rhs = y(31)*T(1);
residual(1) = lhs - rhs;
lhs = params(2)*y(1);
rhs = 1;
residual(2) = lhs - rhs;
lhs = y(16)*y(6);
rhs = params(7)*y(5)^params(6);
residual(3) = lhs - rhs;
lhs = y(33)*y(17);
rhs = 1+y(33)*y(17)*params(14)/2*(1+(-y(9))/y(9));
residual(4) = lhs - rhs;
lhs = y(7);
rhs = T(3)*T(4);
residual(5) = lhs - rhs;
lhs = y(10);
rhs = y(8)*y(17)*y(32)*params(11)/y(1)-y(5)*y(6)*params(10);
residual(6) = lhs - rhs;
lhs = y(33)*y(9);
rhs = y(8)-y(8)*(1-params(3));
residual(7) = lhs - rhs;
lhs = y(11);
rhs = y(31)*T(5);
residual(8) = lhs - rhs;
lhs = 1-y(12);
rhs = y(1)*params(1);
residual(9) = lhs - rhs;
lhs = (1-y(12))*(y(17)*(1-params(3))+y(7)*params(4)*y(18)/y(8))+params(11)*y(32)*y(17)*y(12);
rhs = y(1)*y(17);
residual(10) = lhs - rhs;
lhs = y(6);
rhs = y(7)*(1-params(4))*y(18)/(y(5)*(1+params(10)*y(12)));
residual(11) = lhs - rhs;
residual(12) = 1-params(13)+params(13)*y(13)-params(18)*y(14)*(y(14)-(y(14)))+(y(14)-(y(14)))*y(14)*params(1)*params(18);
lhs = y(18);
rhs = y(13)-T(6)-y(19)*(1-params(31))*params(28)*(1-y(20))*T(7);
residual(13) = lhs - rhs;
lhs = (y(19)*params(28)*T(8)/(params(29)*params(30)))^(1/(params(30)-1));
rhs = y(20);
residual(14) = lhs - rhs;
lhs = y(9)+y(3)+y(6)*y(5)+y(10)*y(15)/y(14)+y(7)*T(6)+y(19)*y(21);
rhs = y(10)+y(7)*y(13)+y(7)*(1-y(13)-params(18)/2*T(9));
residual(15) = lhs - rhs;
lhs = y(7);
rhs = y(7)*T(6)+y(9)+y(2)+y(22)+T(9)*y(7)*params(18)/2;
residual(16) = lhs - rhs;
lhs = y(2);
rhs = y(4)+y(3);
residual(17) = lhs - rhs;
lhs = y(21);
rhs = T(8)*params(28)*(1-y(20));
residual(18) = lhs - rhs;
lhs = y(1);
rhs = y(15)/y(14);
residual(19) = lhs - rhs;
lhs = y(15);
rhs = T(10)*T(15)*y(34);
residual(20) = lhs - rhs;
lhs = y(22);
rhs = (y(7))*params(8)*y(30);
residual(21) = lhs - rhs;
lhs = y(19);
rhs = params(32)*y(35);
residual(22) = lhs - rhs;
residual(23) = y(23);
residual(24) = y(24);
residual(25) = y(25);
lhs = y(26);
rhs = y(14)-(y(14));
residual(26) = lhs - rhs;
lhs = y(27);
rhs = y(15)-(y(15));
residual(27) = lhs - rhs;
residual(28) = y(28);
lhs = log(y(29));
rhs = log(y(29))*params(20)+x(1);
residual(29) = lhs - rhs;
lhs = log(y(30));
rhs = log(y(30))*params(21)+x(2);
residual(30) = lhs - rhs;
lhs = log(y(31));
rhs = log(y(31))*params(22)+x(3);
residual(31) = lhs - rhs;
lhs = log(y(36));
rhs = log(y(36))*params(27)+x(8);
residual(32) = lhs - rhs;
lhs = log(y(33));
rhs = log(y(33))*params(24)+x(5);
residual(33) = lhs - rhs;
lhs = log(y(32));
rhs = log(y(32))*params(23)+x(4);
residual(34) = lhs - rhs;
lhs = log(y(34));
rhs = log(y(34))*params(25)+x(6);
residual(35) = lhs - rhs;
lhs = log(y(35));
rhs = log(y(35))*params(26)+x(7);
residual(36) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
>>>>>>> 9b33eab1212ab750e77b816dff3daff8008c73fa:Practice/+credit_NK/static_resid.m
end
