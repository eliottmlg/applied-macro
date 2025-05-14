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
    T = credit_NK_mk_0_8.static_resid_tt(T, y, x, params);
end
residual = zeros(43, 1);
    residual(1) = (y(20)) - (y(36)*T(1));
    residual(2) = (params(3)*y(1)) - (1);
    residual(3) = (y(20)*y(7)) - (params(8)*y(6)^params(7));
    residual(4) = (y(38)*y(21)) - (1+y(38)*y(21)*params(15)/2*(1+(-y(10))/y(10)));
    residual(5) = (y(8)) - (T(3)*T(4));
    residual(6) = (y(11)+y(12)) - (y(9)*y(21)*y(37)*params(12)/y(1)-y(6)*y(7)*y(43)*params(11));
    residual(7) = (y(38)*y(10)) - (y(9)-y(9)*(1-params(4)));
    residual(8) = (y(14)) - (y(36)*T(5));
    residual(9) = (1-y(15)) - (y(1)*params(2));
    residual(10) = ((1-y(15))*(y(21)*(1-params(4))+y(8)*params(5)*y(22)/y(9))+params(12)*y(37)*y(21)*y(15)) - (y(1)*y(21));
    residual(11) = (y(7)) - (y(8)*(1-params(5))*y(22)/(y(6)*(1+y(43)*params(11)*y(15))));
residual(12) = 1-params(14)+params(14)*y(16)-params(21)*y(17)*(y(17)-(y(17)))+(y(17)-(y(17)))*y(17)*params(2)*params(21);
    residual(13) = ((y(23)*params(32)*T(6)/(params(34)*params(33)))^(1/(params(34)-1))) - (y(24));
    residual(14) = (y(22)) - (y(16)-T(7)-params(32)*y(23)*(1-params(35))*(1-y(24))*T(8));
    residual(15) = (y(10)+y(4)+y(7)*y(6)+y(11)*y(18)/y(17)+y(12)*y(19)/y(17)+y(8)*T(7)+y(23)*y(25)) - (y(12)+y(11)+y(8)*y(16)+y(8)*(1-y(16)-T(9)));
    residual(16) = (y(8)) - (y(8)*T(7)+y(10)+y(3)+y(26)+y(8)*T(9));
    residual(17) = (y(3)) - (y(5)+y(4));
    residual(18) = (y(25)) - (T(6)*params(32)*(1-y(24)));
    residual(19) = (y(12)) - (y(2)*y(13));
    residual(20) = (y(13)) - (y(11)+y(12));
    residual(21) = (y(19)) - (y(18)-params(23));
    residual(22) = (params(34)*params(33)*y(24)^(params(34)-1)) - (y(2)*params(1));
    residual(23) = (y(1)) - (y(18)/y(17));
    residual(24) = (y(18)) - (T(10)*T(15)*y(39));
    residual(25) = (y(26)) - ((y(8))*params(9)*y(35));
    residual(26) = (y(23)) - (params(36)*y(40));
residual(27) = y(27);
residual(28) = y(28);
residual(29) = y(29);
    residual(30) = (y(30)) - (y(17)-(y(17)));
    residual(31) = (y(31)) - (y(18)-(y(18)));
residual(32) = y(32);
residual(33) = y(33);
    residual(34) = (log(y(34))) - (log(y(34))*params(24)+x(1));
    residual(35) = (log(y(35))) - (log(y(35))*params(25)+x(2));
    residual(36) = (log(y(36))) - (log(y(36))*params(26)+x(3));
    residual(37) = (log(y(38))) - (log(y(38))*params(28)+x(5));
    residual(38) = (log(y(37))) - (log(y(37))*params(27)+x(4));
    residual(39) = (log(y(39))) - (log(y(39))*params(29)+x(6));
    residual(40) = (log(y(40))) - (log(y(40))*params(30)+x(7));
    residual(41) = (log(y(41))) - (log(y(41))*params(31)+x(8));
    residual(42) = (log(y(42))) - (log(y(42))*params(19)+x(9));
    residual(43) = (log(y(43))) - (log(y(43))*params(20)+x(10));

end
