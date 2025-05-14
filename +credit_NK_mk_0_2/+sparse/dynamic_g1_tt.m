function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = credit_NK_mk_0_2.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 31
    T = [T; NaN(31 - size(T, 1), 1)];
end
T(26) = getPowerDeriv(y(47)-params(13)*y(4),(-params(6)),1);
T(27) = getPowerDeriv(y(48)-params(13)*y(5),(-params(6)),1);
T(28) = getPowerDeriv(y(51),1-params(35),1);
T(29) = getPowerDeriv(y(66)*params(32)*T(17)/(params(34)*params(33)),1/(params(34)-1),1);
T(30) = getPowerDeriv(T(24),1-params(16),1);
T(31) = params(33)*getPowerDeriv(y(67),params(34),1);
end
