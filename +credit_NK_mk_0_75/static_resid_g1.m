function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
% function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = credit_NK_mk_0_75.static_g1_tt(T, y, x, params);
    end
    residual = credit_NK_mk_0_75.static_resid(T, y, x, params, false);
    g1       = credit_NK_mk_0_75.static_g1(T, y, x, params, false);

end
