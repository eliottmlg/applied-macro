function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = credit_NK_original.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 31
    T = [T; NaN(31 - size(T, 1), 1)];
end
T(26) = getPowerDeriv(y(39)-params(12)*y(3),(-params(5)),1);
T(27) = getPowerDeriv(y(40)-params(12)*y(4),(-params(5)),1);
T(28) = getPowerDeriv(y(43),1-params(31),1);
T(29) = getPowerDeriv(y(55)*params(28)*T(19)/(params(29)*params(30)),1/(params(30)-1),1);
T(30) = getPowerDeriv(T(24),1-params(15),1);
T(31) = params(29)*getPowerDeriv(y(56),params(30),1);
end
