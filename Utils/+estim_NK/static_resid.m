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
    T = estim_NK.static_resid_tt(T, y, x, params);
end
residual = zeros(35, 1);
lhs = y(11);
rhs = y(31)*T(1);
residual(1) = lhs - rhs;
lhs = params(1)*y(1);
rhs = 1;
residual(2) = lhs - rhs;
lhs = y(11)*y(4);
rhs = params(6)*y(3)^params(5);
residual(3) = lhs - rhs;
lhs = y(32)*y(12);
rhs = 1+y(32)*y(12)*params(11)/2*(1+(-y(7))/y(7));
residual(4) = lhs - rhs;
lhs = y(5);
rhs = T(3)*T(4);
residual(5) = lhs - rhs;
lhs = y(32)*y(7);
rhs = y(6)-y(6)*(1-params(2));
residual(6) = lhs - rhs;
lhs = y(12)*(1-params(2))+y(5)*params(3)*y(13)/y(6);
rhs = y(1)*y(12);
residual(7) = lhs - rhs;
lhs = y(4);
rhs = y(5)*(1-params(3))*y(13)/y(3);
residual(8) = lhs - rhs;
residual(9) = 1-params(10)*y(35)+y(35)*params(10)*y(8)-params(16)*y(9)*(y(9)-(y(9)))+(y(9)-(y(9)))*y(9)*params(1)*params(16);
lhs = y(13);
rhs = y(8)-T(5)-y(14)*(1-params(29))*params(26)*(1-y(15))*T(6);
residual(10) = lhs - rhs;
lhs = (y(14)*params(26)*T(7)/(params(27)*params(28)))^(1/(params(28)-1));
rhs = y(15);
residual(11) = lhs - rhs;
lhs = y(5);
rhs = y(2)+y(7)+y(17)+y(5)*T(5)+y(5)*params(16)/2*T(8);
residual(12) = lhs - rhs;
lhs = y(16);
rhs = T(7)*params(26)*(1-y(15));
residual(13) = lhs - rhs;
lhs = y(1);
rhs = y(10)/y(9);
residual(14) = lhs - rhs;
lhs = y(10);
rhs = T(9)*T(16)*y(33);
residual(15) = lhs - rhs;
lhs = y(17);
rhs = (y(5))*params(7)*y(30);
residual(16) = lhs - rhs;
lhs = y(14);
rhs = params(30)*y(34);
residual(17) = lhs - rhs;
residual(18) = y(18);
residual(19) = y(19);
residual(20) = y(20);
lhs = y(21);
rhs = y(9)-(y(9));
residual(21) = lhs - rhs;
lhs = y(22);
rhs = y(10)-(y(10));
residual(22) = lhs - rhs;
lhs = y(23);
rhs = log(y(3)/(y(3)));
residual(23) = lhs - rhs;
lhs = y(24);
rhs = log(T(13));
residual(24) = lhs - rhs;
lhs = y(25);
rhs = log(y(2)/(y(2)));
residual(25) = lhs - rhs;
lhs = y(26);
rhs = log(y(7)/(y(7)));
residual(26) = lhs - rhs;
lhs = y(27);
rhs = log(T(10));
residual(27) = lhs - rhs;
lhs = y(28);
rhs = log(y(10)/(y(10)));
residual(28) = lhs - rhs;
lhs = log(y(29));
rhs = log(y(29))*params(19)+x(1);
residual(29) = lhs - rhs;
lhs = log(y(30));
rhs = log(y(30))*params(20)+x(2);
residual(30) = lhs - rhs;
lhs = log(y(31));
rhs = log(y(31))*params(21)+x(3);
residual(31) = lhs - rhs;
lhs = log(y(35));
rhs = log(y(35))*params(25)+params(11)/params(10)*x(7);
residual(32) = lhs - rhs;
lhs = log(y(32));
rhs = log(y(32))*params(22)+x(4);
residual(33) = lhs - rhs;
lhs = log(y(33));
rhs = log(y(33))*params(23)+x(5);
residual(34) = lhs - rhs;
lhs = log(y(34));
rhs = log(y(34))*params(24)+x(6);
residual(35) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
