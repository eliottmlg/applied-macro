function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = credit_NK.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 19
    T = [T; NaN(19 - size(T, 1), 1)];
end
T(16) = getPowerDeriv(y(7),1-params(31),1);
T(17) = getPowerDeriv(y(19)*params(28)*T(8)/(params(29)*params(30)),1/(params(30)-1),1);
T(18) = getPowerDeriv(T(14),1-params(15),1);
T(19) = params(29)*getPowerDeriv(y(20),params(30),1);
end
