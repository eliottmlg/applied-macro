function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 25
    T = [T; NaN(25 - size(T, 1), 1)];
end
T(1) = (y(40)-params(12)*y(4))^(-params(5));
T(2) = params(14)/2;
T(3) = 1+y(45)*(3*y(45)/y(9)-4)/y(9);
T(4) = params(1)*y(83)/y(47);
T(5) = params(14)*T(4)*y(105)*y(89);
T(6) = 1-y(81)/y(45);
T(7) = T(5)*T(6);
T(8) = (y(81)/y(45))^2;
T(9) = y(8)^params(4);
T(10) = y(65)*params(9)*T(9);
T(11) = y(41)^(1-params(4));
T(12) = y(45)/y(9);
T(13) = 1-T(2)*(T(12)-1)^2;
T(14) = (y(39)-params(12)*y(3))^(-params(5));
T(15) = y(79)*y(83)*params(1)*params(18)/y(47)/y(43);
T(16) = T(15)*y(86);
T(17) = params(29)*y(56)^params(30);
T(18) = y(43)^(-params(31));
T(19) = y(43)^(1-params(31));
T(20) = (y(50)-(steady_state(14)))^2;
T(21) = y(15)^params(15);
T(22) = (steady_state(15))*(y(50)/(steady_state(14)))^params(17);
T(23) = (y(43)/(steady_state(7)))^params(16);
T(24) = T(22)*T(23);
T(25) = T(24)^(1-params(15));
end
