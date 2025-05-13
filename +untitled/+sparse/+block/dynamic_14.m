function [y, T, residual, g1] = dynamic_14(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(59))-(y(78)*(y(47)-params(12)*y(4))^(-params(5)));
  T(21)=getPowerDeriv(y(47)-params(12)*y(4),(-params(5)),1);
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-(y(78)*T(21)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
