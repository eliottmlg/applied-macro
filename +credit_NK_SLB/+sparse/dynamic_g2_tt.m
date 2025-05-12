function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = credit_NK_SLB.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 77
    T = [T; NaN(77 - size(T, 1), 1)];
end
T(70) = getPowerDeriv(y(43)-params(12)*y(4),(-params(5)),2);
T(71) = (-params(12))*T(70);
T(72) = getPowerDeriv(y(42)-params(12)*y(3),(-params(5)),2);
T(73) = (-params(12))*T(72);
T(74) = getPowerDeriv(y(46),1-params(33),2);
T(75) = getPowerDeriv(T(20),1/(params(32)-1),2);
T(76) = params(31)*getPowerDeriv(y(62),params(32),2);
T(77) = getPowerDeriv(T(27),1-params(15),2);
end
