function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = credit_NK_SLB.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 17
    T = [T; NaN(17 - size(T, 1), 1)];
end
T(16) = getPowerDeriv(T(14),1-params(17),1);
T(17) = params(32)*getPowerDeriv(y(24),params(33),1);
end
