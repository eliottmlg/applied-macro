function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = policy_credit_NK.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 84
    T = [T; NaN(84 - size(T, 1), 1)];
end
T(76) = getPowerDeriv(y(43)-params(12)*y(4),(-params(5)),2);
T(77) = (-params(12))*T(76);
T(78) = getPowerDeriv(y(42)-params(12)*y(3),(-params(5)),2);
T(79) = (-params(12))*T(78);
T(80) = y(44)*(1+y(78)*params(10)*y(51))*y(44)*params(10)*y(51)+y(44)*(1+y(78)*params(10)*y(51))*y(44)*params(10)*y(51);
T(81) = params(31)*getPowerDeriv(y(59),params(32),2);
T(82) = getPowerDeriv(y(46),1-params(33),2);
T(83) = getPowerDeriv(T(20),1/(params(32)-1),2);
T(84) = getPowerDeriv(T(25),1-params(15),2);
end
