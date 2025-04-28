function [y, T, residual, g1] = static_6(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4)=log(y(35));
  residual(1)=(T(4))-(T(4)*params(25)+params(11)/params(10)*x(7));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(35)-params(25)*1/y(35);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
