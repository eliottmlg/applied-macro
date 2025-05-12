function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = credit_NK_SLB.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 69
    T = [T; NaN(69 - size(T, 1), 1)];
end
T(32) = (-y(41))/(y(2)*y(2));
T(33) = 1/y(2);
T(34) = getPowerDeriv(y(42)-params(12)*y(3),(-params(5)),1);
T(35) = getPowerDeriv(y(43)-params(12)*y(4),(-params(5)),1);
T(36) = getPowerDeriv(y(44),1-params(4),1);
T(37) = y(44)*(1+params(10)*y(53))*y(44)*(1+params(10)*y(53));
T(38) = (-y(46))/(y(7)*y(7));
T(39) = getPowerDeriv(y(46),1-params(33),1);
T(40) = y(61)*params(30)*T(39)/(params(32)*params(31));
T(41) = getPowerDeriv(T(20),1/(params(32)-1),1);
T(42) = getPowerDeriv(y(46),(-params(33)),1);
T(43) = 1/(steady_state(7))*getPowerDeriv(y(46)/(steady_state(7)),params(16),1);
T(44) = T(25)*T(43);
T(45) = getPowerDeriv(T(27),1-params(15),1);
T(46) = 1/y(7);
T(47) = getPowerDeriv(y(8),params(4),1);
T(48) = y(71)*params(9)*T(47);
T(49) = y(9)*y(48)*(-(3*y(48)))/(y(9)*y(9))-y(48)*(3*y(48)/y(9)-4);
T(50) = (-y(48))/(y(9)*y(9));
T(51) = 3*y(48)/y(9)-4+y(48)*3/y(9);
T(52) = (-y(87))/(y(48)*y(48));
T(53) = 2*y(87)/y(48);
T(54) = T(52)*T(53);
T(55) = 1/y(9);
T(56) = 1/y(48);
T(57) = T(53)*T(56);
T(58) = (-y(51))/(y(12)*y(12));
T(59) = 1/y(12);
T(60) = params(1)*(-y(91))/(y(52)*y(52));
T(61) = params(14)*y(98)*y(114)*T(60);
T(62) = params(1)*params(18)*(-y(91))/(y(52)*y(52));
T(63) = params(1)*1/y(52);
T(64) = params(14)*y(98)*y(114)*T(63);
T(65) = params(18)/2*2*(y(55)-(steady_state(16)));
T(66) = (steady_state(17))*1/(steady_state(16))*getPowerDeriv(y(55)/(steady_state(16)),params(17),1);
T(67) = 1/y(55);
T(68) = getPowerDeriv(y(17),params(15),1);
T(69) = params(31)*getPowerDeriv(y(62),params(32),1);
end
