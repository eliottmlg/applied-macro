function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = SLBnum2.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 79
    T = [T; NaN(79 - size(T, 1), 1)];
end
T(32) = 1/y(74);
T(33) = (-y(45))/(y(2)*y(2));
T(34) = 1/y(2);
T(35) = getPowerDeriv(y(46)-params(12)*y(3),(-params(5)),1);
T(36) = getPowerDeriv(y(47)-params(12)*y(4),(-params(5)),1);
T(37) = getPowerDeriv(y(48),1-params(4),1);
T(38) = y(48)*(1+params(10)*y(55))*y(48)*(1+params(10)*y(55));
T(39) = (-y(50))/(y(7)*y(7));
T(40) = (-(y(93)*y(97)*params(1)*params(18)/y(54)))/(y(50)*y(50));
T(41) = y(100)*T(40);
T(42) = getPowerDeriv(y(50),(-params(31)),1);
T(43) = getPowerDeriv(y(50),1-params(31),1);
T(44) = y(62)*params(28)*T(43)/(params(29)*params(30)*(1+y(75)));
T(45) = getPowerDeriv(T(22),1/(params(30)-1),1);
T(46) = 1/(steady_state(7))*getPowerDeriv(y(50)/(steady_state(7)),params(16),1);
T(47) = T(25)*T(46);
T(48) = getPowerDeriv(T(27),1-params(15),1);
T(49) = 1/y(7);
T(50) = y(97)*params(1)*params(18)/y(54)/y(50);
T(51) = y(100)*T(50);
T(52) = getPowerDeriv(y(8),params(4),1);
T(53) = y(76)*params(9)*T(52);
T(54) = y(9)*y(52)*(-(3*y(52)))/(y(9)*y(9))-y(52)*(3*y(52)/y(9)-4);
T(55) = (-y(52))/(y(9)*y(9));
T(56) = 3*y(52)/y(9)-4+y(52)*3/y(9);
T(57) = (-y(95))/(y(52)*y(52));
T(58) = 2*y(95)/y(52);
T(59) = T(57)*T(58);
T(60) = 1/y(9);
T(61) = 1/y(52);
T(62) = T(58)*T(61);
T(63) = (-y(53))/(y(10)*y(10));
T(64) = 1/y(10);
T(65) = (-(params(1)*y(97)))/(y(54)*y(54));
T(66) = y(93)*(-(y(97)*params(1)*params(18)))/(y(54)*y(54))/y(50);
T(67) = y(100)*T(66);
T(68) = params(1)/y(54);
T(69) = params(14)*y(103)*y(123)*T(68);
T(70) = y(93)*params(1)*params(18)/y(54)/y(50);
T(71) = y(100)*T(70);
T(72) = (steady_state(15))*1/(steady_state(14))*getPowerDeriv(y(57)/(steady_state(14)),params(17),1);
T(73) = 1/y(57);
T(74) = getPowerDeriv(y(15),params(15),1);
T(75) = params(28)*T(21)/(params(29)*params(30)*(1+y(75)));
T(76) = getPowerDeriv(y(63),params(30),1);
T(77) = getPowerDeriv(y(72),(-params(38)),1);
T(78) = (-y(44))/(y(74)*y(74));
T(79) = (-(y(62)*params(28)*T(21)*params(29)*params(30)))/(params(29)*params(30)*(1+y(75))*params(29)*params(30)*(1+y(75)));
end
