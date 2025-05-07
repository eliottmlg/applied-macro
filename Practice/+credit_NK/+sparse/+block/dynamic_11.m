function [y, T] = dynamic_11(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(74)=log(y(56)/(steady_state(15)));
  y(73)=log(y(55)/(steady_state(14)));
  y(72)=log(y(50)/(steady_state(9)));
  y(71)=log(y(43)/(steady_state(2)));
  y(70)=log(y(48)/(steady_state(7)));
  y(69)=log(y(51)/y(10));
  y(68)=y(56)-(steady_state(15));
  y(67)=y(55)-(steady_state(14));
  y(66)=log(y(50)/y(9));
  y(65)=log(y(43)/y(2));
  y(64)=log(y(48)/y(7));
end
