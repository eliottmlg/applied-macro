function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 30
    T = [T; NaN(30 - size(T, 1), 1)];
end
T(1) = (y(43)-params(12)*y(4))^(-params(5));
T(2) = params(14)/2;
T(3) = 1+y(48)*(3*y(48)/y(9)-4)/y(9);
T(4) = params(1)*y(89)/y(50);
T(5) = params(14)*T(4)*y(112)*y(95);
T(6) = 1-y(87)/y(48);
T(7) = T(5)*T(6);
T(8) = (y(87)/y(48))^2;
T(9) = y(8)^params(4);
T(10) = y(69)*params(9)*T(9);
T(11) = y(44)^(1-params(4));
T(12) = y(48)/y(9);
T(13) = 1-T(2)*(T(12)-1)^2;
T(14) = (y(42)-params(12)*y(3))^(-params(5));
T(15) = y(85)*y(89)*params(1)*params(18)/y(50)/y(46);
T(16) = T(15)*y(92);
T(17) = params(31)*y(59)^params(32);
T(18) = y(46)^(-params(33));
T(19) = y(46)^(1-params(33));
T(20) = y(58)*params(30)*T(19)/(params(31)*params(32));
T(21) = (y(53)-(steady_state(14)))^2;
T(22) = y(15)^params(15);
T(23) = (steady_state(15))*(y(53)/(steady_state(14)))^params(17);
T(24) = (y(46)/(steady_state(7)))^params(16);
T(25) = T(23)*T(24);
T(26) = T(25)^(1-params(15));
T(27) = y(46)/y(7);
T(28) = y(41)/y(2);
T(29) = y(49)/y(10);
T(30) = y(60)/y(21);
end
