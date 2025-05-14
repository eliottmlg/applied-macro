function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 15
    T = [T; NaN(15 - size(T, 1), 1)];
end
T(1) = (y(4)-y(4)*params(12))^(-params(5));
T(2) = y(8)^params(4);
T(3) = y(30)*params(9)*T(2);
T(4) = y(5)^(1-params(4));
T(5) = (y(3)-params(12)*y(3))^(-params(5));
T(6) = params(31)*y(20)^params(32);
T(7) = y(7)^(-params(33));
T(8) = y(7)^(1-params(33));
T(9) = (y(14)-(y(14)))^2;
T(10) = y(15)^params(15);
T(11) = (y(14)/(y(14)))^params(17);
T(12) = (y(15))*T(11);
T(13) = (y(7)/(y(7)))^params(16);
T(14) = T(12)*T(13);
T(15) = T(14)^(1-params(15));
end
