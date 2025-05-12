function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 29
    T = [T; NaN(29 - size(T, 1), 1)];
end
T(1) = (y(37)-params(9)*y(2))^(-params(4));
T(2) = params(1)*y(81)/y(46);
T(3) = params(11)/2;
T(4) = 1+y(42)*(3*y(42)/y(7)-4)/y(7);
T(5) = params(11)*T(2)*y(102)*y(82);
T(6) = 1-y(77)/y(42);
T(7) = T(5)*T(6);
T(8) = (y(77)/y(42))^2;
T(9) = y(6)^params(3);
T(10) = y(64)*params(8)*T(9);
T(11) = y(38)^(1-params(3));
T(12) = y(42)/y(7);
T(13) = 1-T(3)*(T(12)-1)^2;
T(14) = y(75)*y(81)*params(1)*params(16)/y(46)/y(40);
T(15) = T(14)*y(79);
T(16) = params(27)*y(50)^params(28);
T(17) = y(40)^(-params(29));
T(18) = y(40)^(1-params(29));
T(19) = (y(44)-(steady_state(9)))^2;
T(20) = y(10)^params(12);
T(21) = y(44)/(steady_state(9));
T(22) = (steady_state(10))*T(21)^params(15);
T(23) = y(40)/(steady_state(5));
T(24) = T(23)^params(13);
T(25) = T(22)*T(24);
T(26) = T(25)^(1-params(12));
T(27) = T(20)*T(26);
T(28) = y(40)/y(5);
T(29) = T(28)^params(14);
end
