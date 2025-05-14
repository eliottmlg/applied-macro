function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 84);

T = credit_NK_mk_0_8.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(76) = getPowerDeriv(y(23)-params(12)*y(3),(-params(5)),2);
T(77) = (-params(12))*T(76);
T(78) = getPowerDeriv(y(22)-params(12)*y(2),(-params(5)),2);
T(79) = (-params(12))*T(78);
T(80) = y(24)*(1+y(58)*params(10)*y(31))*y(24)*params(10)*y(31)+y(24)*(1+y(58)*params(10)*y(31))*y(24)*params(10)*y(31);
T(81) = params(31)*getPowerDeriv(y(39),params(32),2);
T(82) = getPowerDeriv(y(26),1-params(33),2);
T(83) = getPowerDeriv(T(20),1/(params(32)-1),2);
T(84) = getPowerDeriv(T(25),1-params(15),2);

end
