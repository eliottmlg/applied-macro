function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 27
    T = [T; NaN(27 - size(T, 1), 1)];
end
T(1) = (y(47)-params(12)*y(4))^(-params(5));
T(2) = params(14)/2;
T(3) = 1+y(52)*(3*y(52)/y(9)-4)/y(9);
T(4) = params(1)*y(97)/y(54);
T(5) = params(14)*T(4)*y(126)*y(103);
T(6) = 1-y(95)/y(52);
T(7) = T(5)*T(6);
T(8) = (y(95)/y(52))^2;
T(9) = y(8)^params(4);
T(10) = y(79)*params(9)*T(9);
T(11) = y(48)^(1-params(4));
T(12) = y(52)/y(9);
T(13) = 1-T(2)*(T(12)-1)^2;
T(14) = (y(46)-params(12)*y(3))^(-params(5));
T(15) = y(93)*y(97)*params(1)*params(18)/y(54)/y(50);
T(16) = T(15)*y(100);
T(17) = params(29)*y(63)^params(30);
T(18) = y(50)^(-params(31));
T(19) = y(50)^(1-params(31));
T(20) = (y(57)-(steady_state(14)))^2;
T(21) = y(15)^params(15);
T(22) = y(57)/(steady_state(14));
T(23) = (steady_state(15))*T(22)^params(17);
T(24) = y(50)/(steady_state(7));
T(25) = T(24)^params(16);
T(26) = T(23)*T(25);
T(27) = T(26)^(1-params(15));
end
