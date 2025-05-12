function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = SLBnum3.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 21
    T = [T; NaN(21 - size(T, 1), 1)];
end
T(18) = getPowerDeriv(y(7),1-params(22),1);
T(19) = getPowerDeriv(y(19)*params(21)*T(10)/(params(23)*params(24)*(1+y(26))),1/(params(24)-1),1);
T(20) = getPowerDeriv(T(16),1-params(13),1);
T(21) = getPowerDeriv(y(20),params(24),1);
end
