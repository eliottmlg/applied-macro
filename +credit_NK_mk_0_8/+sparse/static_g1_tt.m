function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = credit_NK_mk_0_8.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 19
    T = [T; NaN(19 - size(T, 1), 1)];
end
T(16) = getPowerDeriv(y(8),1-params(35),1);
T(17) = getPowerDeriv(y(23)*params(32)*T(6)/(params(34)*params(33)),1/(params(34)-1),1);
T(18) = getPowerDeriv(T(14),1-params(16),1);
T(19) = params(33)*getPowerDeriv(y(24),params(34),1);
end
