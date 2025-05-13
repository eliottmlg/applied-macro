function [y, T, residual, g1] = static_18(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9)+y(3)+y(6)*y(5)+y(10)*y(15)/y(14)+y(29)*y(30)/y(14)+y(7)*params(29)*T(12)+y(19)*y(21))-(y(29)+y(10)+y(7)*y(13)+y(7)*(1-y(13)-params(18)/2*(y(14)-(y(14)))^2));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
