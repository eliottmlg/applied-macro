function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = SLBnum3.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 34
    T = [T; NaN(34 - size(T, 1), 1)];
end
T(28) = getPowerDeriv(y(46)-params(7)*y(3),(-params(5)),1);
T(29) = getPowerDeriv(y(47)-params(7)*y(4),(-params(5)),1);
T(30) = getPowerDeriv(y(50),1-params(22),1);
T(31) = getPowerDeriv(y(62)*params(21)*T(21)/(params(23)*params(24)*(1+y(69))),1/(params(24)-1),1);
T(32) = getPowerDeriv(T(26),1-params(13),1);
T(33) = (-(params(1)*y(97)))/(y(54)*y(54));
T(34) = getPowerDeriv(y(63),params(24),1);
end
