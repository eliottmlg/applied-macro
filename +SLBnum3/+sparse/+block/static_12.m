function [y, T, residual, g1] = static_12(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(9)=log(y(41));
  residual(1)=(T(9))-(T(9)*params(42)+x(9));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(41)-params(42)*1/y(41);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
