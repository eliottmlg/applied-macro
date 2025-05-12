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
    T = SLBnum3.static_resid_tt(T, y, x, params);
end
residual = zeros(43, 1);
    residual(1) = (y(12)) - (y(35)*T(1));
    residual(2) = (params(2)*y(1)) - (1);
    residual(3) = (y(12)*y(6)) - (params(19)*y(5)^params(6));
    residual(4) = (y(37)*y(17)) - (1+y(37)*y(17)*params(15)/2*(1+(-y(9))/y(9)));
    residual(5) = (params(2)*y(24)/y(15)+params(27)/y(12)*T(2)) - (1);
    residual(6) = (y(7)) - (T(4)*T(5));
    residual(7) = (y(10)) - (y(8)*y(17)*y(36)*params(18)/y(1)-y(5)*y(6)*params(17));
    residual(8) = (y(37)*y(9)) - (y(8)-y(8)*(1-params(3)));
    residual(9) = (y(11)) - (y(35)*T(6));
    residual(10) = (1-y(13)) - (y(1)*params(1));
    residual(11) = ((1-y(13))*(y(17)*(1-params(3))+y(7)*params(4)*y(18)/y(8))+params(18)*y(36)*y(17)*y(13)+y(17)*y(26)*y(43)*params(33)*T(7)) - (y(1)*y(17));
    residual(12) = (y(6)) - (y(7)*(1-params(4))*y(18)/(y(5)*(1+params(17)*y(13))));
residual(13) = 1-params(14)+params(14)*y(14)-y(15)*params(10)*(y(15)-(y(15)))+(y(15)-(y(15)))*y(15)*params(1)*params(10);
    residual(14) = (y(18)) - (y(14)-params(23)*T(8)-y(19)*(1-params(22))*params(21)*(1-y(20))*T(9)-T(8)*params(23)*y(26)*params(32));
    residual(15) = (y(20)) - ((y(19)*params(21)*T(10)/(params(23)*params(24)*(1+y(26))))^(1/(params(24)-1)));
    residual(16) = (1-y(26)) - (params(1)*y(25));
    residual(17) = (y(9)+y(3)+y(6)*y(5)+y(10)*y(16)/y(15)+y(23)*y(24)/y(15)+y(7)*params(23)*T(8)+y(19)*y(21)) - (y(23)+y(10)+y(7)*y(14)+y(7)*(1-y(14)-T(11)));
    residual(18) = (y(7)) - (y(7)*params(23)*T(8)+y(9)+y(2)+y(22)+y(7)*T(11));
    residual(19) = (y(2)) - (y(4)+y(3));
    residual(20) = (y(21)) - (T(10)*params(21)*(1-y(20)));
    residual(21) = (y(1)) - (y(16)/y(15));
    residual(22) = (y(25)) - (y(24)/y(15));
    residual(23) = (y(24)) - (y(16)-params(28));
    residual(24) = (y(16)) - (T(12)*T(17)*y(38));
    residual(25) = (y(22)) - ((y(7))*params(9)*y(34));
    residual(26) = (y(19)) - (params(20)*y(39));
residual(27) = y(27);
residual(28) = y(28);
residual(29) = y(29);
    residual(30) = (y(30)) - (y(15)-(y(15)));
    residual(31) = (y(31)) - (y(16)-(y(16)));
residual(32) = y(32);
    residual(33) = (log(y(33))) - (log(y(33))*params(34)+x(1));
    residual(34) = (log(y(34))) - (log(y(34))*params(35)+x(2));
    residual(35) = (log(y(35))) - (log(y(35))*params(36)+x(3));
    residual(36) = (log(y(40))) - (log(y(40))*params(41)+x(8));
    residual(37) = (log(y(37))) - (log(y(37))*params(38)+x(5));
    residual(38) = (log(y(36))) - (log(y(36))*params(37)+x(4));
    residual(39) = (log(y(38))) - (log(y(38))*params(39)+x(6));
    residual(40) = (log(y(39))) - (log(y(39))*params(40)+x(7));
    residual(41) = (log(y(41))) - (log(y(41))*params(42)+x(9));
    residual(42) = (log(y(42))) - (log(y(42))*params(43)+x(10));
    residual(43) = (log(y(43))) - (log(y(43))*params(44)+x(11));

end
