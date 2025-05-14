function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 16
    T = [T; NaN(16 - size(T, 1), 1)];
end
T(1) = (y(4)-y(4)*params(12))^(-params(5));
T(2) = y(29)^(-params(38));
T(3) = y(8)^params(4);
T(4) = y(33)*params(9)*T(3);
T(5) = y(5)^(1-params(4));
T(6) = (y(3)-params(12)*y(3))^(-params(5));
T(7) = params(29)*y(20)^params(30);
T(8) = y(7)^(-params(31));
T(9) = y(7)^(1-params(31));
T(10) = (y(14)-(y(14)))^2;
T(11) = y(15)^params(15);
T(12) = (y(14)/(y(14)))^params(17);
T(13) = (y(15))*T(12);
T(14) = (y(7)/(y(7)))^params(16);
T(15) = T(13)*T(14);
T(16) = T(15)^(1-params(15));
end
