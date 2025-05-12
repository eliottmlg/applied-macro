function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 17
    T = [T; NaN(17 - size(T, 1), 1)];
end
T(1) = (y(4)-y(4)*params(7))^(-params(5));
T(2) = y(23)^(-params(26));
T(3) = y(8)^params(4);
T(4) = y(33)*params(8)*T(3);
T(5) = y(5)^(1-params(4));
T(6) = (y(3)-params(7)*y(3))^(-params(5));
T(7) = y(1)/y(25);
T(8) = y(20)^params(24);
T(9) = y(7)^(-params(22));
T(10) = y(7)^(1-params(22));
T(11) = params(10)/2*(y(15)-(y(15)))^2;
T(12) = y(16)^params(13);
T(13) = (y(15)/(y(15)))^params(11);
T(14) = (y(16))*T(13);
T(15) = (y(7)/(y(7)))^params(12);
T(16) = T(14)*T(15);
T(17) = T(16)^(1-params(13));
end
