function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 28
    T = [T; NaN(28 - size(T, 1), 1)];
end
T(1) = (y(48)-params(12)*y(4))^(-params(5));
T(2) = params(2)*y(104)/y(60);
T(3) = params(14)/2;
T(4) = 1+y(53)*(3*y(53)/y(9)-4)/y(9);
T(5) = params(1)*y(99)/y(55);
T(6) = params(14)*T(5)*y(127)*y(105);
T(7) = 1-y(97)/y(53);
T(8) = T(6)*T(7);
T(9) = (y(97)/y(53))^2;
T(10) = (y(74)/(y(60)*y(58)))^(-params(37));
T(11) = (y(73)/(y(60)*y(58)))^(-params(36));
T(12) = y(8)^params(4);
T(13) = y(79)*params(9)*T(12);
T(14) = y(49)^(1-params(4));
T(15) = y(53)/y(9);
T(16) = 1-T(3)*(T(15)-1)^2;
T(17) = (y(47)-params(12)*y(3))^(-params(5));
T(18) = y(95)*y(99)*params(1)*params(18)/y(55)/y(51);
T(19) = y(102)*T(18);
T(20) = params(29)*y(64)^params(30);
T(21) = y(51)^(-params(31));
T(22) = y(51)^(1-params(31));
T(23) = (y(58)-(steady_state(14)))^2;
T(24) = y(15)^params(15);
T(25) = (steady_state(15))*(y(58)/(steady_state(14)))^params(17);
T(26) = (y(51)/(steady_state(7)))^params(16);
T(27) = T(25)*T(26);
T(28) = T(27)^(1-params(15));
end
