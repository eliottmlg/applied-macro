function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = credit_NK.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 24
    T = [T; NaN(24 - size(T, 1), 1)];
end
T(18) = getPowerDeriv(y(7),1-params(31),1);
T(19) = getPowerDeriv(y(19)*params(28)*T(10)/(params(29)*params(30)),1/(params(30)-1),1);
T(20) = getPowerDeriv(T(16),1-params(15),1);
T(21) = getPowerDeriv(y(30)/(y(16)*y(14)),(-params(37)),1);
T(22) = getPowerDeriv(y(29)/(y(16)*y(14)),(-params(36)),1);
T(23) = 1/y(14);
T(24) = params(29)*getPowerDeriv(y(20),params(30),1);
end
