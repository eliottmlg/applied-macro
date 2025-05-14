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
    T = FBC.static_resid_tt(T, y, x, params);
end
residual = zeros(16, 1);
lhs = y(6)+y(7);
rhs = y(7)*y(14)+y(15)*y(11)+y(1);
residual(1) = lhs - rhs;
lhs = T(1);
rhs = T(1)*y(14)*params(1);
residual(2) = lhs - rhs;
lhs = y(15)/y(6);
rhs = params(4)/(1-y(11));
residual(3) = lhs - rhs;
lhs = y(12)/y(6);
rhs = params(6)/y(9)+y(12)*params(1)/y(6);
residual(4) = lhs - rhs;
lhs = y(7)*y(14)+y(4)+y(10);
rhs = y(7)+y(10)*y(13)-y(1);
residual(5) = lhs - rhs;
lhs = y(7);
rhs = params(9)*(y(10)-y(1));
residual(6) = lhs - rhs;
lhs = y(4)*(1-params(9)+y(2));
rhs = y(4)*params(3)*(y(13)-y(14)*params(9));
residual(7) = lhs - rhs;
lhs = y(15)*y(11)+y(10)*y(13)+y(5);
rhs = y(10)+y(16);
residual(8) = lhs - rhs;
lhs = y(16);
rhs = T(2)*T(3);
residual(9) = lhs - rhs;
lhs = y(10);
rhs = y(8)*params(8)*y(12)/y(13)-y(11)*y(15)*params(7);
residual(10) = lhs - rhs;
lhs = (y(12)-(1-y(3))*y(12)*params(8)/y(13))*T(4);
rhs = T(4)*params(2)*(y(12)*(1-params(8))+params(5)*y(16)/y(8));
residual(11) = lhs - rhs;
lhs = y(16)*(1-params(5));
rhs = y(15)*y(11)*(1+params(7)*(1-y(3)-y(13)*params(2)));
residual(12) = lhs - rhs;
lhs = y(9)+y(8);
rhs = 1;
residual(13) = lhs - rhs;
lhs = y(1);
rhs = y(1)*params(13)+x(1);
residual(14) = lhs - rhs;
residual(15) = y(2);
residual(16) = y(3);
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
