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
M_.fname = 'estim_credit_NK';
M_.dynare_version = '6.3';
oo_.dynare_version = '6.3';
options_.dynare_version = '6.3';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(10,1);
M_.exo_names_tex = cell(10,1);
M_.exo_names_long = cell(10,1);
M_.exo_names(1) = {'eta_a'};
M_.exo_names_tex(1) = {'eta\_a'};
M_.exo_names_long(1) = {'eta_a'};
M_.exo_names(2) = {'eta_g'};
M_.exo_names_tex(2) = {'eta\_g'};
M_.exo_names_long(2) = {'eta_g'};
M_.exo_names(3) = {'eta_c'};
M_.exo_names_tex(3) = {'eta\_c'};
M_.exo_names_long(3) = {'eta_c'};
M_.exo_names(4) = {'eta_m'};
M_.exo_names_tex(4) = {'eta\_m'};
M_.exo_names_long(4) = {'eta_m'};
M_.exo_names(5) = {'eta_i'};
M_.exo_names_tex(5) = {'eta\_i'};
M_.exo_names_long(5) = {'eta_i'};
M_.exo_names(6) = {'eta_r'};
M_.exo_names_tex(6) = {'eta\_r'};
M_.exo_names_long(6) = {'eta_r'};
M_.exo_names(7) = {'eta_t'};
M_.exo_names_tex(7) = {'eta\_t'};
M_.exo_names_long(7) = {'eta_t'};
M_.exo_names(8) = {'eta_p'};
M_.exo_names_tex(8) = {'eta\_p'};
M_.exo_names_long(8) = {'eta_p'};
M_.exo_names(9) = {'eta_e'};
M_.exo_names_tex(9) = {'eta\_e'};
M_.exo_names_long(9) = {'eta_e'};
M_.exo_names(10) = {'eta_mh'};
M_.exo_names_tex(10) = {'eta\_mh'};
M_.exo_names_long(10) = {'eta_mh'};
M_.endo_names = cell(39,1);
M_.endo_names_tex = cell(39,1);
M_.endo_names_long = cell(39,1);
M_.endo_names(1) = {'rr'};
M_.endo_names_tex(1) = {'rr'};
M_.endo_names_long(1) = {'rr'};
M_.endo_names(2) = {'c'};
M_.endo_names_tex(2) = {'c'};
M_.endo_names_long(2) = {'c'};
M_.endo_names(3) = {'c_E'};
M_.endo_names_tex(3) = {'c\_E'};
M_.endo_names_long(3) = {'c_E'};
M_.endo_names(4) = {'c_H'};
M_.endo_names_tex(4) = {'c\_H'};
M_.endo_names_long(4) = {'c_H'};
M_.endo_names(5) = {'h'};
M_.endo_names_tex(5) = {'h'};
M_.endo_names_long(5) = {'h'};
M_.endo_names(6) = {'w'};
M_.endo_names_tex(6) = {'w'};
M_.endo_names_long(6) = {'w'};
M_.endo_names(7) = {'y'};
M_.endo_names_tex(7) = {'y'};
M_.endo_names_long(7) = {'y'};
M_.endo_names(8) = {'k'};
M_.endo_names_tex(8) = {'k'};
M_.endo_names_long(8) = {'k'};
M_.endo_names(9) = {'i'};
M_.endo_names_tex(9) = {'i'};
M_.endo_names_long(9) = {'i'};
M_.endo_names(10) = {'l'};
M_.endo_names_tex(10) = {'l'};
M_.endo_names_long(10) = {'l'};
M_.endo_names(11) = {'lb_E'};
M_.endo_names_tex(11) = {'lb\_E'};
M_.endo_names_long(11) = {'lb_E'};
M_.endo_names(12) = {'phi_E'};
M_.endo_names_tex(12) = {'phi\_E'};
M_.endo_names_long(12) = {'phi_E'};
M_.endo_names(13) = {'mc'};
M_.endo_names_tex(13) = {'mc'};
M_.endo_names_long(13) = {'mc'};
M_.endo_names(14) = {'pi'};
M_.endo_names_tex(14) = {'pi'};
M_.endo_names_long(14) = {'pi'};
M_.endo_names(15) = {'r'};
M_.endo_names_tex(15) = {'r'};
M_.endo_names_long(15) = {'r'};
M_.endo_names(16) = {'lb_H'};
M_.endo_names_tex(16) = {'lb\_H'};
M_.endo_names_long(16) = {'lb_H'};
M_.endo_names(17) = {'q'};
M_.endo_names_tex(17) = {'q'};
M_.endo_names_long(17) = {'q'};
M_.endo_names(18) = {'varrho'};
M_.endo_names_tex(18) = {'varrho'};
M_.endo_names_long(18) = {'varrho'};
M_.endo_names(19) = {'tau'};
M_.endo_names_tex(19) = {'tau'};
M_.endo_names_long(19) = {'tau'};
M_.endo_names(20) = {'mu'};
M_.endo_names_tex(20) = {'mu'};
M_.endo_names_long(20) = {'mu'};
M_.endo_names(21) = {'e'};
M_.endo_names_tex(21) = {'e'};
M_.endo_names_long(21) = {'e'};
M_.endo_names(22) = {'g'};
M_.endo_names_tex(22) = {'g'};
M_.endo_names_long(22) = {'g'};
M_.endo_names(23) = {'gy_obs'};
M_.endo_names_tex(23) = {'gy\_obs'};
M_.endo_names_long(23) = {'gy_obs'};
M_.endo_names(24) = {'gc_obs'};
M_.endo_names_tex(24) = {'gc\_obs'};
M_.endo_names_long(24) = {'gc_obs'};
M_.endo_names(25) = {'gi_obs'};
M_.endo_names_tex(25) = {'gi\_obs'};
M_.endo_names_long(25) = {'gi_obs'};
M_.endo_names(26) = {'pi_obs'};
M_.endo_names_tex(26) = {'pi\_obs'};
M_.endo_names_long(26) = {'pi_obs'};
M_.endo_names(27) = {'r_obs'};
M_.endo_names_tex(27) = {'r\_obs'};
M_.endo_names_long(27) = {'r_obs'};
M_.endo_names(28) = {'l_obs'};
M_.endo_names_tex(28) = {'l\_obs'};
M_.endo_names_long(28) = {'l_obs'};
M_.endo_names(29) = {'co2_obs'};
M_.endo_names_tex(29) = {'co2\_obs'};
M_.endo_names_long(29) = {'co2_obs'};
M_.endo_names(30) = {'e_a'};
M_.endo_names_tex(30) = {'e\_a'};
M_.endo_names_long(30) = {'e_a'};
M_.endo_names(31) = {'e_g'};
M_.endo_names_tex(31) = {'e\_g'};
M_.endo_names_long(31) = {'e_g'};
M_.endo_names(32) = {'e_c'};
M_.endo_names_tex(32) = {'e\_c'};
M_.endo_names_long(32) = {'e_c'};
M_.endo_names(33) = {'e_m'};
M_.endo_names_tex(33) = {'e\_m'};
M_.endo_names_long(33) = {'e_m'};
M_.endo_names(34) = {'e_i'};
M_.endo_names_tex(34) = {'e\_i'};
M_.endo_names_long(34) = {'e_i'};
M_.endo_names(35) = {'e_r'};
M_.endo_names_tex(35) = {'e\_r'};
M_.endo_names_long(35) = {'e_r'};
M_.endo_names(36) = {'e_t'};
M_.endo_names_tex(36) = {'e\_t'};
M_.endo_names_long(36) = {'e_t'};
M_.endo_names(37) = {'e_p'};
M_.endo_names_tex(37) = {'e\_p'};
M_.endo_names_long(37) = {'e_p'};
M_.endo_names(38) = {'e_e'};
M_.endo_names_tex(38) = {'e\_e'};
M_.endo_names_long(38) = {'e_e'};
M_.endo_names(39) = {'e_mh'};
M_.endo_names_tex(39) = {'e\_mh'};
M_.endo_names_long(39) = {'e_mh'};
M_.endo_partitions = struct();
M_.param_names = cell(35,1);
M_.param_names_tex = cell(35,1);
M_.param_names_long = cell(35,1);
M_.param_names(1) = {'beta_E'};
M_.param_names_tex(1) = {'beta\_E'};
M_.param_names_long(1) = {'beta_E'};
M_.param_names(2) = {'beta_H'};
M_.param_names_tex(2) = {'beta\_H'};
M_.param_names_long(2) = {'beta_H'};
M_.param_names(3) = {'delta'};
M_.param_names_tex(3) = {'delta'};
M_.param_names_long(3) = {'delta'};
M_.param_names(4) = {'alpha'};
M_.param_names_tex(4) = {'alpha'};
M_.param_names_long(4) = {'alpha'};
M_.param_names(5) = {'sigmaC'};
M_.param_names_tex(5) = {'sigmaC'};
M_.param_names_long(5) = {'sigmaC'};
M_.param_names(6) = {'sigmaL'};
M_.param_names_tex(6) = {'sigmaL'};
M_.param_names_long(6) = {'sigmaL'};
M_.param_names(7) = {'chi'};
M_.param_names_tex(7) = {'chi'};
M_.param_names_long(7) = {'chi'};
M_.param_names(8) = {'gy'};
M_.param_names_tex(8) = {'gy'};
M_.param_names_long(8) = {'gy'};
M_.param_names(9) = {'A'};
M_.param_names_tex(9) = {'A'};
M_.param_names_long(9) = {'A'};
M_.param_names(10) = {'mh'};
M_.param_names_tex(10) = {'mh'};
M_.param_names_long(10) = {'mh'};
M_.param_names(11) = {'mk'};
M_.param_names_tex(11) = {'mk'};
M_.param_names_long(11) = {'mk'};
M_.param_names(12) = {'hh'};
M_.param_names_tex(12) = {'hh'};
M_.param_names_long(12) = {'hh'};
M_.param_names(13) = {'epsilon'};
M_.param_names_tex(13) = {'epsilon'};
M_.param_names_long(13) = {'epsilon'};
M_.param_names(14) = {'kappa'};
M_.param_names_tex(14) = {'kappa'};
M_.param_names_long(14) = {'kappa'};
M_.param_names(15) = {'rho'};
M_.param_names_tex(15) = {'rho'};
M_.param_names_long(15) = {'rho'};
M_.param_names(16) = {'phi_y'};
M_.param_names_tex(16) = {'phi\_y'};
M_.param_names_long(16) = {'phi_y'};
M_.param_names(17) = {'phi_pi'};
M_.param_names_tex(17) = {'phi\_pi'};
M_.param_names_long(17) = {'phi_pi'};
M_.param_names(18) = {'psi'};
M_.param_names_tex(18) = {'psi'};
M_.param_names_long(18) = {'psi'};
M_.param_names(19) = {'piss'};
M_.param_names_tex(19) = {'piss'};
M_.param_names_long(19) = {'piss'};
M_.param_names(20) = {'rho_a'};
M_.param_names_tex(20) = {'rho\_a'};
M_.param_names_long(20) = {'rho_a'};
M_.param_names(21) = {'rho_g'};
M_.param_names_tex(21) = {'rho\_g'};
M_.param_names_long(21) = {'rho_g'};
M_.param_names(22) = {'rho_c'};
M_.param_names_tex(22) = {'rho\_c'};
M_.param_names_long(22) = {'rho_c'};
M_.param_names(23) = {'rho_m'};
M_.param_names_tex(23) = {'rho\_m'};
M_.param_names_long(23) = {'rho_m'};
M_.param_names(24) = {'rho_i'};
M_.param_names_tex(24) = {'rho\_i'};
M_.param_names_long(24) = {'rho_i'};
M_.param_names(25) = {'rho_r'};
M_.param_names_tex(25) = {'rho\_r'};
M_.param_names_long(25) = {'rho_r'};
M_.param_names(26) = {'rho_t'};
M_.param_names_tex(26) = {'rho\_t'};
M_.param_names_long(26) = {'rho_t'};
M_.param_names(27) = {'rho_p'};
M_.param_names_tex(27) = {'rho\_p'};
M_.param_names_long(27) = {'rho_p'};
M_.param_names(28) = {'rho_e'};
M_.param_names_tex(28) = {'rho\_e'};
M_.param_names_long(28) = {'rho_e'};
M_.param_names(29) = {'rho_mh'};
M_.param_names_tex(29) = {'rho\_mh'};
M_.param_names_long(29) = {'rho_mh'};
M_.param_names(30) = {'sig'};
M_.param_names_tex(30) = {'sig'};
M_.param_names_long(30) = {'sig'};
M_.param_names(31) = {'theta1'};
M_.param_names_tex(31) = {'theta1'};
M_.param_names_long(31) = {'theta1'};
M_.param_names(32) = {'theta2'};
M_.param_names_tex(32) = {'theta2'};
M_.param_names_long(32) = {'theta2'};
M_.param_names(33) = {'varphi'};
M_.param_names_tex(33) = {'varphi'};
M_.param_names_long(33) = {'varphi'};
M_.param_names(34) = {'tau0'};
M_.param_names_tex(34) = {'tau0'};
M_.param_names_long(34) = {'tau0'};
M_.param_names(35) = {'y0'};
M_.param_names_tex(35) = {'y0'};
M_.param_names_long(35) = {'y0'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 10;
M_.endo_nbr = 39;
M_.param_nbr = 35;
M_.orig_endo_nbr = 39;
M_.aux_vars = [];
options_.varobs = cell(7, 1);
options_.varobs(1)  = {'gy_obs'};
options_.varobs(2)  = {'pi_obs'};
options_.varobs(3)  = {'r_obs'};
options_.varobs(4)  = {'gc_obs'};
options_.varobs(5)  = {'gi_obs'};
options_.varobs(6)  = {'l_obs'};
options_.varobs(7)  = {'co2_obs'};
options_.varobs_id = [ 23 26 27 24 25 28 29  ];
M_.Sigma_e = zeros(10, 10);
M_.Correlation_matrix = eye(10, 10);
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
M_.eq_nbr = 39;
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
 0 20 0;
 1 21 0;
 2 22 0;
 3 23 0;
 0 24 0;
 0 25 0;
 4 26 59;
 5 27 0;
 6 28 60;
 7 29 0;
 0 30 61;
 0 31 0;
 0 32 0;
 0 33 62;
 8 34 0;
 0 35 63;
 0 36 64;
 0 37 65;
 0 38 0;
 0 39 0;
 9 40 0;
 0 41 0;
 0 42 0;
 0 43 0;
 0 44 0;
 0 45 0;
 0 46 0;
 0 47 0;
 0 48 0;
 10 49 0;
 11 50 0;
 12 51 0;
 13 52 0;
 14 53 66;
 15 54 0;
 16 55 0;
 17 56 0;
 18 57 0;
 19 58 0;]';
M_.nstatic = 15;
M_.nfwrd   = 5;
M_.npred   = 16;
M_.nboth   = 3;
M_.nsfwrd   = 8;
M_.nspred   = 19;
M_.ndynamic   = 24;
M_.dynamic_tmp_nbr = [25; 6; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , 'marginal utility of consumption' ;
  2 , 'name' , 'Euler' ;
  3 , 'name' , 'Labor Supply' ;
  4 , 'name' , 'FOC i' ;
  5 , 'name' , 'technology' ;
  6 , 'name' , 'Borrowing constraint' ;
  7 , 'name' , 'Capital law of motion' ;
  8 , 'name' , 'FOC c' ;
  9 , 'name' , 'FOC l' ;
  10 , 'name' , 'FOC k' ;
  11 , 'name' , 'FOC h' ;
  12 , 'name' , 'NKPC' ;
  13 , 'name' , 'FOC y' ;
  14 , 'name' , 'FOC mu' ;
  15 , 'name' , 'balance sheet' ;
  16 , 'name' , 'Resources Constraint' ;
  17 , 'name' , 'Total consumption' ;
  18 , 'name' , 'Total emissions' ;
  19 , 'name' , 'Fisherian equation' ;
  20 , 'name' , 'Monetary Policy rule' ;
  21 , 'name' , 'Public spending' ;
  22 , 'name' , 'Carbon tax' ;
  23 , 'name' , 'measurement GDP' ;
  24 , 'name' , 'measurement consumption' ;
  25 , 'name' , 'measurement investment' ;
  26 , 'name' , 'measurement inflation' ;
  27 , 'name' , 'measurement interest rate' ;
  28 , 'name' , 'measurement corporate loans' ;
  29 , 'name' , 'measurement corporate loans' ;
  30 , 'name' , 'shocks' ;
  31 , 'name' , '31' ;
  32 , 'name' , '32' ;
  33 , 'name' , '33' ;
  34 , 'name' , '34' ;
  35 , 'name' , '35' ;
  36 , 'name' , '36' ;
  37 , 'name' , '37' ;
  38 , 'name' , '38' ;
  39 , 'name' , '39' ;
};
M_.mapping.rr.eqidx = [2 6 9 10 19 ];
M_.mapping.c.eqidx = [16 17 24 ];
M_.mapping.c_E.eqidx = [8 15 17 ];
M_.mapping.c_H.eqidx = [1 17 ];
M_.mapping.h.eqidx = [3 5 6 11 15 ];
M_.mapping.w.eqidx = [3 6 11 15 ];
M_.mapping.y.eqidx = [5 10 11 12 13 14 15 16 18 20 21 23 ];
M_.mapping.k.eqidx = [5 6 7 10 ];
M_.mapping.i.eqidx = [4 7 15 16 25 ];
M_.mapping.l.eqidx = [6 15 28 ];
M_.mapping.lb_E.eqidx = [4 8 9 12 ];
M_.mapping.phi_E.eqidx = [9 10 11 ];
M_.mapping.mc.eqidx = [12 13 15 ];
M_.mapping.pi.eqidx = [12 15 16 19 20 26 ];
M_.mapping.r.eqidx = [15 19 20 27 ];
M_.mapping.lb_H.eqidx = [1 2 3 ];
M_.mapping.q.eqidx = [4 6 10 ];
M_.mapping.varrho.eqidx = [10 11 13 ];
M_.mapping.tau.eqidx = [13 14 15 22 ];
M_.mapping.mu.eqidx = [13 14 15 16 18 ];
M_.mapping.e.eqidx = [15 18 29 ];
M_.mapping.g.eqidx = [16 21 ];
M_.mapping.gy_obs.eqidx = [23 ];
M_.mapping.gc_obs.eqidx = [24 ];
M_.mapping.gi_obs.eqidx = [25 ];
M_.mapping.pi_obs.eqidx = [26 ];
M_.mapping.r_obs.eqidx = [27 ];
M_.mapping.l_obs.eqidx = [28 ];
M_.mapping.co2_obs.eqidx = [29 ];
M_.mapping.e_a.eqidx = [5 30 ];
M_.mapping.e_g.eqidx = [21 31 ];
M_.mapping.e_c.eqidx = [1 8 32 ];
M_.mapping.e_m.eqidx = [6 10 35 ];
M_.mapping.e_i.eqidx = [4 7 34 ];
M_.mapping.e_r.eqidx = [20 36 ];
M_.mapping.e_t.eqidx = [22 37 ];
M_.mapping.e_p.eqidx = [33 ];
M_.mapping.e_e.eqidx = [18 38 ];
M_.mapping.e_mh.eqidx = [6 11 39 ];
M_.mapping.eta_a.eqidx = [30 ];
M_.mapping.eta_g.eqidx = [31 ];
M_.mapping.eta_c.eqidx = [32 ];
M_.mapping.eta_m.eqidx = [35 ];
M_.mapping.eta_i.eqidx = [34 ];
M_.mapping.eta_r.eqidx = [36 ];
M_.mapping.eta_t.eqidx = [37 ];
M_.mapping.eta_p.eqidx = [33 ];
M_.mapping.eta_e.eqidx = [38 ];
M_.mapping.eta_mh.eqidx = [39 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 3;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 30];
M_.block_structure.block(1).variable = [ 30];
M_.block_structure.block(1).is_linear = false;
M_.block_structure.block(1).NNZDerivatives = 2;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(2).Simulation_Type = 3;
M_.block_structure.block(2).endo_nbr = 1;
M_.block_structure.block(2).mfs = 1;
M_.block_structure.block(2).equation = [ 31];
M_.block_structure.block(2).variable = [ 31];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 2;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(3).Simulation_Type = 3;
M_.block_structure.block(3).endo_nbr = 1;
M_.block_structure.block(3).mfs = 1;
M_.block_structure.block(3).equation = [ 32];
M_.block_structure.block(3).variable = [ 32];
M_.block_structure.block(3).is_linear = false;
M_.block_structure.block(3).NNZDerivatives = 2;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(4).Simulation_Type = 3;
M_.block_structure.block(4).endo_nbr = 1;
M_.block_structure.block(4).mfs = 1;
M_.block_structure.block(4).equation = [ 33];
M_.block_structure.block(4).variable = [ 37];
M_.block_structure.block(4).is_linear = false;
M_.block_structure.block(4).NNZDerivatives = 2;
M_.block_structure.block(4).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(5).Simulation_Type = 3;
M_.block_structure.block(5).endo_nbr = 1;
M_.block_structure.block(5).mfs = 1;
M_.block_structure.block(5).equation = [ 34];
M_.block_structure.block(5).variable = [ 34];
M_.block_structure.block(5).is_linear = false;
M_.block_structure.block(5).NNZDerivatives = 2;
M_.block_structure.block(5).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(6).Simulation_Type = 3;
M_.block_structure.block(6).endo_nbr = 1;
M_.block_structure.block(6).mfs = 1;
M_.block_structure.block(6).equation = [ 35];
M_.block_structure.block(6).variable = [ 33];
M_.block_structure.block(6).is_linear = false;
M_.block_structure.block(6).NNZDerivatives = 2;
M_.block_structure.block(6).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(7).Simulation_Type = 3;
M_.block_structure.block(7).endo_nbr = 1;
M_.block_structure.block(7).mfs = 1;
M_.block_structure.block(7).equation = [ 36];
M_.block_structure.block(7).variable = [ 35];
M_.block_structure.block(7).is_linear = false;
M_.block_structure.block(7).NNZDerivatives = 2;
M_.block_structure.block(7).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(8).Simulation_Type = 3;
M_.block_structure.block(8).endo_nbr = 1;
M_.block_structure.block(8).mfs = 1;
M_.block_structure.block(8).equation = [ 37];
M_.block_structure.block(8).variable = [ 36];
M_.block_structure.block(8).is_linear = false;
M_.block_structure.block(8).NNZDerivatives = 2;
M_.block_structure.block(8).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(9).Simulation_Type = 3;
M_.block_structure.block(9).endo_nbr = 1;
M_.block_structure.block(9).mfs = 1;
M_.block_structure.block(9).equation = [ 38];
M_.block_structure.block(9).variable = [ 38];
M_.block_structure.block(9).is_linear = false;
M_.block_structure.block(9).NNZDerivatives = 2;
M_.block_structure.block(9).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(10).Simulation_Type = 3;
M_.block_structure.block(10).endo_nbr = 1;
M_.block_structure.block(10).mfs = 1;
M_.block_structure.block(10).equation = [ 39];
M_.block_structure.block(10).variable = [ 39];
M_.block_structure.block(10).is_linear = false;
M_.block_structure.block(10).NNZDerivatives = 2;
M_.block_structure.block(10).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(11).Simulation_Type = 1;
M_.block_structure.block(11).endo_nbr = 1;
M_.block_structure.block(11).mfs = 1;
M_.block_structure.block(11).equation = [ 22];
M_.block_structure.block(11).variable = [ 19];
M_.block_structure.block(11).is_linear = true;
M_.block_structure.block(11).NNZDerivatives = 1;
M_.block_structure.block(11).bytecode_jacob_cols_to_sparse = [2 ];
M_.block_structure.block(12).Simulation_Type = 8;
M_.block_structure.block(12).endo_nbr = 21;
M_.block_structure.block(12).mfs = 19;
M_.block_structure.block(12).equation = [ 17 21 13 15 18 19 9 5 3 20 8 7 6 1 16 12 14 11 10 4 2];
M_.block_structure.block(12).variable = [ 2 22 13 21 20 1 12 5 6 15 3 8 10 4 9 14 7 18 17 11 16];
M_.block_structure.block(12).is_linear = false;
M_.block_structure.block(12).NNZDerivatives = 90;
M_.block_structure.block(12).bytecode_jacob_cols_to_sparse = [8 9 10 11 12 13 0 0 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 51 52 53 54 55 56 57 ];
M_.block_structure.block(13).Simulation_Type = 1;
M_.block_structure.block(13).endo_nbr = 7;
M_.block_structure.block(13).mfs = 7;
M_.block_structure.block(13).equation = [ 29 28 27 26 25 24 23];
M_.block_structure.block(13).variable = [ 29 28 27 26 25 24 23];
M_.block_structure.block(13).is_linear = true;
M_.block_structure.block(13).NNZDerivatives = 7;
M_.block_structure.block(13).bytecode_jacob_cols_to_sparse = [8 9 10 11 12 13 14 ];
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
M_.block_structure.block(8).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(8).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(8).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(9).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(9).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(9).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(10).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(10).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(10).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(11).g1_sparse_rowval = int32([]);
M_.block_structure.block(11).g1_sparse_colval = int32([]);
M_.block_structure.block(11).g1_sparse_colptr = int32([]);
M_.block_structure.block(12).g1_sparse_rowval = int32([2 8 9 6 10 2 12 10 18 1 14 2 3 1 2 3 13 15 4 5 11 17 19 5 16 17 2 6 7 11 16 2 7 11 16 4 8 2 9 13 10 11 17 2 11 12 13 2 10 13 18 2 8 13 14 1 2 3 6 8 13 14 15 16 1 16 17 18 5 9 14 18 7 12 19 18 4 14 14 17 17 11 17 18 5 14 18 19 ]);
M_.block_structure.block(12).g1_sparse_colval = int32([8 8 9 10 10 11 12 13 13 20 20 21 21 22 22 22 22 22 23 23 23 23 23 24 24 24 25 25 25 25 25 26 26 26 26 27 27 28 28 28 29 29 29 30 30 31 31 32 32 32 32 33 33 33 33 34 34 34 34 34 34 34 34 34 35 35 36 36 37 37 37 37 38 38 38 51 52 52 53 53 54 55 55 55 56 56 56 57 ]);
M_.block_structure.block(12).g1_sparse_colptr = int32([1 1 1 1 1 1 1 1 3 4 6 7 8 10 10 10 10 10 10 10 12 14 19 24 27 32 36 38 41 44 46 48 52 56 65 67 69 73 76 76 76 76 76 76 76 76 76 76 76 76 76 77 79 81 82 85 88 89 ]);
M_.block_structure.block(13).g1_sparse_rowval = int32([]);
M_.block_structure.block(13).g1_sparse_colval = int32([]);
M_.block_structure.block(13).g1_sparse_colptr = int32([]);
M_.block_structure.variable_reordered = [ 30 31 32 37 34 33 35 36 38 39 19 2 22 13 21 20 1 12 5 6 15 3 8 10 4 9 14 7 18 17 11 16 29 28 27 26 25 24 23];
M_.block_structure.equation_reordered = [ 30 31 32 33 34 35 36 37 38 39 22 17 21 13 15 18 19 9 5 3 20 8 7 6 1 16 12 14 11 10 4 2 29 28 27 26 25 24 23];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 1 4;
 4 9;
 5 8;
 7 8;
 7 9;
 8 3;
 15 10;
 15 15;
 20 15;
 23 7;
 24 2;
 25 9;
 28 10;
 29 21;
 30 30;
 31 31;
 32 32;
 33 37;
 34 34;
 35 33;
 36 35;
 37 36;
 38 38;
 39 39;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 4;
 1 16;
 1 32;
 2 1;
 2 16;
 3 5;
 3 6;
 3 16;
 4 9;
 4 11;
 4 17;
 4 34;
 5 5;
 5 7;
 5 30;
 6 1;
 6 5;
 6 6;
 6 8;
 6 10;
 6 33;
 6 39;
 7 8;
 7 9;
 7 34;
 8 3;
 8 11;
 8 32;
 9 1;
 9 11;
 9 12;
 10 1;
 10 8;
 10 12;
 10 17;
 10 33;
 11 5;
 11 6;
 11 7;
 11 12;
 11 18;
 11 39;
 12 7;
 12 11;
 12 13;
 12 14;
 13 7;
 13 13;
 13 18;
 13 19;
 13 20;
 14 7;
 14 19;
 14 20;
 15 3;
 15 5;
 15 6;
 15 7;
 15 9;
 15 10;
 15 14;
 15 19;
 15 20;
 15 21;
 16 2;
 16 7;
 16 9;
 16 14;
 16 20;
 16 22;
 17 2;
 17 3;
 17 4;
 18 7;
 18 20;
 18 21;
 18 38;
 19 1;
 19 15;
 20 7;
 20 14;
 20 15;
 20 35;
 21 22;
 21 31;
 22 19;
 22 36;
 23 7;
 23 23;
 24 2;
 24 24;
 25 9;
 25 25;
 26 14;
 26 26;
 27 15;
 27 27;
 28 10;
 28 28;
 29 21;
 29 29;
 30 30;
 31 31;
 32 32;
 33 37;
 34 34;
 35 33;
 36 35;
 37 36;
 38 38;
 39 39;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 2 16;
 4 9;
 4 11;
 4 17;
 4 34;
 6 17;
 9 11;
 10 7;
 10 17;
 10 18;
 12 7;
 12 11;
 12 14;
 19 14;
];
M_.block_structure.dyn_tmp_nbr = 19;
M_.state_var = [30 31 32 37 34 33 35 36 38 39 2 21 15 3 8 10 4 9 7 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(39, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(10, 1);
M_.params = NaN(35, 1);
M_.endo_trends = struct('deflator', cell(39, 1), 'log_deflator', cell(39, 1), 'growth_factor', cell(39, 1), 'log_growth_factor', cell(39, 1));
M_.NNZDerivatives = [159; -1; -1; ];
M_.dynamic_g1_sparse_rowval = int32([24 8 1 23 5 7 4 7 25 15 28 15 20 29 30 31 32 35 34 36 37 33 38 39 2 6 9 10 19 16 17 24 8 15 17 1 17 3 5 6 11 15 3 6 11 15 5 11 12 13 14 15 16 18 20 23 6 7 10 4 7 15 16 25 6 15 28 4 8 9 12 9 10 11 12 13 12 15 16 20 26 19 20 27 1 2 3 4 10 11 13 13 14 15 22 13 14 15 16 18 15 18 29 16 21 23 24 25 26 27 28 29 5 30 21 31 1 8 32 6 10 35 4 7 34 20 36 22 37 33 18 38 6 11 39 10 12 4 4 9 12 12 19 2 4 6 10 10 4 30 31 32 35 34 36 37 33 38 39 ]);
M_.dynamic_g1_sparse_colval = int32([2 3 4 7 8 8 9 9 9 10 10 15 15 21 30 31 32 33 34 35 36 37 38 39 40 40 40 40 40 41 41 41 42 42 42 43 43 44 44 44 44 44 45 45 45 45 46 46 46 46 46 46 46 46 46 46 47 47 47 48 48 48 48 48 49 49 49 50 50 50 50 51 51 51 52 52 53 53 53 53 53 54 54 54 55 55 55 56 56 57 57 58 58 58 58 59 59 59 59 59 60 60 60 61 61 62 63 64 65 66 67 68 69 69 70 70 71 71 71 72 72 72 73 73 73 74 74 75 75 76 77 77 78 78 78 85 85 87 89 89 89 92 92 94 95 95 95 96 112 118 119 120 121 122 123 124 125 126 127 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 2 3 4 4 4 5 7 10 12 12 12 12 12 14 14 14 14 14 14 15 15 15 15 15 15 15 15 15 16 17 18 19 20 21 22 23 24 25 30 33 36 38 43 47 57 60 65 68 72 75 77 82 85 88 90 92 96 101 104 106 107 108 109 110 111 112 113 115 117 120 123 126 128 130 131 133 136 136 136 136 136 136 136 138 138 139 139 142 142 142 144 144 145 148 149 149 149 149 149 149 149 149 149 149 149 149 149 149 149 149 150 150 150 150 150 150 151 152 153 154 155 156 157 158 159 160 ]);
M_.lhs = {
'lb_H'; 
'beta_H*lb_H(1)/lb_H*rr'; 
'lb_H*w'; 
'e_i*q'; 
'y'; 
'l'; 
'e_i*i*(1-kappa/2*(i/i(-1)-1)^2)'; 
'lb_E'; 
'1-phi_E'; 
'(1-phi_E)*(q(1)*(1-delta)+alpha*varrho(1)*y(1)/k)+mk*e_m*q(1)*phi_E'; 
'w'; 
'1-epsilon+epsilon*mc-psi*pi*(pi-(pi))+y(1)*lb_E(1)*beta_E*psi/lb_E/y*pi(1)*(pi(1)-(pi))'; 
'varrho'; 
'(tau*sig*y^(1-varphi)/(theta1*theta2))^(1/(theta2-1))'; 
'i+c_E+w*h+r(-1)/pi*l(-1)+y*theta1*mu^theta2+tau*e'; 
'y'; 
'c'; 
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
'l_obs'; 
'co2_obs'; 
'log(e_a)'; 
'log(e_g)'; 
'log(e_c)'; 
'log(e_p)'; 
'log(e_i)'; 
'log(e_m)'; 
'log(e_r)'; 
'log(e_t)'; 
'log(e_e)'; 
'log(e_mh)'; 
};
M_.static_tmp_nbr = [15; 4; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 3;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 2];
M_.block_structure_stat.block(1).variable = [ 1];
M_.block_structure_stat.block(2).Simulation_Type = 3;
M_.block_structure_stat.block(2).endo_nbr = 1;
M_.block_structure_stat.block(2).mfs = 1;
M_.block_structure_stat.block(2).equation = [ 9];
M_.block_structure_stat.block(2).variable = [ 12];
M_.block_structure_stat.block(3).Simulation_Type = 1;
M_.block_structure_stat.block(3).endo_nbr = 5;
M_.block_structure_stat.block(3).mfs = 5;
M_.block_structure_stat.block(3).equation = [ 23 24 25 28 29];
M_.block_structure_stat.block(3).variable = [ 23 24 25 28 29];
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
M_.block_structure_stat.block(6).variable = [ 32];
M_.block_structure_stat.block(7).Simulation_Type = 3;
M_.block_structure_stat.block(7).endo_nbr = 1;
M_.block_structure_stat.block(7).mfs = 1;
M_.block_structure_stat.block(7).equation = [ 33];
M_.block_structure_stat.block(7).variable = [ 37];
M_.block_structure_stat.block(8).Simulation_Type = 3;
M_.block_structure_stat.block(8).endo_nbr = 1;
M_.block_structure_stat.block(8).mfs = 1;
M_.block_structure_stat.block(8).equation = [ 34];
M_.block_structure_stat.block(8).variable = [ 34];
M_.block_structure_stat.block(9).Simulation_Type = 3;
M_.block_structure_stat.block(9).endo_nbr = 1;
M_.block_structure_stat.block(9).mfs = 1;
M_.block_structure_stat.block(9).equation = [ 35];
M_.block_structure_stat.block(9).variable = [ 33];
M_.block_structure_stat.block(10).Simulation_Type = 3;
M_.block_structure_stat.block(10).endo_nbr = 1;
M_.block_structure_stat.block(10).mfs = 1;
M_.block_structure_stat.block(10).equation = [ 36];
M_.block_structure_stat.block(10).variable = [ 35];
M_.block_structure_stat.block(11).Simulation_Type = 3;
M_.block_structure_stat.block(11).endo_nbr = 1;
M_.block_structure_stat.block(11).mfs = 1;
M_.block_structure_stat.block(11).equation = [ 37];
M_.block_structure_stat.block(11).variable = [ 36];
M_.block_structure_stat.block(12).Simulation_Type = 3;
M_.block_structure_stat.block(12).endo_nbr = 1;
M_.block_structure_stat.block(12).mfs = 1;
M_.block_structure_stat.block(12).equation = [ 38];
M_.block_structure_stat.block(12).variable = [ 38];
M_.block_structure_stat.block(13).Simulation_Type = 3;
M_.block_structure_stat.block(13).endo_nbr = 1;
M_.block_structure_stat.block(13).mfs = 1;
M_.block_structure_stat.block(13).equation = [ 39];
M_.block_structure_stat.block(13).variable = [ 39];
M_.block_structure_stat.block(14).Simulation_Type = 1;
M_.block_structure_stat.block(14).endo_nbr = 1;
M_.block_structure_stat.block(14).mfs = 1;
M_.block_structure_stat.block(14).equation = [ 22];
M_.block_structure_stat.block(14).variable = [ 19];
M_.block_structure_stat.block(15).Simulation_Type = 6;
M_.block_structure_stat.block(15).endo_nbr = 18;
M_.block_structure_stat.block(15).mfs = 18;
M_.block_structure_stat.block(15).equation = [ 19 20 21 18 3 4 5 17 16 6 7 15 1 10 11 12 13 14];
M_.block_structure_stat.block(15).variable = [ 15 14 22 21 16 17 5 2 9 10 8 3 4 18 6 13 20 7];
M_.block_structure_stat.block(16).Simulation_Type = 1;
M_.block_structure_stat.block(16).endo_nbr = 3;
M_.block_structure_stat.block(16).mfs = 3;
M_.block_structure_stat.block(16).equation = [ 8 27 26];
M_.block_structure_stat.block(16).variable = [ 11 27 26];
M_.block_structure_stat.variable_reordered = [ 1 12 23 24 25 28 29 30 31 32 37 34 33 35 36 38 39 19 15 14 22 21 16 17 5 2 9 10 8 3 4 18 6 13 20 7 11 27 26];
M_.block_structure_stat.equation_reordered = [ 2 9 23 24 25 28 29 30 31 32 33 34 35 36 37 38 39 22 19 20 21 18 3 4 5 17 16 6 7 15 1 10 11 12 13 14 8 27 26];
M_.block_structure_stat.incidence.sparse_IM = [
 1 4;
 1 16;
 1 32;
 2 1;
 3 5;
 3 6;
 3 16;
 4 17;
 4 34;
 5 5;
 5 7;
 5 8;
 5 30;
 6 1;
 6 5;
 6 6;
 6 8;
 6 10;
 6 17;
 6 33;
 6 39;
 7 8;
 7 9;
 7 34;
 8 3;
 8 11;
 8 32;
 9 1;
 9 12;
 10 1;
 10 7;
 10 8;
 10 12;
 10 17;
 10 18;
 10 33;
 11 5;
 11 6;
 11 7;
 11 12;
 11 18;
 11 39;
 12 13;
 12 14;
 13 7;
 13 13;
 13 18;
 13 19;
 13 20;
 14 7;
 14 19;
 14 20;
 15 3;
 15 5;
 15 6;
 15 7;
 15 9;
 15 10;
 15 14;
 15 15;
 15 19;
 15 20;
 15 21;
 16 2;
 16 7;
 16 9;
 16 20;
 16 22;
 17 2;
 17 3;
 17 4;
 18 7;
 18 20;
 18 21;
 18 38;
 19 1;
 19 14;
 19 15;
 20 7;
 20 14;
 20 15;
 20 35;
 21 7;
 21 22;
 21 31;
 22 19;
 22 36;
 23 23;
 24 24;
 25 25;
 26 26;
 27 27;
 28 28;
 29 29;
 30 30;
 31 31;
 32 32;
 33 37;
 34 34;
 35 33;
 36 35;
 37 36;
 38 38;
 39 39;
];
M_.block_structure_stat.tmp_nbr = 26;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([]);
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
M_.block_structure_stat.block(10).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(10).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(10).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(11).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(11).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(11).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(12).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(12).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(12).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(13).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(13).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(13).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(14).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(14).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(14).g1_sparse_colptr = int32([]);
M_.block_structure_stat.block(15).g1_sparse_rowval = int32([1 2 12 1 2 12 16 3 9 4 12 5 13 6 10 14 5 7 10 12 15 8 9 9 11 12 10 12 7 10 11 14 8 12 8 13 14 15 17 5 10 12 15 16 17 4 9 12 17 18 2 3 4 7 9 12 14 15 17 18 ]);
M_.block_structure_stat.block(15).g1_sparse_colval = int32([1 1 1 2 2 2 2 3 3 4 4 5 5 6 6 6 7 7 7 7 7 8 8 9 9 9 10 10 11 11 11 11 12 12 13 13 14 14 14 15 15 15 15 16 16 17 17 17 17 17 18 18 18 18 18 18 18 18 18 18 ]);
M_.block_structure_stat.block(15).g1_sparse_colptr = int32([1 4 8 10 12 14 17 22 24 27 29 33 35 37 40 44 46 51 61 ]);
M_.block_structure_stat.block(16).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(16).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(16).g1_sparse_colptr = int32([]);
M_.static_g1_sparse_rowval = int32([2 6 9 10 19 16 17 8 15 17 1 17 3 5 6 11 15 3 6 11 15 5 10 11 13 14 15 16 18 20 21 5 6 7 10 7 15 16 6 15 8 9 10 11 12 13 12 15 19 20 15 19 20 1 3 4 6 10 10 11 13 13 14 15 22 13 14 15 16 18 15 18 16 21 23 24 25 26 27 28 29 5 30 21 31 1 8 32 6 10 35 4 7 34 20 36 22 37 33 18 38 6 11 39 ]);
M_.static_g1_sparse_colval = int32([1 1 1 1 1 2 2 3 3 3 4 4 5 5 5 5 5 6 6 6 6 7 7 7 7 7 7 7 7 7 7 8 8 8 8 9 9 9 10 10 11 12 12 12 13 13 14 14 14 14 15 15 15 16 16 17 17 17 18 18 18 19 19 19 19 20 20 20 20 20 21 21 22 22 23 24 25 26 27 28 29 30 30 31 31 32 32 32 33 33 33 34 34 34 35 35 36 36 37 38 38 39 39 39 ]);
M_.static_g1_sparse_colptr = int32([1 6 8 11 13 18 22 32 36 39 41 42 45 47 51 54 56 59 62 66 71 73 75 76 77 78 79 80 81 82 84 86 89 92 95 97 99 100 102 105 ]);
close all;
M_.params(2) = 0.998;
beta_H = M_.params(2);
M_.params(1) = 0.980;
beta_E = M_.params(1);
M_.params(3) = 0.025;
delta = M_.params(3);
M_.params(4) = 0.30;
alpha = M_.params(4);
M_.params(8) = 0.215;
gy = M_.params(8);
M_.params(12) = 0.62;
hh = M_.params(12);
M_.params(5) = 1;
sigmaC = M_.params(5);
M_.params(6) = 1;
sigmaL = M_.params(6);
M_.params(11) = 0.8;
mk = M_.params(11);
M_.params(10) = 0.1;
mh = M_.params(10);
M_.params(13) = 10;
epsilon = M_.params(13);
M_.params(15) = 0.93;
rho = M_.params(15);
M_.params(16) = 0.03;
phi_y = M_.params(16);
M_.params(17) = 2.74;
phi_pi = M_.params(17);
M_.params(18) = 80;
psi = M_.params(18);
M_.params(14) = 5.17;
kappa = M_.params(14);
M_.params(33) = 0.2;
varphi = M_.params(33);
M_.params(19) = 1.005;
piss = M_.params(19);
M_.params(34) = 0.1;
tau0 = M_.params(34);
M_.params(30) = 0.2;
sig = M_.params(30);
M_.params(35) = 2.4;
y0 = M_.params(35);
M_.params(31) = 0.05;
theta1 = M_.params(31);
M_.params(32) = 2.6;
theta2 = M_.params(32);
M_.params(20) = 0.95;
rho_a = M_.params(20);
M_.params(21) = 0.95;
rho_g = M_.params(21);
M_.params(22) = 0.95;
rho_c = M_.params(22);
M_.params(23) = 0.95;
rho_m = M_.params(23);
M_.params(24) = 0.95;
rho_i = M_.params(24);
M_.params(25) = 0.40;
rho_r = M_.params(25);
M_.params(26) = 0.40;
rho_t = M_.params(26);
M_.params(27) = 0.90;
rho_p = M_.params(27);
M_.params(28) = 0.90;
rho_e = M_.params(28);
M_.params(29) = 0.90;
rho_mh = M_.params(29);
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
if ~isempty(find(estim_params_.param_vals(:,1)==21))
    error('Parameter rho_g has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 21, .92, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==8))
    error('The standard deviation for eta_p has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 8, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==27))
    error('Parameter rho_p has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 27, .92, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==6))
    error('The standard deviation for eta_r has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 6, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==25))
    error('Parameter rho_r has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 25, .5, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==3))
    error('The standard deviation for eta_c has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 3, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==22))
    error('Parameter rho_c has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 22, .96, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==5))
    error('The standard deviation for eta_i has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 5, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==24))
    error('Parameter rho_i has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 24, .9, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==4))
    error('The standard deviation for eta_m has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 4, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==23))
    error('Parameter rho_m has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 23, .96, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==1))
    error('The standard deviation for eta_a has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 1, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==20))
    error('Parameter rho_a has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 20, .9, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==7))
    error('The standard deviation for eta_t has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 7, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==26))
    error('Parameter rho_t has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 26, .9, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==15))
    error('Parameter rho has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 15, .45, NaN, NaN, 1, .75, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==5))
    error('Parameter sigmaC has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 5, 1, NaN, NaN, 3, 1.5, .35, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==6))
    error('Parameter sigmaL has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 6, 1, NaN, NaN, 3, 1, 0.5, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==12))
    error('Parameter hh has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 12, .7, NaN, NaN, 1, .75, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==14))
    error('Parameter kappa has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 14, 4, NaN, NaN, 2, 4, 1.5, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==9))
    error('The standard deviation for eta_e has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 9, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==28))
    error('Parameter rho_e has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 28, .9, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==10))
    error('The standard deviation for eta_mh has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 10, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==29))
    error('Parameter rho_mh has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 29, .9, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==11))
    error('Parameter mk has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 11, .2, NaN, NaN, 1, .2, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==10))
    error('Parameter mh has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 10, .6, NaN, NaN, 3, .6, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==31))
    error('Parameter theta1 has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 31, .05, NaN, NaN, 1, .05, 0.01, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==32))
    error('Parameter theta2 has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 32, .2, NaN, NaN, 1, .2, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==33))
    error('Parameter varphi has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 33, .2, NaN, NaN, 1, .2, 0.1, NaN, NaN, NaN ];
options_.datafile = 'Utils/myobs.mat';
options_.no_graph.shock_decomposition = true;
options_.parameter_set = 'posterior_mode';
var_list_ = {'gy_obs';'pi_obs';'r_obs';'l_obs';'co2_obs';'phi_E'};
oo_ = shock_decomposition(M_,oo_,options_,var_list_,bayestopt_,estim_params_);
options_.irf = 30;
options_.nograph = false;
options_.order = 1;
var_list_ = {'y';'c_H';'c_E';'i';'pi';'r';'q';'phi_E';'l';'e';'co2_obs'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'estim_credit_NK_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'estim_credit_NK_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'estim_credit_NK_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'estim_credit_NK_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'estim_credit_NK_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'estim_credit_NK_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'estim_credit_NK_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'estim_credit_NK_results.mat'], 'options_mom_', '-append');
end
disp('Note: 1 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
