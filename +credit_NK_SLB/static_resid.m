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
    T = credit_NK_SLB.static_resid_tt(T, y, x, params);
end
residual = zeros(39, 1);
    residual(1) = (y(19)) - (y(34)*T(1));
    residual(2) = (params(2)*y(1)) - (1);
    residual(3) = (y(19)*y(6)) - (params(7)*y(5)^params(6));
    residual(4) = (y(36)*y(20)) - (1+y(36)*y(20)*params(14)/2*(1+(-y(9))/y(9)));
    residual(5) = (y(7)) - (T(3)*T(4));
    residual(6) = (y(10)+y(11)) - (y(8)*y(20)*y(35)*params(11)/y(1)-y(5)*y(6)*params(10));
    residual(7) = (y(36)*y(9)) - (y(8)-y(8)*(1-params(3)));
    residual(8) = (y(13)) - (y(34)*T(5));
    residual(9) = (1-y(14)) - (y(1)*params(1));
    residual(10) = ((1-y(14))*(y(20)*(1-params(3))+y(7)*params(4)*y(21)/y(8))+params(11)*y(35)*y(20)*y(14)) - (y(1)*y(20));
    residual(11) = (y(6)) - (y(7)*(1-params(4))*y(21)/(y(5)*(1+params(10)*y(14))));
residual(12) = 1-params(13)+params(13)*y(15)-params(18)*y(16)*(y(16)-(y(16)))+(y(16)-(y(16)))*y(16)*params(1)*params(18);
    residual(13) = ((y(22)*params(30)*T(6)/(params(32)*params(31)))^(1/(params(32)-1))) - (y(23));
    residual(14) = (y(21)) - (y(15)-T(7)-params(30)*y(22)*(1-params(33))*(1-y(23))*T(8));
    residual(15) = (y(9)+y(3)+y(6)*y(5)+y(10)*y(17)/y(16)+y(11)*y(18)/y(16)+y(7)*T(7)+y(22)*y(24)) - (y(11)+y(10)+y(7)*y(15)+y(7)*(1-y(15)-T(9)));
    residual(16) = (y(7)) - (y(7)*T(7)+y(9)+y(2)+y(25)+y(7)*T(9));
    residual(17) = (y(2)) - (y(4)+y(3));
    residual(18) = (y(24)) - (T(6)*params(30)*(1-y(23)));
    residual(19) = (y(11)) - (params(21)*y(12));
    residual(20) = (y(12)) - (y(10)+y(11));
    residual(21) = (y(18)) - (y(17)-params(20));
    residual(22) = (y(1)) - (y(17)/y(16));
    residual(23) = (y(17)) - (T(10)*T(15)*y(37));
    residual(24) = (y(25)) - ((y(7))*params(8)*y(33));
    residual(25) = (y(22)) - (params(34)*y(38));
residual(26) = y(26);
residual(27) = y(27);
residual(28) = y(28);
    residual(29) = (y(29)) - (y(16)-(y(16)));
    residual(30) = (y(30)) - (y(17)-(y(17)));
residual(31) = y(31);
    residual(32) = (log(y(32))) - (log(y(32))*params(22)+x(1));
    residual(33) = (log(y(33))) - (log(y(33))*params(23)+x(2));
    residual(34) = (log(y(34))) - (log(y(34))*params(24)+x(3));
    residual(35) = (log(y(36))) - (log(y(36))*params(26)+x(5));
    residual(36) = (log(y(35))) - (log(y(35))*params(25)+x(4));
    residual(37) = (log(y(37))) - (log(y(37))*params(27)+x(6));
    residual(38) = (log(y(38))) - (log(y(38))*params(28)+x(7));
    residual(39) = (log(y(39))) - (log(y(39))*params(29)+x(8));

end
