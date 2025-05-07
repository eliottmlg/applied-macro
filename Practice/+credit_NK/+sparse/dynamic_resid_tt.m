function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 27
    T = [T; NaN(27 - size(T, 1), 1)];
end
T(1) = (y(45)-params(12)*y(4))^(-params(5));
T(2) = params(14)/2;
T(3) = 1+y(50)*(3*y(50)/y(9)-4)/y(9);
T(4) = params(1)*y(93)/y(52);
T(5) = params(14)*T(4)*y(120)*y(99);
T(6) = 1-y(91)/y(50);
T(7) = T(5)*T(6);
T(8) = (y(91)/y(50))^2;
T(9) = y(8)^params(4);
T(10) = y(75)*params(9)*T(9);
T(11) = y(46)^(1-params(4));
T(12) = y(50)/y(9);
T(13) = 1-T(2)*(T(12)-1)^2;
T(14) = (y(44)-params(12)*y(3))^(-params(5));
T(15) = y(89)*y(93)*params(1)*params(18)/y(52)/y(48);
T(16) = T(15)*y(96);
T(17) = params(29)*y(61)^params(30);
T(18) = y(48)^(-params(31));
T(19) = y(48)^(1-params(31));
T(20) = (y(55)-(steady_state(14)))^2;
T(21) = y(15)^params(15);
T(22) = y(55)/(steady_state(14));
T(23) = (steady_state(15))*T(22)^params(17);
T(24) = y(48)/(steady_state(7));
T(25) = T(24)^params(16);
T(26) = T(23)*T(25);
T(27) = T(26)^(1-params(15));
end
