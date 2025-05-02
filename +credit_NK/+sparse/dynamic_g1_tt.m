function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = credit_NK.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 37
    T = [T; NaN(37 - size(T, 1), 1)];
end
T(29) = getPowerDeriv(y(47)-params(12)*y(3),(-params(5)),1);
T(30) = getPowerDeriv(y(48)-params(12)*y(4),(-params(5)),1);
T(31) = getPowerDeriv(y(51),1-params(31),1);
T(32) = getPowerDeriv(y(63)*params(28)*T(22)/(params(29)*params(30)),1/(params(30)-1),1);
T(33) = getPowerDeriv(T(27),1-params(15),1);
T(34) = getPowerDeriv(y(74)/(y(60)*y(58)),(-params(37)),1);
T(35) = getPowerDeriv(y(73)/(y(60)*y(58)),(-params(36)),1);
T(36) = (-(params(2)*y(104)))/(y(60)*y(60));
T(37) = params(29)*getPowerDeriv(y(64),params(30),1);
end
