function [y, T] = dynamic_10(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(62)=log(y(44)/(steady_state(9)));
  y(63)=log(y(45)/(steady_state(10)));
  y(61)=log(y(42)/(steady_state(7)));
  y(60)=log(y(37)/(steady_state(2)));
  y(59)=log(y(40)/(steady_state(5)));
  y(58)=log(y(38)/(steady_state(3)));
  y(57)=y(45)-(steady_state(10));
  y(56)=y(44)-(steady_state(9));
  y(55)=log(y(42)/y(7));
  y(54)=log(y(37)/y(2));
  y(53)=log(y(40)/y(5));
  y(51)=T(1)*params(26)*(1-y(50));
end
