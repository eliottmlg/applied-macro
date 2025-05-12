function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = SLBnum2.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 88
    T = [T; NaN(88 - size(T, 1), 1)];
end
T(80) = getPowerDeriv(y(47)-params(12)*y(4),(-params(5)),2);
T(81) = (-params(12))*T(80);
T(82) = (-((-(params(1)*y(97)))*(y(54)+y(54))))/(y(54)*y(54)*y(54)*y(54));
T(83) = getPowerDeriv(y(46)-params(12)*y(3),(-params(5)),2);
T(84) = (-params(12))*T(83);
T(85) = getPowerDeriv(y(63),params(30),2);
T(86) = getPowerDeriv(y(50),1-params(31),2);
T(87) = getPowerDeriv(T(22),1/(params(30)-1),2);
T(88) = getPowerDeriv(T(27),1-params(15),2);
end
