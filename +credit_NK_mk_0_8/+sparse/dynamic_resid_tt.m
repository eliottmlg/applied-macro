function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 25
    T = [T; NaN(25 - size(T, 1), 1)];
end
T(1) = (y(48)-params(13)*y(5))^(-params(6));
T(2) = params(15)/2;
T(3) = 1+y(53)*(3*y(53)/y(10)-4)/y(10);
T(4) = params(2)*y(100)/y(57);
T(5) = params(15)*T(4)*y(124)*y(107);
T(6) = 1-y(96)/y(53);
T(7) = T(5)*T(6);
T(8) = (y(96)/y(53))^2;
T(9) = y(9)^params(5);
T(10) = y(77)*params(10)*T(9);
T(11) = y(49)^(1-params(5));
T(12) = y(53)/y(10);
T(13) = 1-T(2)*(T(12)-1)^2;
T(14) = (y(47)-params(13)*y(4))^(-params(6));
T(15) = y(100)/y(57)*params(2)*params(21)*y(94)/y(51);
T(16) = T(15)*y(103);
T(17) = y(51)^(1-params(35));
T(18) = params(33)*y(67)^params(34);
T(19) = y(51)^(-params(35));
T(20) = params(21)/2*(y(60)-(steady_state(17)))^2;
T(21) = y(18)^params(16);
T(22) = (steady_state(18))*(y(60)/(steady_state(17)))^params(18);
T(23) = (y(51)/(steady_state(8)))^params(17);
T(24) = T(22)*T(23);
T(25) = T(24)^(1-params(16));
end
