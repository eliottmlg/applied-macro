function [residual, g1, g2, g3] = static(y, x, params)
    T = NaN(19, 1);
    if nargout <= 1
        residual = credit_NK_SLB.static_resid(T, y, x, params, true);
    elseif nargout == 2
        [residual, g1] = credit_NK_SLB.static_resid_g1(T, y, x, params, true);
    elseif nargout == 3
        [residual, g1, g2] = credit_NK_SLB.static_resid_g1_g2(T, y, x, params, true);
    else
        [residual, g1, g2, g3] = credit_NK_SLB.static_resid_g1_g2_g3(T, y, x, params, true);
    end
end
