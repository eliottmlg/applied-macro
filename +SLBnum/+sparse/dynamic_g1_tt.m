function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = SLBnum.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 32
    T = [T; NaN(32 - size(T, 1), 1)];
end
T(27) = getPowerDeriv(y(46)-params(12)*y(3),(-params(5)),1);
T(28) = getPowerDeriv(y(47)-params(12)*y(4),(-params(5)),1);
T(29) = getPowerDeriv(y(50),1-params(31),1);
T(30) = getPowerDeriv((y(62)*params(28)*T(20)+y(75)*params(41))/(params(29)*params(30)),1/(params(30)-1),1);
T(31) = getPowerDeriv(T(25),1-params(15),1);
T(32) = params(29)*getPowerDeriv(y(63),params(30),1);
end
