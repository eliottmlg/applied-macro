function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = policy_noE.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 19
    T = [T; NaN(19 - size(T, 1), 1)];
end
T(16) = getPowerDeriv(y(7),1-params(33),1);
T(17) = getPowerDeriv(y(19)*params(30)*T(8)/(params(31)*params(32)),1/(params(32)-1),1);
T(18) = getPowerDeriv(T(14),1-params(15),1);
T(19) = params(31)*getPowerDeriv(y(20),params(32),1);
end
