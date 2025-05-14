function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = credit_NK_mk_0_8.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 75
    T = [T; NaN(75 - size(T, 1), 1)];
end
T(31) = (-y(41))/(y(2)*y(2));
T(32) = 1/y(2);
T(33) = getPowerDeriv(y(42)-params(12)*y(3),(-params(5)),1);
T(34) = getPowerDeriv(y(43)-params(12)*y(4),(-params(5)),1);
T(35) = getPowerDeriv(y(44),1-params(4),1);
T(36) = y(44)*(1+y(78)*params(10)*y(51))*y(44)*(1+y(78)*params(10)*y(51));
T(37) = (-y(46))/(y(7)*y(7));
T(38) = (-(y(85)*y(89)*params(1)*params(18)/y(50)))/(y(46)*y(46));
T(39) = y(92)*T(38);
T(40) = getPowerDeriv(y(46),(-params(33)),1);
T(41) = getPowerDeriv(y(46),1-params(33),1);
T(42) = y(58)*params(30)*T(41)/(params(31)*params(32));
T(43) = getPowerDeriv(T(20),1/(params(32)-1),1);
T(44) = 1/(steady_state(7))*getPowerDeriv(y(46)/(steady_state(7)),params(16),1);
T(45) = T(23)*T(44);
T(46) = getPowerDeriv(T(25),1-params(15),1);
T(47) = 1/y(7);
T(48) = y(89)*params(1)*params(18)/y(50)/y(46);
T(49) = y(92)*T(48);
T(50) = getPowerDeriv(y(8),params(4),1);
T(51) = y(69)*params(9)*T(50);
T(52) = y(9)*y(48)*(-(3*y(48)))/(y(9)*y(9))-y(48)*(3*y(48)/y(9)-4);
T(53) = (-y(48))/(y(9)*y(9));
T(54) = 3*y(48)/y(9)-4+y(48)*3/y(9);
T(55) = (-y(87))/(y(48)*y(48));
T(56) = 2*y(87)/y(48);
T(57) = T(55)*T(56);
T(58) = 1/y(9);
T(59) = 1/y(48);
T(60) = T(56)*T(59);
T(61) = (-y(49))/(y(10)*y(10));
T(62) = 1/y(10);
T(63) = (-(params(1)*y(89)))/(y(50)*y(50));
T(64) = params(14)*y(95)*y(112)*T(63);
T(65) = y(85)*(-(y(89)*params(1)*params(18)))/(y(50)*y(50))/y(46);
T(66) = y(92)*T(65);
T(67) = params(1)/y(50);
T(68) = params(14)*y(95)*y(112)*T(67);
T(69) = y(85)*params(1)*params(18)/y(50)/y(46);
T(70) = y(92)*T(69);
T(71) = (steady_state(15))*1/(steady_state(14))*getPowerDeriv(y(53)/(steady_state(14)),params(17),1);
T(72) = getPowerDeriv(y(15),params(15),1);
T(73) = params(31)*getPowerDeriv(y(59),params(32),1);
T(74) = (-y(60))/(y(21)*y(21));
T(75) = 1/y(21);
end
