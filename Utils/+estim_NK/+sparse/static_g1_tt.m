function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = estim_NK.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 20
    T = [T; NaN(20 - size(T, 1), 1)];
end
T(17) = getPowerDeriv(y(5),1-params(29),1);
T(18) = getPowerDeriv(y(14)*params(26)*T(7)/(params(27)*params(28)),1/(params(28)-1),1);
T(19) = getPowerDeriv(T(15),1-params(12),1);
T(20) = params(27)*getPowerDeriv(y(15),params(28),1);
end
