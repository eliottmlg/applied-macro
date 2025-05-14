function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 15
    T = [T; NaN(15 - size(T, 1), 1)];
end
T(1) = (y(5)-y(5)*params(13))^(-params(6));
T(2) = y(9)^params(5);
T(3) = y(34)*params(10)*T(2);
T(4) = y(6)^(1-params(5));
T(5) = (y(4)-params(13)*y(4))^(-params(6));
T(6) = y(8)^(1-params(35));
T(7) = params(33)*y(24)^params(34);
T(8) = y(8)^(-params(35));
T(9) = params(21)/2*(y(17)-(y(17)))^2;
T(10) = y(18)^params(16);
T(11) = (y(17)/(y(17)))^params(18);
T(12) = (y(18))*T(11);
T(13) = (y(8)/(y(8)))^params(17);
T(14) = T(12)*T(13);
T(15) = T(14)^(1-params(16));
end
