function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = credit_NK_SLB.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 31
    T = [T; NaN(31 - size(T, 1), 1)];
end
T(26) = getPowerDeriv(y(44)-params(14)*y(4),(-params(7)),1);
T(27) = getPowerDeriv(y(45)-params(14)*y(5),(-params(7)),1);
T(28) = getPowerDeriv(y(48),1-params(34),1);
T(29) = getPowerDeriv(y(63)*params(31)*T(17)/(params(33)*params(32)),1/(params(33)-1),1);
T(30) = getPowerDeriv(T(24),1-params(17),1);
T(31) = params(32)*getPowerDeriv(y(64),params(33),1);
end
