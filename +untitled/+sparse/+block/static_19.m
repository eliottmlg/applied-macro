function [y, T, residual, g1] = static_19(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(16))-(y(35)*(y(4)-y(4)*params(12))^(-params(5)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-(y(35)*(1-params(12))*getPowerDeriv(y(4)-y(4)*params(12),(-params(5)),1)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
