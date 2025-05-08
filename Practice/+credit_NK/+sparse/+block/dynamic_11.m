function [y, T] = dynamic_11(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(75)=log(y(57)/(steady_state(14)));
  y(76)=log(y(58)/(steady_state(15)));
  y(74)=log(y(52)/(steady_state(9)));
  y(73)=log(y(45)/(steady_state(2)));
  y(72)=log(y(50)/(steady_state(7)));
  y(78)=log(y(64))-log(y(21));
  y(77)=log(y(53))-log(y(10));
  y(71)=log(y(53)/y(10));
  y(70)=y(58)-(steady_state(15));
  y(69)=y(57)-(steady_state(14));
  y(68)=log(y(52)/y(9));
  y(67)=log(y(45)/y(2));
  y(66)=log(y(50)/y(7));
end
