function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 29);

T = credit_NK_SLB.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(26) = getPowerDeriv(y(23)-params(14)*y(2),(-params(7)),1);
T(27) = getPowerDeriv(y(24)-params(14)*y(3),(-params(7)),1);
T(28) = getPowerDeriv(T(24),1-params(17),1);
T(29) = params(32)*getPowerDeriv(y(43),params(33),1);

end
