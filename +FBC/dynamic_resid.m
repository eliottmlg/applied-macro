function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = FBC.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(16, 1);
lhs = y(12)+y(13)+y(18)*(y(15)-y(4));
rhs = y(6)*y(2)+y(21)*y(17)+y(7);
residual(1) = lhs - rhs;
lhs = 1/y(12);
rhs = params(1)*y(20)*1/y(25);
residual(2) = lhs - rhs;
lhs = y(21)/y(12);
rhs = params(4)/(1-y(17));
residual(3) = lhs - rhs;
lhs = y(18)/y(12);
rhs = params(6)/y(15)+params(1)*y(26)/y(25);
residual(4) = lhs - rhs;
lhs = y(6)*y(2)+y(10)+y(16);
rhs = y(13)+y(19)*y(5)-y(7);
residual(5) = lhs - rhs;
lhs = y(13);
rhs = params(9)*(y(16)-y(7));
residual(6) = lhs - rhs;
lhs = (1-params(9)+y(8))*y(23);
rhs = y(10)*params(3)*(y(27)-y(20)*params(9));
residual(7) = lhs - rhs;
lhs = y(21)*y(17)+y(19)*y(5)+y(11)+y(18)*(y(14)-y(3));
rhs = y(16)+y(22);
residual(8) = lhs - rhs;
lhs = y(22);
rhs = T(1)*T(2);
residual(9) = lhs - rhs;
lhs = y(16);
rhs = y(14)*params(8)*y(26)/y(27)-y(17)*y(21)*params(7);
residual(10) = lhs - rhs;
lhs = (y(18)-(1-y(9))*y(26)*params(8)/y(27))*T(3);
rhs = params(2)*(y(26)*(1-params(8))+params(5)*y(28)/y(14))*T(4);
residual(11) = lhs - rhs;
lhs = y(22)*(1-params(5));
rhs = y(21)*y(17)*T(5);
residual(12) = lhs - rhs;
lhs = y(15)+y(14);
rhs = 1;
residual(13) = lhs - rhs;
lhs = y(7);
rhs = params(13)*y(1)+x(it_, 1);
residual(14) = lhs - rhs;
lhs = y(8);
rhs = params(11)*(y(16)-y(5))/params(12);
residual(15) = lhs - rhs;
lhs = y(9);
rhs = (y(16)-y(5))*params(10)/params(12);
residual(16) = lhs - rhs;

end
