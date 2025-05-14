function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = FBC.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(16, 29);
g1(1,7)=(-1);
g1(1,12)=1;
g1(1,2)=(-y(6));
g1(1,13)=1;
g1(1,4)=(-y(18));
g1(1,15)=y(18);
g1(1,17)=(-y(21));
g1(1,18)=y(15)-y(4);
g1(1,6)=(-y(2));
g1(1,21)=(-y(17));
g1(2,12)=(-1)/(y(12)*y(12));
g1(2,25)=(-(params(1)*y(20)*(-1)/(y(25)*y(25))));
g1(2,20)=(-(params(1)*1/y(25)));
g1(3,12)=(-y(21))/(y(12)*y(12));
g1(3,17)=(-(params(4)/((1-y(17))*(1-y(17)))));
g1(3,21)=1/y(12);
g1(4,12)=(-y(18))/(y(12)*y(12));
g1(4,25)=(-((-(params(1)*y(26)))/(y(25)*y(25))));
g1(4,15)=(-((-params(6))/(y(15)*y(15))));
g1(4,18)=1/y(12);
g1(4,26)=(-(params(1)/y(25)));
g1(5,7)=1;
g1(5,10)=1;
g1(5,2)=y(6);
g1(5,13)=(-1);
g1(5,5)=(-y(19));
g1(5,16)=1;
g1(5,19)=(-y(5));
g1(5,6)=y(2);
g1(6,7)=params(9);
g1(6,13)=1;
g1(6,16)=(-params(9));
g1(7,8)=y(23);
g1(7,10)=(-(params(3)*(y(27)-y(20)*params(9))));
g1(7,23)=1-params(9)+y(8);
g1(7,27)=(-(y(10)*params(3)));
g1(7,20)=(-(y(10)*params(3)*(-params(9))));
g1(8,11)=1;
g1(8,3)=(-y(18));
g1(8,14)=y(18);
g1(8,5)=y(19);
g1(8,16)=(-1);
g1(8,17)=y(21);
g1(8,18)=y(14)-y(3);
g1(8,19)=y(5);
g1(8,21)=y(17);
g1(8,22)=(-1);
g1(9,3)=(-(T(2)*getPowerDeriv(y(3),params(5),1)));
g1(9,17)=(-(T(1)*getPowerDeriv(y(17),1-params(5),1)));
g1(9,22)=1;
g1(10,14)=(-(params(8)*y(26)/y(27)));
g1(10,16)=1;
g1(10,17)=y(21)*params(7);
g1(10,26)=(-(y(14)*params(8)*1/y(27)));
g1(10,27)=(-(y(14)*params(8)*(-y(26))/(y(27)*y(27))));
g1(10,21)=y(17)*params(7);
g1(11,9)=y(26)*params(8)/y(27)*T(3);
g1(11,11)=(y(18)-(1-y(9))*y(26)*params(8)/y(27))*(-1)/(y(11)*y(11));
g1(11,24)=(-(params(2)*(y(26)*(1-params(8))+params(5)*y(28)/y(14))*(-1)/(y(24)*y(24))));
g1(11,14)=(-(T(4)*params(2)*params(5)*(-y(28))/(y(14)*y(14))));
g1(11,18)=T(3);
g1(11,26)=T(3)*(-((1-y(9))*params(8)/y(27)))-T(4)*params(2)*(1-params(8));
g1(11,27)=T(3)*(-((1-y(9))*(-(y(26)*params(8)))/(y(27)*y(27))));
g1(11,28)=(-(T(4)*params(2)*params(5)*1/y(14)));
g1(12,9)=(-(y(21)*y(17)*(-params(7))));
g1(12,11)=(-(y(21)*y(17)*params(7)*(-(y(27)*params(2)/y(24)))));
g1(12,24)=(-(y(21)*y(17)*params(7)*(-((-(y(11)*y(27)*params(2)))/(y(24)*y(24))))));
g1(12,17)=(-(y(21)*T(5)));
g1(12,27)=(-(y(21)*y(17)*params(7)*(-(y(11)*params(2)/y(24)))));
g1(12,21)=(-(y(17)*T(5)));
g1(12,22)=1-params(5);
g1(13,14)=1;
g1(13,15)=1;
g1(14,1)=(-params(13));
g1(14,7)=1;
g1(14,29)=(-1);
g1(15,8)=1;
g1(15,5)=(-((-params(11))/params(12)));
g1(15,16)=(-(params(11)/params(12)));
g1(16,9)=1;
g1(16,5)=(-((-params(10))/params(12)));
g1(16,16)=(-(params(10)/params(12)));

end
