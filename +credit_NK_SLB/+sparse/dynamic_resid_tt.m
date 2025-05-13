function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 25
    T = [T; NaN(25 - size(T, 1), 1)];
end
T(1) = (y(45)-params(14)*y(5))^(-params(7));
T(2) = params(16)/2;
T(3) = 1+y(50)*(3*y(50)/y(10)-4)/y(10);
T(4) = params(3)*y(94)/y(54);
T(5) = params(16)*T(4)*y(117)*y(101);
T(6) = 1-y(90)/y(50);
T(7) = T(5)*T(6);
T(8) = (y(90)/y(50))^2;
T(9) = y(9)^params(6);
T(10) = y(73)*params(11)*T(9);
T(11) = y(46)^(1-params(6));
T(12) = y(50)/y(10);
T(13) = 1-T(2)*(T(12)-1)^2;
T(14) = (y(44)-params(14)*y(4))^(-params(7));
T(15) = y(94)/y(54)*params(3)*params(20)*y(88)/y(48);
T(16) = T(15)*y(97);
T(17) = params(32)*y(64)^params(33);
T(18) = y(48)^(-params(34));
T(19) = params(20)/2*(y(57)-(steady_state(17)))^2;
T(20) = y(48)^(1-params(34));
T(21) = y(18)^params(17);
T(22) = (steady_state(18))*(y(57)/(steady_state(17)))^params(19);
T(23) = (y(48)/(steady_state(8)))^params(18);
T(24) = T(22)*T(23);
T(25) = T(24)^(1-params(17));
end
