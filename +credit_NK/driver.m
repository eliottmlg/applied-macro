%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clearvars -global
clear_persistent_variables(fileparts(which('dynare')), false)
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info
options_ = [];
M_.fname = 'credit_NK';
M_.dynare_version = '6.2';
oo_.dynare_version = '6.2';
options_.dynare_version = '6.2';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(7,1);
M_.exo_names_tex = cell(7,1);
M_.exo_names_long = cell(7,1);
M_.exo_names(1) = {'eta_a'};
M_.exo_names_tex(1) = {'eta\_a'};
M_.exo_names_long(1) = {'eta_a'};
M_.exo_names(2) = {'eta_g'};
M_.exo_names_tex(2) = {'eta\_g'};
M_.exo_names_long(2) = {'eta_g'};
M_.exo_names(3) = {'eta_c'};
M_.exo_names_tex(3) = {'eta\_c'};
M_.exo_names_long(3) = {'eta_c'};
M_.exo_names(4) = {'eta_i'};
M_.exo_names_tex(4) = {'eta\_i'};
M_.exo_names_long(4) = {'eta_i'};
M_.exo_names(5) = {'eta_r'};
M_.exo_names_tex(5) = {'eta\_r'};
M_.exo_names_long(5) = {'eta_r'};
M_.exo_names(6) = {'eta_t'};
M_.exo_names_tex(6) = {'eta\_t'};
M_.exo_names_long(6) = {'eta_t'};
M_.exo_names(7) = {'eta_p'};
M_.exo_names_tex(7) = {'eta\_p'};
M_.exo_names_long(7) = {'eta_p'};
M_.endo_names = cell(35,1);
M_.endo_names_tex = cell(35,1);
M_.endo_names_long = cell(35,1);
M_.endo_names(1) = {'rr'};
M_.endo_names_tex(1) = {'rr'};
M_.endo_names_long(1) = {'rr'};
M_.endo_names(2) = {'c'};
M_.endo_names_tex(2) = {'c'};
M_.endo_names_long(2) = {'c'};
M_.endo_names(3) = {'h'};
M_.endo_names_tex(3) = {'h'};
M_.endo_names_long(3) = {'h'};
M_.endo_names(4) = {'w'};
M_.endo_names_tex(4) = {'w'};
M_.endo_names_long(4) = {'w'};
M_.endo_names(5) = {'y'};
M_.endo_names_tex(5) = {'y'};
M_.endo_names_long(5) = {'y'};
M_.endo_names(6) = {'k'};
M_.endo_names_tex(6) = {'k'};
M_.endo_names_long(6) = {'k'};
M_.endo_names(7) = {'i'};
M_.endo_names_tex(7) = {'i'};
M_.endo_names_long(7) = {'i'};
M_.endo_names(8) = {'mc'};
M_.endo_names_tex(8) = {'mc'};
M_.endo_names_long(8) = {'mc'};
M_.endo_names(9) = {'pi'};
M_.endo_names_tex(9) = {'pi'};
M_.endo_names_long(9) = {'pi'};
M_.endo_names(10) = {'r'};
M_.endo_names_tex(10) = {'r'};
M_.endo_names_long(10) = {'r'};
M_.endo_names(11) = {'lb'};
M_.endo_names_tex(11) = {'lb'};
M_.endo_names_long(11) = {'lb'};
M_.endo_names(12) = {'q'};
M_.endo_names_tex(12) = {'q'};
M_.endo_names_long(12) = {'q'};
M_.endo_names(13) = {'varrho'};
M_.endo_names_tex(13) = {'varrho'};
M_.endo_names_long(13) = {'varrho'};
M_.endo_names(14) = {'tau'};
M_.endo_names_tex(14) = {'tau'};
M_.endo_names_long(14) = {'tau'};
M_.endo_names(15) = {'mu'};
M_.endo_names_tex(15) = {'mu'};
M_.endo_names_long(15) = {'mu'};
M_.endo_names(16) = {'e'};
M_.endo_names_tex(16) = {'e'};
M_.endo_names_long(16) = {'e'};
M_.endo_names(17) = {'g'};
M_.endo_names_tex(17) = {'g'};
M_.endo_names_long(17) = {'g'};
M_.endo_names(18) = {'gy_obs'};
M_.endo_names_tex(18) = {'{\Delta log(Y_{t})}'};
M_.endo_names_long(18) = {'Output growth'};
M_.endo_names(19) = {'gc_obs'};
M_.endo_names_tex(19) = {'{\Delta log(C_{t})}'};
M_.endo_names_long(19) = {'Consumption growth'};
M_.endo_names(20) = {'gi_obs'};
M_.endo_names_tex(20) = {'{\Delta log(I_{t})}'};
M_.endo_names_long(20) = {'Investment growth'};
M_.endo_names(21) = {'pi_obs'};
M_.endo_names_tex(21) = {'{\pi_{t}}'};
M_.endo_names_long(21) = {'Inflation'};
M_.endo_names(22) = {'r_obs'};
M_.endo_names_tex(22) = {'{R_{t}}'};
M_.endo_names_long(22) = {'Interest rate'};
M_.endo_names(23) = {'h_obs'};
M_.endo_names_tex(23) = {'{H_{t}}'};
M_.endo_names_long(23) = {'Hours'};
M_.endo_names(24) = {'lny'};
M_.endo_names_tex(24) = {'lny'};
M_.endo_names_long(24) = {'lny'};
M_.endo_names(25) = {'lnc'};
M_.endo_names_tex(25) = {'lnc'};
M_.endo_names_long(25) = {'lnc'};
M_.endo_names(26) = {'lni'};
M_.endo_names_tex(26) = {'lni'};
M_.endo_names_long(26) = {'lni'};
M_.endo_names(27) = {'lnpi'};
M_.endo_names_tex(27) = {'lnpi'};
M_.endo_names_long(27) = {'lnpi'};
M_.endo_names(28) = {'lnr'};
M_.endo_names_tex(28) = {'lnr'};
M_.endo_names_long(28) = {'lnr'};
M_.endo_names(29) = {'e_a'};
M_.endo_names_tex(29) = {'e\_a'};
M_.endo_names_long(29) = {'e_a'};
M_.endo_names(30) = {'e_g'};
M_.endo_names_tex(30) = {'e\_g'};
M_.endo_names_long(30) = {'e_g'};
M_.endo_names(31) = {'e_c'};
M_.endo_names_tex(31) = {'e\_c'};
M_.endo_names_long(31) = {'e_c'};
M_.endo_names(32) = {'e_i'};
M_.endo_names_tex(32) = {'e\_i'};
M_.endo_names_long(32) = {'e_i'};
M_.endo_names(33) = {'e_r'};
M_.endo_names_tex(33) = {'e\_r'};
M_.endo_names_long(33) = {'e_r'};
M_.endo_names(34) = {'e_t'};
M_.endo_names_tex(34) = {'e\_t'};
M_.endo_names_long(34) = {'e_t'};
M_.endo_names(35) = {'e_p'};
M_.endo_names_tex(35) = {'e\_p'};
M_.endo_names_long(35) = {'e_p'};
M_.endo_partitions = struct();
M_.param_names = cell(31,1);
M_.param_names_tex = cell(31,1);
M_.param_names_long = cell(31,1);
M_.param_names(1) = {'beta'};
M_.param_names_tex(1) = {'beta'};
M_.param_names_long(1) = {'beta'};
M_.param_names(2) = {'delta'};
M_.param_names_tex(2) = {'delta'};
M_.param_names_long(2) = {'delta'};
M_.param_names(3) = {'alpha'};
M_.param_names_tex(3) = {'alpha'};
M_.param_names_long(3) = {'alpha'};
M_.param_names(4) = {'sigmaC'};
M_.param_names_tex(4) = {'sigmaC'};
M_.param_names_long(4) = {'sigmaC'};
M_.param_names(5) = {'sigmaH'};
M_.param_names_tex(5) = {'sigmaH'};
M_.param_names_long(5) = {'sigmaH'};
M_.param_names(6) = {'chi'};
M_.param_names_tex(6) = {'chi'};
M_.param_names_long(6) = {'chi'};
M_.param_names(7) = {'gy'};
M_.param_names_tex(7) = {'gy'};
M_.param_names_long(7) = {'gy'};
M_.param_names(8) = {'A'};
M_.param_names_tex(8) = {'A'};
M_.param_names_long(8) = {'A'};
M_.param_names(9) = {'hh'};
M_.param_names_tex(9) = {'hh'};
M_.param_names_long(9) = {'hh'};
M_.param_names(10) = {'epsilon'};
M_.param_names_tex(10) = {'epsilon'};
M_.param_names_long(10) = {'epsilon'};
M_.param_names(11) = {'kappa'};
M_.param_names_tex(11) = {'kappa'};
M_.param_names_long(11) = {'kappa'};
M_.param_names(12) = {'rho'};
M_.param_names_tex(12) = {'rho'};
M_.param_names_long(12) = {'rho'};
M_.param_names(13) = {'phi_y'};
M_.param_names_tex(13) = {'phi\_y'};
M_.param_names_long(13) = {'phi_y'};
M_.param_names(14) = {'phi_dy'};
M_.param_names_tex(14) = {'phi\_dy'};
M_.param_names_long(14) = {'phi_dy'};
M_.param_names(15) = {'phi_pi'};
M_.param_names_tex(15) = {'phi\_pi'};
M_.param_names_long(15) = {'phi_pi'};
M_.param_names(16) = {'xi'};
M_.param_names_tex(16) = {'xi'};
M_.param_names_long(16) = {'xi'};
M_.param_names(17) = {'piss'};
M_.param_names_tex(17) = {'piss'};
M_.param_names_long(17) = {'piss'};
M_.param_names(18) = {'betainv'};
M_.param_names_tex(18) = {'betainv'};
M_.param_names_long(18) = {'betainv'};
M_.param_names(19) = {'rho_a'};
M_.param_names_tex(19) = {'rho\_a'};
M_.param_names_long(19) = {'rho_a'};
M_.param_names(20) = {'rho_g'};
M_.param_names_tex(20) = {'rho\_g'};
M_.param_names_long(20) = {'rho_g'};
M_.param_names(21) = {'rho_c'};
M_.param_names_tex(21) = {'rho\_c'};
M_.param_names_long(21) = {'rho_c'};
M_.param_names(22) = {'rho_i'};
M_.param_names_tex(22) = {'rho\_i'};
M_.param_names_long(22) = {'rho_i'};
M_.param_names(23) = {'rho_r'};
M_.param_names_tex(23) = {'rho\_r'};
M_.param_names_long(23) = {'rho_r'};
M_.param_names(24) = {'rho_t'};
M_.param_names_tex(24) = {'rho\_t'};
M_.param_names_long(24) = {'rho_t'};
M_.param_names(25) = {'rho_p'};
M_.param_names_tex(25) = {'rho\_p'};
M_.param_names_long(25) = {'rho_p'};
M_.param_names(26) = {'sig'};
M_.param_names_tex(26) = {'sig'};
M_.param_names_long(26) = {'sig'};
M_.param_names(27) = {'theta1'};
M_.param_names_tex(27) = {'theta1'};
M_.param_names_long(27) = {'theta1'};
M_.param_names(28) = {'theta2'};
M_.param_names_tex(28) = {'theta2'};
M_.param_names_long(28) = {'theta2'};
M_.param_names(29) = {'varphi'};
M_.param_names_tex(29) = {'varphi'};
M_.param_names_long(29) = {'varphi'};
M_.param_names(30) = {'tau0'};
M_.param_names_tex(30) = {'tau0'};
M_.param_names_long(30) = {'tau0'};
M_.param_names(31) = {'y0'};
M_.param_names_tex(31) = {'y0'};
M_.param_names_long(31) = {'y0'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 7;
M_.endo_nbr = 35;
M_.param_nbr = 31;
M_.orig_endo_nbr = 35;
M_.aux_vars = [];
options_.varobs = cell(5, 1);
options_.varobs(1)  = {'gy_obs'};
options_.varobs(2)  = {'pi_obs'};
options_.varobs(3)  = {'r_obs'};
options_.varobs(4)  = {'gc_obs'};
options_.varobs(5)  = {'gi_obs'};
options_.varobs_id = [ 18 21 22 19 20  ];
M_.Sigma_e = zeros(7, 7);
M_.Correlation_matrix = eye(7, 7);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.learnt_shocks = [];
M_.learnt_endval = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
M_.matched_irfs = {};
M_.matched_irfs_weights = {};
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.ramsey_policy = false;
options_.discretionary_policy = false;
M_.eq_nbr = 35;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
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
 0 13 0;
 1 14 0;
 0 15 0;
 0 16 0;
 2 17 48;
 3 18 0;
 4 19 49;
 0 20 0;
 0 21 50;
 5 22 0;
 0 23 51;
 0 24 52;
 0 25 53;
 0 26 0;
 0 27 0;
 0 28 0;
 0 29 0;
 0 30 0;
 0 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 0;
 0 36 0;
 0 37 0;
 0 38 0;
 0 39 0;
 0 40 0;
 6 41 0;
 7 42 0;
 8 43 0;
 9 44 54;
 10 45 0;
 11 46 0;
 12 47 0;]';
M_.nstatic = 19;
M_.nfwrd   = 4;
M_.npred   = 9;
M_.nboth   = 3;
M_.nsfwrd   = 7;
M_.nspred   = 12;
M_.ndynamic   = 16;
M_.dynamic_tmp_nbr = [29; 6; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , 'marginal utility of consumption' ;
  2 , 'name' , 'Euler' ;
  3 , 'name' , 'Labor Supply' ;
  4 , 'name' , 'FOC i' ;
  5 , 'name' , 'technology' ;
  6 , 'name' , 'Capital law of motion' ;
  7 , 'name' , 'FOC k' ;
  8 , 'name' , 'FOC h' ;
  9 , 'name' , 'NKPC' ;
  10 , 'name' , 'FOC y' ;
  11 , 'name' , 'FOC mu' ;
  12 , 'name' , 'Resources Constraint' ;
  13 , 'name' , 'Total emissions' ;
  14 , 'name' , 'Fisherian equation' ;
  15 , 'name' , 'Monetary Policy rule' ;
  16 , 'name' , 'Public spending' ;
  17 , 'name' , 'Carbon tax' ;
  18 , 'name' , 'measurement GDP' ;
  19 , 'name' , 'measurement consumption' ;
  20 , 'name' , 'measurement investment' ;
  21 , 'name' , 'measurement inflation' ;
  22 , 'name' , 'measurement interest rate' ;
  23 , 'name' , 'measurement hours worked' ;
  24 , 'name' , 'Output gap' ;
  25 , 'name' , 'Consumption gap' ;
  26 , 'name' , 'Investment gap' ;
  27 , 'name' , 'Investment gap' ;
  28 , 'name' , 'Investment gap' ;
  29 , 'name' , 'shocks' ;
  30 , 'name' , '30' ;
  31 , 'name' , '31' ;
  32 , 'name' , '32' ;
  33 , 'name' , '33' ;
  34 , 'name' , '34' ;
  35 , 'name' , '35' ;
};
M_.mapping.rr.eqidx = [2 7 14 ];
M_.mapping.c.eqidx = [1 12 19 25 ];
M_.mapping.h.eqidx = [3 5 8 23 ];
M_.mapping.w.eqidx = [3 8 ];
M_.mapping.y.eqidx = [5 7 8 9 10 11 12 13 15 16 18 24 ];
M_.mapping.k.eqidx = [5 6 7 ];
M_.mapping.i.eqidx = [4 6 12 20 26 ];
M_.mapping.mc.eqidx = [9 10 ];
M_.mapping.pi.eqidx = [9 12 14 15 21 27 ];
M_.mapping.r.eqidx = [14 15 22 28 ];
M_.mapping.lb.eqidx = [1 2 3 4 9 ];
M_.mapping.q.eqidx = [4 7 ];
M_.mapping.varrho.eqidx = [7 8 10 ];
M_.mapping.tau.eqidx = [10 11 17 ];
M_.mapping.mu.eqidx = [10 11 12 13 ];
M_.mapping.e.eqidx = [13 ];
M_.mapping.g.eqidx = [12 16 ];
M_.mapping.gy_obs.eqidx = [18 ];
M_.mapping.gc_obs.eqidx = [19 ];
M_.mapping.gi_obs.eqidx = [20 ];
M_.mapping.pi_obs.eqidx = [21 ];
M_.mapping.r_obs.eqidx = [22 ];
M_.mapping.h_obs.eqidx = [23 ];
M_.mapping.lny.eqidx = [24 ];
M_.mapping.lnc.eqidx = [25 ];
M_.mapping.lni.eqidx = [26 ];
M_.mapping.lnpi.eqidx = [27 ];
M_.mapping.lnr.eqidx = [28 ];
M_.mapping.e_a.eqidx = [5 29 ];
M_.mapping.e_g.eqidx = [16 30 ];
M_.mapping.e_c.eqidx = [1 31 ];
M_.mapping.e_i.eqidx = [4 6 33 ];
M_.mapping.e_r.eqidx = [15 34 ];
M_.mapping.e_t.eqidx = [17 35 ];
M_.mapping.e_p.eqidx = [9 32 ];
M_.mapping.eta_a.eqidx = [29 ];
M_.mapping.eta_g.eqidx = [30 ];
M_.mapping.eta_c.eqidx = [31 ];
M_.mapping.eta_i.eqidx = [33 ];
M_.mapping.eta_r.eqidx = [34 ];
M_.mapping.eta_t.eqidx = [35 ];
M_.mapping.eta_p.eqidx = [32 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 3;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 29];
M_.block_structure.block(1).variable = [ 29];
M_.block_structure.block(1).is_linear = false;
M_.block_structure.block(1).NNZDerivatives = 2;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(2).Simulation_Type = 3;
M_.block_structure.block(2).endo_nbr = 1;
M_.block_structure.block(2).mfs = 1;
M_.block_structure.block(2).equation = [ 30];
M_.block_structure.block(2).variable = [ 30];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 2;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(3).Simulation_Type = 3;
M_.block_structure.block(3).endo_nbr = 1;
M_.block_structure.block(3).mfs = 1;
M_.block_structure.block(3).equation = [ 31];
M_.block_structure.block(3).variable = [ 31];
M_.block_structure.block(3).is_linear = false;
M_.block_structure.block(3).NNZDerivatives = 2;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(4).Simulation_Type = 3;
M_.block_structure.block(4).endo_nbr = 1;
M_.block_structure.block(4).mfs = 1;
M_.block_structure.block(4).equation = [ 32];
M_.block_structure.block(4).variable = [ 35];
M_.block_structure.block(4).is_linear = false;
M_.block_structure.block(4).NNZDerivatives = 2;
M_.block_structure.block(4).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(5).Simulation_Type = 3;
M_.block_structure.block(5).endo_nbr = 1;
M_.block_structure.block(5).mfs = 1;
M_.block_structure.block(5).equation = [ 33];
M_.block_structure.block(5).variable = [ 32];
M_.block_structure.block(5).is_linear = false;
M_.block_structure.block(5).NNZDerivatives = 2;
M_.block_structure.block(5).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(6).Simulation_Type = 3;
M_.block_structure.block(6).endo_nbr = 1;
M_.block_structure.block(6).mfs = 1;
M_.block_structure.block(6).equation = [ 34];
M_.block_structure.block(6).variable = [ 33];
M_.block_structure.block(6).is_linear = false;
M_.block_structure.block(6).NNZDerivatives = 2;
M_.block_structure.block(6).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(7).Simulation_Type = 3;
M_.block_structure.block(7).endo_nbr = 1;
M_.block_structure.block(7).mfs = 1;
M_.block_structure.block(7).equation = [ 35];
M_.block_structure.block(7).variable = [ 34];
M_.block_structure.block(7).is_linear = false;
M_.block_structure.block(7).NNZDerivatives = 2;
M_.block_structure.block(7).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(8).Simulation_Type = 1;
M_.block_structure.block(8).endo_nbr = 1;
M_.block_structure.block(8).mfs = 1;
M_.block_structure.block(8).equation = [ 17];
M_.block_structure.block(8).variable = [ 14];
M_.block_structure.block(8).is_linear = true;
M_.block_structure.block(8).NNZDerivatives = 1;
M_.block_structure.block(8).bytecode_jacob_cols_to_sparse = [2 ];
M_.block_structure.block(9).Simulation_Type = 8;
M_.block_structure.block(9).endo_nbr = 15;
M_.block_structure.block(9).mfs = 14;
M_.block_structure.block(9).equation = [ 16 9 11 14 5 3 15 6 1 10 4 12 7 8 2];
M_.block_structure.block(9).variable = [ 17 8 15 1 3 4 10 6 2 5 7 9 12 13 11];
M_.block_structure.block(9).is_linear = false;
M_.block_structure.block(9).NNZDerivatives = 60;
M_.block_structure.block(9).bytecode_jacob_cols_to_sparse = [6 7 8 9 10 0 15 16 17 18 19 20 21 22 23 24 25 26 27 28 37 38 39 40 41 42 ];
M_.block_structure.block(10).Simulation_Type = 1;
M_.block_structure.block(10).endo_nbr = 12;
M_.block_structure.block(10).mfs = 12;
M_.block_structure.block(10).equation = [ 27 28 26 25 24 23 22 21 20 19 18 13];
M_.block_structure.block(10).variable = [ 27 28 26 25 24 23 22 21 20 19 18 16];
M_.block_structure.block(10).is_linear = true;
M_.block_structure.block(10).NNZDerivatives = 12;
M_.block_structure.block(10).bytecode_jacob_cols_to_sparse = [13 14 15 16 17 18 19 20 21 22 23 24 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(3).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(3).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(3).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(4).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(4).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(4).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(5).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(5).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(5).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(6).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(6).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(6).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(7).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(7).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(7).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(8).g1_sparse_rowval = int32([]);
M_.block_structure.block(8).g1_sparse_colval = int32([]);
M_.block_structure.block(8).g1_sparse_colptr = int32([]);
M_.block_structure.block(9).g1_sparse_rowval = int32([6 4 7 8 6 7 10 1 9 2 9 11 3 12 14 4 5 13 5 13 3 6 7 12 8 11 1 2 4 6 9 11 13 7 10 11 1 6 11 10 12 9 13 1 5 8 10 14 1 12 10 1 3 10 12 12 1 10 14 ]);
M_.block_structure.block(9).g1_sparse_colval = int32([6 7 7 8 9 10 10 15 15 16 16 16 17 17 17 18 18 18 19 19 20 20 21 21 22 22 23 23 23 23 23 23 23 24 24 24 25 25 25 26 26 27 27 28 28 28 28 28 37 37 38 39 39 40 40 41 42 42 42 ]);
M_.block_structure.block(9).g1_sparse_colptr = int32([1 1 1 1 1 1 2 4 5 6 8 8 8 8 8 10 13 16 19 21 23 25 27 34 37 40 42 44 49 49 49 49 49 49 49 49 49 51 52 54 56 57 60 ]);
M_.block_structure.block(10).g1_sparse_rowval = int32([]);
M_.block_structure.block(10).g1_sparse_colval = int32([]);
M_.block_structure.block(10).g1_sparse_colptr = int32([]);
M_.block_structure.variable_reordered = [ 29 30 31 35 32 33 34 14 17 8 15 1 3 4 10 6 2 5 7 9 12 13 11 27 28 26 25 24 23 22 21 20 19 18 16];
M_.block_structure.equation_reordered = [ 29 30 31 32 33 34 35 17 16 9 11 14 5 3 15 6 1 10 4 12 7 8 2 27 28 26 25 24 23 22 21 20 19 18 13];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 1 2;
 4 7;
 5 6;
 6 6;
 6 7;
 15 5;
 15 10;
 18 5;
 19 2;
 20 7;
 29 29;
 30 30;
 31 31;
 32 35;
 33 32;
 34 33;
 35 34;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 2;
 1 11;
 1 31;
 2 1;
 2 11;
 3 3;
 3 4;
 3 11;
 4 7;
 4 11;
 4 12;
 4 32;
 5 3;
 5 5;
 5 29;
 6 6;
 6 7;
 6 32;
 7 1;
 7 6;
 7 12;
 8 3;
 8 4;
 8 5;
 8 13;
 9 5;
 9 8;
 9 9;
 9 11;
 9 35;
 10 5;
 10 8;
 10 13;
 10 14;
 10 15;
 11 5;
 11 14;
 11 15;
 12 2;
 12 5;
 12 7;
 12 9;
 12 15;
 12 17;
 13 5;
 13 15;
 13 16;
 14 1;
 14 10;
 15 5;
 15 9;
 15 10;
 15 33;
 16 17;
 16 30;
 17 14;
 17 34;
 18 5;
 18 18;
 19 2;
 19 19;
 20 7;
 20 20;
 21 9;
 21 21;
 22 10;
 22 22;
 23 3;
 23 23;
 24 5;
 24 24;
 25 2;
 25 25;
 26 7;
 26 26;
 27 9;
 27 27;
 28 10;
 28 28;
 29 29;
 30 30;
 31 31;
 32 35;
 33 32;
 34 33;
 35 34;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 2 11;
 4 7;
 4 11;
 4 12;
 4 32;
 7 5;
 7 12;
 7 13;
 9 5;
 9 9;
 9 11;
 14 9;
];
M_.block_structure.dyn_tmp_nbr = 21;
M_.state_var = [29 30 31 35 32 33 34 10 6 2 5 7 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(35, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(7, 1);
M_.params = NaN(31, 1);
M_.endo_trends = struct('deflator', cell(35, 1), 'log_deflator', cell(35, 1), 'growth_factor', cell(35, 1), 'log_growth_factor', cell(35, 1));
M_.NNZDerivatives = [122; -1; -1; ];
M_.dynamic_g1_sparse_rowval = int32([1 19 15 18 5 6 4 6 20 15 29 30 31 33 34 35 32 2 7 14 1 12 19 25 3 5 8 23 3 8 5 8 9 10 11 12 13 15 18 24 6 7 4 6 12 20 26 9 10 9 12 15 21 27 14 15 22 28 1 2 3 4 9 4 7 8 10 10 11 17 10 11 12 13 13 12 16 18 19 20 21 22 23 24 25 26 27 28 5 29 16 30 1 31 4 6 33 15 34 17 35 9 32 7 9 4 9 14 2 4 9 4 7 7 4 29 30 31 33 34 35 32 ]);
M_.dynamic_g1_sparse_colval = int32([2 2 5 5 6 6 7 7 7 10 29 30 31 32 33 34 35 36 36 36 37 37 37 37 38 38 38 38 39 39 40 40 40 40 40 40 40 40 40 40 41 41 42 42 42 42 42 43 43 44 44 44 44 44 45 45 45 45 46 46 46 46 46 47 47 48 48 49 49 49 50 50 50 50 51 52 52 53 54 55 56 57 58 59 60 61 62 63 64 64 65 65 66 66 67 67 67 68 68 69 69 70 70 75 75 77 79 79 81 81 81 82 82 83 102 106 107 108 109 110 111 112 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 3 3 3 5 7 10 10 10 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 12 13 14 15 16 17 18 21 25 29 31 41 43 48 50 55 59 64 66 68 71 75 76 78 79 80 81 82 83 84 85 86 87 88 89 91 93 95 98 100 102 104 104 104 104 104 106 106 107 107 109 109 112 114 115 115 115 115 115 115 115 115 115 115 115 115 115 115 115 115 115 115 115 116 116 116 116 117 118 119 120 121 122 123 ]);
M_.lhs = {
'lb'; 
'beta*lb(1)/lb*rr'; 
'lb*w'; 
'e_i*q'; 
'y'; 
'e_i*i*(1-kappa/2*(i/i(-1)-1)^2)'; 
'q(1)*(1-delta)+alpha*varrho(1)*y(1)/k'; 
'w'; 
'1-epsilon*e_p+e_p*epsilon*mc-xi*pi*(pi-(pi))+y(1)*lb(1)*beta*xi/lb/y*pi(1)*(pi(1)-(pi))'; 
'varrho'; 
'(tau*sig*y^(1-varphi)/(theta1*theta2))^(1/(theta2-1))'; 
'y'; 
'e'; 
'rr'; 
'r'; 
'g'; 
'tau'; 
'gy_obs'; 
'gc_obs'; 
'gi_obs'; 
'pi_obs'; 
'r_obs'; 
'h_obs'; 
'lny'; 
'lnc'; 
'lni'; 
'lnpi'; 
'lnr'; 
'log(e_a)'; 
'log(e_g)'; 
'log(e_c)'; 
'log(e_p)'; 
'log(e_i)'; 
'log(e_r)'; 
'log(e_t)'; 
};
M_.static_tmp_nbr = [16; 4; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 3;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 2];
M_.block_structure_stat.block(1).variable = [ 1];
M_.block_structure_stat.block(2).Simulation_Type = 1;
M_.block_structure_stat.block(2).endo_nbr = 3;
M_.block_structure_stat.block(2).mfs = 3;
M_.block_structure_stat.block(2).equation = [ 18 19 20];
M_.block_structure_stat.block(2).variable = [ 18 19 20];
M_.block_structure_stat.block(3).Simulation_Type = 3;
M_.block_structure_stat.block(3).endo_nbr = 1;
M_.block_structure_stat.block(3).mfs = 1;
M_.block_structure_stat.block(3).equation = [ 29];
M_.block_structure_stat.block(3).variable = [ 29];
M_.block_structure_stat.block(4).Simulation_Type = 3;
M_.block_structure_stat.block(4).endo_nbr = 1;
M_.block_structure_stat.block(4).mfs = 1;
M_.block_structure_stat.block(4).equation = [ 30];
M_.block_structure_stat.block(4).variable = [ 30];
M_.block_structure_stat.block(5).Simulation_Type = 3;
M_.block_structure_stat.block(5).endo_nbr = 1;
M_.block_structure_stat.block(5).mfs = 1;
M_.block_structure_stat.block(5).equation = [ 31];
M_.block_structure_stat.block(5).variable = [ 31];
M_.block_structure_stat.block(6).Simulation_Type = 3;
M_.block_structure_stat.block(6).endo_nbr = 1;
M_.block_structure_stat.block(6).mfs = 1;
M_.block_structure_stat.block(6).equation = [ 32];
M_.block_structure_stat.block(6).variable = [ 35];
M_.block_structure_stat.block(7).Simulation_Type = 3;
M_.block_structure_stat.block(7).endo_nbr = 1;
M_.block_structure_stat.block(7).mfs = 1;
M_.block_structure_stat.block(7).equation = [ 33];
M_.block_structure_stat.block(7).variable = [ 32];
M_.block_structure_stat.block(8).Simulation_Type = 3;
M_.block_structure_stat.block(8).endo_nbr = 1;
M_.block_structure_stat.block(8).mfs = 1;
M_.block_structure_stat.block(8).equation = [ 34];
M_.block_structure_stat.block(8).variable = [ 33];
M_.block_structure_stat.block(9).Simulation_Type = 3;
M_.block_structure_stat.block(9).endo_nbr = 1;
M_.block_structure_stat.block(9).mfs = 1;
M_.block_structure_stat.block(9).equation = [ 35];
M_.block_structure_stat.block(9).variable = [ 34];
M_.block_structure_stat.block(10).Simulation_Type = 1;
M_.block_structure_stat.block(10).endo_nbr = 1;
M_.block_structure_stat.block(10).mfs = 1;
M_.block_structure_stat.block(10).equation = [ 17];
M_.block_structure_stat.block(10).variable = [ 14];
M_.block_structure_stat.block(11).Simulation_Type = 6;
M_.block_structure_stat.block(11).endo_nbr = 14;
M_.block_structure_stat.block(11).mfs = 14;
M_.block_structure_stat.block(11).equation = [ 11 14 15 16 12 1 3 4 10 9 8 7 6 5];
M_.block_structure_stat.block(11).variable = [ 5 10 9 17 7 2 11 12 15 8 4 13 6 3];
M_.block_structure_stat.block(12).Simulation_Type = 1;
M_.block_structure_stat.block(12).endo_nbr = 9;
M_.block_structure_stat.block(12).mfs = 9;
M_.block_structure_stat.block(12).equation = [ 28 27 26 25 24 23 22 21 13];
M_.block_structure_stat.block(12).variable = [ 28 27 26 25 24 23 22 21 16];
M_.block_structure_stat.variable_reordered = [ 1 18 19 20 29 30 31 35 32 33 34 14 5 10 9 17 7 2 11 12 15 8 4 13 6 3 28 27 26 25 24 23 22 21 16];
M_.block_structure_stat.equation_reordered = [ 2 18 19 20 29 30 31 32 33 34 35 17 11 14 15 16 12 1 3 4 10 9 8 7 6 5 28 27 26 25 24 23 22 21 13];
M_.block_structure_stat.incidence.sparse_IM = [
 1 2;
 1 11;
 1 31;
 2 1;
 3 3;
 3 4;
 3 11;
 4 12;
 4 32;
 5 3;
 5 5;
 5 6;
 5 29;
 6 6;
 6 7;
 6 32;
 7 1;
 7 5;
 7 6;
 7 12;
 7 13;
 8 3;
 8 4;
 8 5;
 8 13;
 9 8;
 9 9;
 9 35;
 10 5;
 10 8;
 10 13;
 10 14;
 10 15;
 11 5;
 11 14;
 11 15;
 12 2;
 12 5;
 12 7;
 12 15;
 12 17;
 13 5;
 13 15;
 13 16;
 14 1;
 14 9;
 14 10;
 15 5;
 15 9;
 15 10;
 15 33;
 16 5;
 16 17;
 16 30;
 17 14;
 17 34;
 18 18;
 19 19;
 20 20;
 21 21;
 22 22;
 23 3;
 23 23;
 24 5;
 24 24;
 25 2;
 25 25;
 26 7;
 26 26;
 27 9;
 27 27;
 28 10;
 28 28;
 29 29;
 30 30;
 31 31;
 32 35;
 33 32;
 34 33;
 35 34;
];
M_.block_structure_stat.tmp_nbr = 22;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(4).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(4).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(4).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(5).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(5).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(5).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(6).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(6).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(6).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(7).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(7).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(7).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(8).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(8).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(8).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(9).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(9).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(9).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(10).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(10).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(10).g1_sparse_colptr = int32([]);
M_.block_structure_stat.block(11).g1_sparse_rowval = int32([1 3 4 5 9 11 12 14 2 3 2 3 10 4 5 5 13 5 6 6 7 8 12 1 5 9 9 10 7 11 9 11 12 12 13 14 7 11 14 ]);
M_.block_structure_stat.block(11).g1_sparse_colval = int32([1 1 1 1 1 1 1 1 2 2 3 3 3 4 4 5 5 6 6 7 7 8 8 9 9 9 10 10 11 11 12 12 12 13 13 13 14 14 14 ]);
M_.block_structure_stat.block(11).g1_sparse_colptr = int32([1 9 11 14 16 18 20 22 24 27 29 31 34 37 40 ]);
M_.block_structure_stat.block(12).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(12).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(12).g1_sparse_colptr = int32([]);
M_.static_g1_sparse_rowval = int32([2 7 14 1 12 25 3 5 8 23 3 8 5 7 8 10 11 12 13 15 16 24 5 6 7 6 12 26 9 10 9 14 15 27 14 15 28 1 3 4 7 7 8 10 10 11 17 10 11 12 13 13 12 16 18 19 20 21 22 23 24 25 26 27 28 5 29 16 30 1 31 4 6 33 15 34 17 35 9 32 ]);
M_.static_g1_sparse_colval = int32([1 1 1 2 2 2 3 3 3 3 4 4 5 5 5 5 5 5 5 5 5 5 6 6 6 7 7 7 8 8 9 9 9 9 10 10 10 11 11 12 12 13 13 13 14 14 14 15 15 15 15 16 17 17 18 19 20 21 22 23 24 25 26 27 28 29 29 30 30 31 31 32 32 32 33 33 34 34 35 35 ]);
M_.static_g1_sparse_colptr = int32([1 4 7 11 13 23 26 29 31 35 38 40 42 45 48 52 53 55 56 57 58 59 60 61 62 63 64 65 66 68 70 72 75 77 79 81 ]);
close all;
M_.params(1) = 0.996;
beta = M_.params(1);
M_.params(2) = 0.025;
delta = M_.params(2);
M_.params(3) = 0.30;
alpha = M_.params(3);
M_.params(7) = 0.2;
gy = M_.params(7);
M_.params(9) = 0.7;
hh = M_.params(9);
M_.params(4) = 1;
sigmaC = M_.params(4);
M_.params(5) = 1;
sigmaH = M_.params(5);
M_.params(10) = 7;
epsilon = M_.params(10);
M_.params(12) = .8;
rho = M_.params(12);
M_.params(13) = 0.025;
phi_y = M_.params(13);
M_.params(14) = 0;
phi_dy = M_.params(14);
M_.params(15) = 1.5;
phi_pi = M_.params(15);
M_.params(16) = 80;
xi = M_.params(16);
M_.params(11) = 4;
kappa = M_.params(11);
M_.params(29) = 0.2;
varphi = M_.params(29);
M_.params(17) = 1.0086;
piss = M_.params(17);
M_.params(30) = 0.1;
tau0 = M_.params(30);
M_.params(26) = 0.2;
sig = M_.params(26);
M_.params(31) = 25;
y0 = M_.params(31);
M_.params(27) = 0.05;
theta1 = M_.params(27);
M_.params(28) = 2.6;
theta2 = M_.params(28);
M_.params(19) = 0.95;
rho_a = M_.params(19);
M_.params(20) = 0.95;
rho_g = M_.params(20);
M_.params(21) = 0.95;
rho_c = M_.params(21);
M_.params(22) = 0.95;
rho_i = M_.params(22);
M_.params(23) = 0.40;
rho_r = M_.params(23);
M_.params(24) = 0.40;
rho_t = M_.params(24);
M_.params(25) = 0.90;
rho_p = M_.params(25);
options_resid_ = struct();
display_static_residuals(M_, options_, oo_, options_resid_);
if isempty(estim_params_)
    estim_params_.var_exo = zeros(0, 10);
    estim_params_.var_endo = zeros(0, 10);
    estim_params_.corrx = zeros(0, 11);
    estim_params_.corrn = zeros(0, 11);
    estim_params_.param_vals = zeros(0, 10);
end
if ~isempty(find(estim_params_.var_exo(:,1)==2))
    error('The standard deviation for eta_g has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 2, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==20))
    error('Parameter rho_g has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 20, .92, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==7))
    error('The standard deviation for eta_p has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 7, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==25))
    error('Parameter rho_p has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 25, .92, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==5))
    error('The standard deviation for eta_r has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 5, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==23))
    error('Parameter rho_r has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 23, .5, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==3))
    error('The standard deviation for eta_c has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 3, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==21))
    error('Parameter rho_c has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 21, .96, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==4))
    error('The standard deviation for eta_i has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 4, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==22))
    error('Parameter rho_i has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 22, .9, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==4))
    error('Parameter sigmaC has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 4, 2, NaN, NaN, 3, 1.5, .35, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==5))
    error('Parameter sigmaH has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 5, 0.8, NaN, NaN, 2, 2, 0.5, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==9))
    error('Parameter hh has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 9, .34, NaN, NaN, 1, .75, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==11))
    error('Parameter kappa has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 11, 6, NaN, NaN, 2, 4, 1.5, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==16))
    error('Parameter xi has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 16, 106, 0, NaN, 2, 100, 15, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==12))
    error('Parameter rho has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 12, .45, NaN, NaN, 1, .75, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==15))
    error('Parameter phi_pi has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 15, 1.8, NaN, NaN, 2, 1.5, 0.25, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==13))
    error('Parameter phi_y has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 13, 0.05, NaN, NaN, 2, 0.12, 0.05, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==14))
    error('Parameter phi_dy has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 14, 0.02, NaN, NaN, 3, 0.12, 0.05, NaN, NaN, NaN ];
options_.datafile = 'myobs.mat';
options_.first_obs = 1;
options_.forecast = 8;
options_.lik_init = 2;
options_.mh_jscale = 0.5;
options_.mh_nblck = 1;
options_.mh_replic = 5000;
options_.mode_compute = 4;
options_.prefilter = 1;
options_.order = 1;
var_list_ = {'gy_obs';'pi_obs';'r_obs';'gc_obs';'gi_obs'};
oo_recursive_=dynare_estimation(var_list_);
fn = fieldnames(oo_.posterior_mean.parameters);
for ix = 1:size(fn,1)
set_param_value(fn{ix},eval(['oo_.posterior_mean.parameters.' fn{ix} ]))
end
fx = fieldnames(oo_.posterior_mean.shocks_std);
for ix = 1:size(fx,1)
idx = strmatch(fx{ix},M_.exo_names,'exact');
M_.Sigma_e(idx,idx) = eval(['oo_.posterior_mean.shocks_std.' fx{ix}])^2;
end
options_.conditional_variance_decomposition = [1;4;10;100;];
options_.irf = 30;
options_.order = 1;
var_list_ = {'gy_obs';'pi_obs';'r_obs'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
var_list_ = {'lny';'pi_obs';'r_obs'};
oo_ = shock_decomposition(M_,oo_,options_,var_list_,bayestopt_,estim_params_);
load(options_.datafile);
if exist('T') ==1
Tvec = T;
else
Tvec = 1:size(dataset_,1);
end
Tfreq = mean(diff(Tvec));
tprior = 20; 
Tvec2 = Tvec(end) + (0:(options_.forecast))*Tfreq;
for i1 = 1 :size(dataset_.name,1)
idv		= strmatch(dataset_.name{i1},M_.endo_names,'exact');
idd		= strmatch(dataset_.name{i1},dataset_.name,'exact');
if ~isempty(idd) && isfield(oo_.MeanForecast.Mean, dataset_.name{i1})
yobs   = eval(['oo_.SmoothedVariables.' dataset_.name{i1}])+dataset_info.descriptive.mean(idd);
yfc    = eval(['oo_.MeanForecast.Mean.'  dataset_.name{i1}])+dataset_info.descriptive.mean(idd);
yfcVar = sqrt(eval(['oo_.MeanForecast.Var.' dataset_.name{i1}]));
figure;
plot(Tvec(end-tprior+1:end),yobs(end-tprior+1:end))
hold on;
plot(Tvec2,[yobs(end) yfc'] ,'r--','LineWidth',1.5);
plot(Tvec2,[yobs(end) (yfc+1.96*yfcVar)'],'r:','LineWidth',1.5)
plot(Tvec2,[yobs(end) (yfc-1.96*yfcVar)'],'r:','LineWidth',1.5)
grid on;
xlim([Tvec(end-tprior+1) Tvec2(end)])
legend('Sample','Forecasting','Uncertainty')
title(['forecasting of ' M_.endo_names_tex{idv}])
hold off;
else
warning([ dataset_.name{i1} ' is not an observable or you have not computed its forecast'])
end
end
fx = fieldnames(oo_.SmoothedShocks);
for ix=1:size(fx,1)
shock_mat = eval(['oo_.SmoothedShocks.' fx{ix}]);
if ix==1; ee_mat = zeros(length(shock_mat),M_.exo_nbr); end;
ee_mat(:,strmatch(fx{ix},M_.exo_names,'exact')) = shock_mat;
end
[oo_.dr, info, M_.params] = resol(0, M_, options_, oo_.dr, oo_.dr.ys, oo_.exo_steady_state, oo_.exo_det_steady_state);
y_            = simult_(M_,options_,oo_.dr.ys,oo_.dr,ee_mat,options_.order);
Mx  = M_;
oox = oo_;
Mx.params(strcmp('phi_y',M_.param_names)) = .25;
[oox.dr, info, Mx.params] = resol(0, Mx, options_, oox.dr, oox.dr.ys, oox.exo_steady_state, oox.exo_det_steady_state);
ydov            = simult_(Mx,options_,oox.dr.ys,oox.dr,ee_mat,options_.order);
var_names={'lny','lnc','lni','lnpi','lnr','h_obs'};
Ty = [T(1)-Tfreq;T];
draw_tables(var_names,M_,Ty,[],y_,ydov)
legend('Estimated','Dovish')
Thorizon 	= 12; 
fx = fieldnames(oo_.SmoothedShocks);
for ix=1:size(fx,1)
shock_mat = eval(['oo_.SmoothedShocks.' fx{ix}]);
if ix==1; ee_mat2 = zeros(length(shock_mat),M_.exo_nbr); end;
ee_mat2(:,strmatch(fx{ix},M_.exo_names,'exact')) = shock_mat;
end
ee_mat2 	= [ee_mat;zeros(Thorizon,M_.exo_nbr)];
Tvec2 		= Tvec(1):Tfreq:(Tvec(1)+size(ee_mat2,1)*Tfreq);
[oo_.dr, info, M_.params] = resol(0, M_, options_, oo_.dr, oo_.dr.ys, oo_.exo_steady_state, oo_.exo_det_steady_state);
y_            = simult_(M_,options_,oo_.dr.ys,oo_.dr,ee_mat2,options_.order);
ee_matx = ee_mat2;
idx = strmatch('eta_g',M_.exo_names,'exact');
ee_matx(end-Thorizon+1,idx) = 0.05;
y_fiscal           = simult_(M_,options_,oo_.dr.ys,oo_.dr,ee_matx,options_.order);
ee_matx = ee_mat2;
idx = strmatch('eta_t',M_.exo_names,'exact');
ee_matx(end-Thorizon+1,idx) = 0.5;
y_carbon           = simult_(M_,options_,oo_.dr.ys,oo_.dr,ee_matx,options_.order);
ee_matx = ee_mat2;
idx = strmatch('eta_r',M_.exo_names,'exact');
ee_matx(end-Thorizon+1,idx) = -0.05;
y_monetary           = simult_(M_,options_,oo_.dr.ys,oo_.dr,ee_matx,options_.order);
var_names={'lny','lni','lnpi','lnr','g','tau'};
Ty = [T(1)-Tfreq;T];
draw_tables(var_names,M_,Tvec2,[2023 Tvec2(end)],y_,y_fiscal,y_carbon,y_monetary)
legend('Estimated','Fiscal','Carbon','Monetary')


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'credit_NK_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'credit_NK_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'credit_NK_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'credit_NK_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'credit_NK_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'credit_NK_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'credit_NK_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'credit_NK_results.mat'], 'options_mom_', '-append');
end
disp('Note: 1 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
