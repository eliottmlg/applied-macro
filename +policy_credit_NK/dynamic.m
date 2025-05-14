function [residual, g1, g2, g3] = dynamic(y, x, params, steady_state, it_)
    T = NaN(84, 1);
    if nargout <= 1
        residual = policy_credit_NK.dynamic_resid(T, y, x, params, steady_state, it_, true);
    elseif nargout == 2
        [residual, g1] = policy_credit_NK.dynamic_resid_g1(T, y, x, params, steady_state, it_, true);
    elseif nargout == 3
        [residual, g1, g2] = policy_credit_NK.dynamic_resid_g1_g2(T, y, x, params, steady_state, it_, true);
    else
        [residual, g1, g2, g3] = policy_credit_NK.dynamic_resid_g1_g2_g3(T, y, x, params, steady_state, it_, true);
    end
end
