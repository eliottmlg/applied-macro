%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'FBC';
M_.dynare_version = '5.4';
oo_.dynare_version = '5.4';
options_.dynare_version = '5.4';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'eps_bh'};
M_.exo_names_tex(1) = {'eps\_bh'};
M_.exo_names_long(1) = {'eps_bh'};
M_.endo_names = cell(16,1);
M_.endo_names_tex = cell(16,1);
M_.endo_names_long = cell(16,1);
M_.endo_names(1) = {'abh'};
M_.endo_names_tex(1) = {'abh'};
M_.endo_names_long(1) = {'abh'};
M_.endo_names(2) = {'acloeb'};
M_.endo_names_tex(2) = {'acloeb'};
M_.endo_names_long(2) = {'acloeb'};
M_.endo_names(3) = {'acloee'};
M_.endo_names_tex(3) = {'acloee'};
M_.endo_names_long(3) = {'acloee'};
M_.endo_names(4) = {'cb'};
M_.endo_names_tex(4) = {'cb'};
M_.endo_names_long(4) = {'cb'};
M_.endo_names(5) = {'ce'};
M_.endo_names_tex(5) = {'ce'};
M_.endo_names_long(5) = {'ce'};
M_.endo_names(6) = {'ch'};
M_.endo_names_tex(6) = {'ch'};
M_.endo_names_long(6) = {'ch'};
M_.endo_names(7) = {'d'};
M_.endo_names_tex(7) = {'d'};
M_.endo_names_long(7) = {'d'};
M_.endo_names(8) = {'he'};
M_.endo_names_tex(8) = {'he'};
M_.endo_names_long(8) = {'he'};
M_.endo_names(9) = {'hh'};
M_.endo_names_tex(9) = {'hh'};
M_.endo_names_long(9) = {'hh'};
M_.endo_names(10) = {'loe'};
M_.endo_names_tex(10) = {'loe'};
M_.endo_names_long(10) = {'loe'};
M_.endo_names(11) = {'nh'};
M_.endo_names_tex(11) = {'nh'};
M_.endo_names_long(11) = {'nh'};
M_.endo_names(12) = {'q'};
M_.endo_names_tex(12) = {'q'};
M_.endo_names_long(12) = {'q'};
M_.endo_names(13) = {'re'};
M_.endo_names_tex(13) = {'re'};
M_.endo_names_long(13) = {'re'};
M_.endo_names(14) = {'rh'};
M_.endo_names_tex(14) = {'rh'};
M_.endo_names_long(14) = {'rh'};
M_.endo_names(15) = {'wh'};
M_.endo_names_tex(15) = {'wh'};
M_.endo_names_long(15) = {'wh'};
M_.endo_names(16) = {'y'};
M_.endo_names_tex(16) = {'y'};
M_.endo_names_long(16) = {'y'};
M_.endo_partitions = struct();
M_.param_names = cell(14,1);
M_.param_names_tex = cell(14,1);
M_.param_names_long = cell(14,1);
M_.param_names(1) = {'BETAH'};
M_.param_names_tex(1) = {'BETAH'};
M_.param_names_long(1) = {'BETAH'};
M_.param_names(2) = {'BETAE'};
M_.param_names_tex(2) = {'BETAE'};
M_.param_names_long(2) = {'BETAE'};
M_.param_names(3) = {'BETAB'};
M_.param_names_tex(3) = {'BETAB'};
M_.param_names_long(3) = {'BETAB'};
M_.param_names(4) = {'TAUH'};
M_.param_names_tex(4) = {'TAUH'};
M_.param_names_long(4) = {'TAUH'};
M_.param_names(5) = {'NU'};
M_.param_names_tex(5) = {'NU'};
M_.param_names_long(5) = {'NU'};
M_.param_names(6) = {'JEI'};
M_.param_names_tex(6) = {'JEI'};
M_.param_names_long(6) = {'JEI'};
M_.param_names(7) = {'MN'};
M_.param_names_tex(7) = {'MN'};
M_.param_names_long(7) = {'MN'};
M_.param_names(8) = {'MH'};
M_.param_names_tex(8) = {'MH'};
M_.param_names_long(8) = {'MH'};
M_.param_names(9) = {'GAMMAE'};
M_.param_names_tex(9) = {'GAMMAE'};
M_.param_names_long(9) = {'GAMMAE'};
M_.param_names(10) = {'FILOEE'};
M_.param_names_tex(10) = {'FILOEE'};
M_.param_names_long(10) = {'FILOEE'};
M_.param_names(11) = {'FILOEB'};
M_.param_names_tex(11) = {'FILOEB'};
M_.param_names_long(11) = {'FILOEB'};
M_.param_names(12) = {'LOE_SS'};
M_.param_names_tex(12) = {'LOE\_SS'};
M_.param_names_long(12) = {'LOE_SS'};
M_.param_names(13) = {'RHO_ABH'};
M_.param_names_tex(13) = {'RHO\_ABH'};
M_.param_names_long(13) = {'RHO_ABH'};
M_.param_names(14) = {'Y_SS'};
M_.param_names_tex(14) = {'Y\_SS'};
M_.param_names_long(14) = {'Y_SS'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 16;
M_.param_nbr = 14;
M_.orig_endo_nbr = 16;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.orig_eq_nbr = 16;
M_.eq_nbr = 16;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 1 7 0;
 0 8 0;
 0 9 0;
 0 10 23;
 0 11 24;
 0 12 25;
 2 13 0;
 3 14 0;
 4 15 0;
 5 16 0;
 0 17 0;
 0 18 26;
 0 19 27;
 6 20 0;
 0 21 0;
 0 22 28;]';
M_.nstatic = 4;
M_.nfwrd   = 6;
M_.npred   = 6;
M_.nboth   = 0;
M_.nsfwrd   = 6;
M_.nspred   = 6;
M_.ndynamic   = 12;
M_.dynamic_tmp_nbr = [5; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , '2' ;
  3 , 'name' , '3' ;
  4 , 'name' , '4' ;
  5 , 'name' , '5' ;
  6 , 'name' , 'd' ;
  7 , 'name' , '7' ;
  8 , 'name' , '8' ;
  9 , 'name' , 'y' ;
  10 , 'name' , 'loe' ;
  11 , 'name' , '11' ;
  12 , 'name' , '12' ;
  13 , 'name' , '13' ;
  14 , 'name' , 'abh' ;
  15 , 'name' , 'acloeb' ;
  16 , 'name' , 'acloee' ;
};
M_.mapping.abh.eqidx = [1 5 6 14 ];
M_.mapping.acloeb.eqidx = [7 15 ];
M_.mapping.acloee.eqidx = [11 12 16 ];
M_.mapping.cb.eqidx = [5 7 ];
M_.mapping.ce.eqidx = [8 11 12 ];
M_.mapping.ch.eqidx = [1 2 3 4 ];
M_.mapping.d.eqidx = [1 5 6 ];
M_.mapping.he.eqidx = [8 9 10 11 13 ];
M_.mapping.hh.eqidx = [1 4 13 ];
M_.mapping.loe.eqidx = [5 6 8 10 15 16 ];
M_.mapping.nh.eqidx = [1 3 8 9 10 12 ];
M_.mapping.q.eqidx = [1 4 8 10 11 ];
M_.mapping.re.eqidx = [5 7 8 10 11 12 ];
M_.mapping.rh.eqidx = [1 2 5 7 ];
M_.mapping.wh.eqidx = [1 3 8 10 12 ];
M_.mapping.y.eqidx = [8 9 11 12 ];
M_.mapping.eps_bh.eqidx = [14 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 7 8 9 10 14 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(16, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(14, 1);
M_.endo_trends = struct('deflator', cell(16, 1), 'log_deflator', cell(16, 1), 'growth_factor', cell(16, 1), 'log_growth_factor', cell(16, 1));
M_.NNZDerivatives = [82; -1; -1; ];
M_.static_tmp_nbr = [4; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.9925;
BETAH = M_.params(1);
M_.params(2) = 0.94;
BETAE = M_.params(2);
M_.params(3) = 0.945;
BETAB = M_.params(3);
M_.params(4) = 2;
TAUH = M_.params(4);
M_.params(5) = 0.05;
NU = M_.params(5);
M_.params(6) = 0.075;
JEI = M_.params(6);
M_.params(7) = 1;
MN = M_.params(7);
M_.params(8) = 0.9;
MH = M_.params(8);
M_.params(9) = 0.9;
GAMMAE = M_.params(9);
M_.params(10) = 0.25;
FILOEE = M_.params(10);
M_.params(11) = 0.25;
FILOEB = M_.params(11);
M_.params(13) = 0.9;
RHO_ABH = M_.params(13);
C0      = 0.5;
D0      = 0.5;
W0      = 1;
N0      = 0.3436;
Rh0     = 1.0075;
Re0     = 1.0104;
H0      = 0.2639;
q0      = 3;
L0      = 0.5;
Y0      = 0.5;
parametri=[BETAH BETAE BETAB TAUH NU JEI MN MH GAMMAE];
x0=[C0 D0 W0 N0 Rh0 Re0 H0 q0 L0 Y0];
options  = optimset('Display','iter');
[ss,Fval,exitflag] = fsolve('ssiacov',x0,options,parametri);
M_.params(12) = ss(9);
LOE_SS = M_.params(12);
M_.params(14) = ss(10);
Y_SS = M_.params(14);
CE=-ss(6)*ss(9)-ss(3)*ss(4)+ss(10)+ss(9);
CB=ss(2)+ss(6)*ss(9)-ss(5)*ss(2)-ss(9);
shock=0.0038*Y_SS;
xx=[ss CE CB]
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(6) = C0;
oo_.steady_state(7) = D0;
oo_.steady_state(15) = W0;
oo_.steady_state(11) = N0;
oo_.steady_state(14) = Rh0;
oo_.steady_state(13) = Re0;
oo_.steady_state(8) = H0;
oo_.steady_state(9) = 0.8;
oo_.steady_state(12) = q0;
oo_.steady_state(10) = L0;
oo_.steady_state(16) = Y0;
oo_.steady_state(5) = 0.01;
oo_.steady_state(4) = 0.01;
oo_.steady_state(1) = 0;
oo_.steady_state(3) = 0;
oo_.steady_state(2) = 0;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.det_shocks = [ M_.det_shocks;
struct('exo_det',0,'exo_id',1,'multiplicative',0,'periods',1:12,'value',0.00116936) ];
M_.exo_det_length = 0;
options_.irf = 20;
options_.nomoments = true;
options_.order = 1;
var_list_ = {'y';'ce';'ch';'re';'rh';'abh'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
ex_=[  0.001169*ones(12,1); zeros(16,1)];
y0=oo_.dr.ys;
dr=oo_.dr;
iorder=1;
y_=simult_(y0,dr,ex_,iorder);
subplot(2,2,1)
plot((y_(16,2:end)/y_(16,1)-1)*100)
title('output,% from s.s.')
subplot(2,2,2)
plot(400*((y_(13,2:end)-(y_(14,2:end)))))
title('Annualized spread')
subplot(2,2,3)
plot((y_(1,2:end))/(y_(16,1))*100); hold on
plot(cumsum(y_(1,2:end))/(y_(16,1)*4)*100,'r-.')
legend('Loan Losses','Cumulated losses')
subplot(2,2,4)
plot((y_(12,2:end)/y_(12,1)-1)*100)
title('House Prices')


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'FBC_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'FBC_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'FBC_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'FBC_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'FBC_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'FBC_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'FBC_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
