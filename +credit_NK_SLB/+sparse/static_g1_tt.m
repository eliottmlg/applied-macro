function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = credit_NK_SLB.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 19
    T = [T; NaN(19 - size(T, 1), 1)];
end
T(16) = getPowerDeriv(y(8),1-params(34),1);
T(17) = getPowerDeriv(y(23)*params(31)*T(6)/(params(33)*params(32)),1/(params(33)-1),1);
T(18) = getPowerDeriv(T(14),1-params(17),1);
T(19) = params(32)*getPowerDeriv(y(24),params(33),1);
end
