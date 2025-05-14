function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 26
    T = [T; NaN(26 - size(T, 1), 1)];
end
T(1) = (y(47)-params(12)*y(4))^(-params(5));
T(2) = params(14)/2;
T(3) = 1+y(52)*(3*y(52)/y(9)-4)/y(9);
T(4) = params(1)*y(97)/y(54);
T(5) = params(14)*T(4)*y(123)*y(103);
T(6) = 1-y(95)/y(52);
T(7) = T(5)*T(6);
T(8) = (y(95)/y(52))^2;
T(9) = y(72)^(-params(38));
T(10) = y(8)^params(4);
T(11) = y(76)*params(9)*T(10);
T(12) = y(48)^(1-params(4));
T(13) = y(52)/y(9);
T(14) = 1-T(2)*(T(13)-1)^2;
T(15) = (y(46)-params(12)*y(3))^(-params(5));
T(16) = y(93)*y(97)*params(1)*params(18)/y(54)/y(50);
T(17) = y(100)*T(16);
T(18) = params(29)*y(63)^params(30);
T(19) = y(50)^(-params(31));
T(20) = y(50)^(1-params(31));
T(21) = (y(57)-(steady_state(14)))^2;
T(22) = y(15)^params(15);
T(23) = (steady_state(15))*(y(57)/(steady_state(14)))^params(17);
T(24) = (y(50)/(steady_state(7)))^params(16);
T(25) = T(23)*T(24);
T(26) = T(25)^(1-params(15));
end
