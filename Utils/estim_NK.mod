% Toy model of borrowing constraint for entrepreneurs
% gauthier@vermandel.fr

%----------------------------------------------------------------
% 0. Housekeeping (close all graphic windows)
%----------------------------------------------------------------

close all;

%----------------------------------------------------------------
% 1. Defining variables
%----------------------------------------------------------------

var rr c h w y k i mc pi r lb q varrho tau mu e g 
gy_obs ${\Delta log(Y_{t})}$ (long_name='Output growth'), 
gc_obs ${\Delta log(C_{t})}$ (long_name='Consumption growth'), 
gi_obs ${\Delta log(I_{t})}$ (long_name='Investment growth'), 
pi_obs ${\pi_{t}}$ (long_name='Inflation'),
r_obs ${R_{t}}$ (long_name='Interest rate'),
h_obs ${H_{t}}$ (long_name='Hours'),  lny, lnc, lni, lnpi, lnr;
var e_a e_g e_c e_i e_r e_t e_p;


varexo eta_a eta_g eta_c eta_i eta_r eta_t eta_p;

parameters beta delta alpha sigmaC sigmaH chi gy A hh epsilon kappa rho phi_y phi_dy phi_pi xi piss betainv
			rho_a rho_g rho_c rho_i rho_r rho_t rho_p
			sig theta1 theta2 varphi  tau0 y0;
            
            
%----------------------------------------------------------------
% 2. Calibration
%----------------------------------------------------------------

beta 	= 0.996; 	% Discount factor firms
delta 	= 0.025;	% Depreciation rate
alpha 	= 0.30;		% Capital share
gy 		= 0.2;   	% Public spending in GDP
hh		= 0.7;		% Consumption habits
sigmaC 	= 1;		% Consumption risk aversion
sigmaH 	= 1; 		% Elasticity of labor
epsilon = 7;		% Elasticity between goods
rho 	= .8;		% Monetary policy smoothing
phi_y	= 0.025;		% Monetary policy reaction to output
phi_dy	= 0;		% Monetary policy reaction to output growth
phi_pi	= 1.5;		% Monetary policy reaction to inflation
xi 		= 80;		% Adjustment costs on prices
kappa	= 4;		% adjustment costs on investment
varphi	= 0.2;		% elasticity of emission to GDP
piss	= 1.0086;	% 0.5% inflation quarterly basis in steady state

% value of long term variables
tau0 	= 100/1000;	% value of carbon tax ($/ton)
sig		= 0.2; 		% Carbon intensity USA 0.2 Gt / Trillions USD
y0	 	= 25;		% trillions usd PPA https://data.worldbank.org/indicator/NY.GDP.MKTP.CD
theta1  = 0.05;		% level of abatement costs
theta2  = 2.6;		% curvature abatement cost

% autoregressive roots parameters
rho_a	= 0.95;
rho_g	= 0.95;
rho_c	= 0.95;
rho_i	= 0.95;
rho_r	= 0.40;
rho_t	= 0.40;
rho_p   = 0.90;
		
%----------------------------------------------------------------
% 3. Model
%----------------------------------------------------------------

model; 
	%% Household
	[name='marginal utility of consumption']
	lb = e_c*(c-hh*c(-1))^-sigmaC;
	[name='Euler']
	beta*lb(+1)/lb*rr = 1;
	[name='Labor Supply']
	w*lb = chi*(h^sigmaH);
	[name='FOC i']
 	e_i*q = 1 + e_i*q*(kappa/2)*( 1 + ( 3*i/i(-1)-4 )*i/i(-1) ) + beta*lb(+1)/lb*e_i(+1)*q(+1)*kappa*(1-i(+1)/i)*(i(+1)/i)^2;
	
 	
	%% Production
	[name='technology']
	y = e_a*A*(k(-1)^alpha)*(h^(1-alpha));
	[name='Capital law of motion']
	i*e_i*(1-(kappa/2)*(i/i(-1)-1)^2) = k-(1-delta)*k(-1);
	[name='FOC k']
	(1-delta)*q(+1)+alpha*varrho(+1)*y(+1)/k = q*rr;
	[name='FOC h']
	w = (1-alpha)*varrho*y/h;
	[name='NKPC']
	(1-epsilon*e_p) + epsilon*mc*e_p - xi*pi*(pi-steady_state(pi)) + xi*beta*lb(+1)/lb*y(+1)/y*pi(+1)*(pi(+1)-steady_state(pi));
	[name='FOC y']
	varrho = mc - theta1*mu^theta2 - tau*(1-varphi)*sig*(1-mu)*y^-varphi;
	[name='FOC mu']
	((tau*sig*y^(1-varphi))/(theta2*theta1))^(1/(theta2-1)) = mu;


	%% AGGREGATION
	[name='Resources Constraint']
	y = c + i + g + theta1*mu^theta2*y + y*xi/2*(pi-steady_state(pi))^2;
	[name='Total emissions']
	e = sig*(1-mu)*y^(1-varphi);
	[name='Fisherian equation']
	rr = r/pi(+1);
	
	%%% Policy instruments
	[name='Monetary Policy rule']
	r = r(-1)^rho * (steady_state(r)*(pi/steady_state(pi))^phi_pi*(y/steady_state(y))^phi_y)^(1-rho) *(y/y(-1))^phi_dy * e_r;
	[name='Public spending']
	g = gy*steady_state(y)*e_g;
	[name='Carbon tax']
	tau = tau0*e_t;

	%% Observable variables 
	[name='measurement GDP']
	gy_obs = log(y/y(-1));
	[name='measurement consumption']
	gc_obs = log(c/c(-1));
	[name='measurement investment']
	gi_obs = log(i/i(-1));
	[name='measurement inflation']
	pi_obs = (pi - steady_state(pi));
	[name='measurement interest rate']
	r_obs  = (r  - steady_state(r));
	[name='measurement hours worked']
	h_obs  = log(h/steady_state(h));

	[name='Output gap']
	lny = log(y/steady_state(y));
	[name='Consumption gap']
	lnc = log(c/steady_state(c));
	[name='Investment gap']
	lni = log(i/steady_state(i));
	[name='Investment gap']
	lnpi = log(pi/steady_state(pi));
	[name='Investment gap']
	lnr = log(r/steady_state(r));
	
	
	%%% stochastic innovations
	[name='shocks']
	log(e_a) = rho_a*log(e_a(-1))+eta_a;
	log(e_g) = rho_g*log(e_g(-1))+eta_g;
	log(e_c) = rho_c*log(e_c(-1))+eta_c;
	log(e_p) = rho_p*log(e_p(-1))+ kappa/epsilon*eta_p;
	log(e_i) = rho_i*log(e_i(-1))+eta_i;
    log(e_r) = rho_r*log(e_r(-1))+eta_r;  
    log(e_t) = rho_t*log(e_t(-1))+eta_t;  
end;


%----------------------------------------------------------------
% 4. Computation
%----------------------------------------------------------------
steady_state_model;
	y		= y0;
	tau 	= tau0;
	mu		= (tau*sig*y^(1-varphi)/(theta2*theta1))^(1/(theta2-1));
	e 		= sig*(1-mu)*y^(1-varphi);
	g       = gy*y;
	pi		= piss;
	rr		= 1/beta;
	r		= rr*pi;
	mc		= (epsilon-1)/epsilon;
	varrho 	= mc - theta1*mu^theta2 - tau*(1-varphi)*sig*(1-mu)*y^(-varphi);
	h		= 1/3;
	q		= 1;
	k		= alpha*varrho*y/((rr)/(1)-(1-delta)) ;
	A		= y/(k^alpha*h^(1-alpha));
	i		= delta*k;
	w		= (1-alpha)*varrho*y/h;
	c  		= (1-gy)*y-i-theta1*mu^theta2*y;
	lb 		= (c-hh*c)^-sigmaC;
	chi		= w*lb/(h^sigmaH);
	g 		= gy*y;
	e_a 	= 1; e_g 	= 1; e_c 	= 1; e_i 	= 1; e_r 	= 1; e_t 	= 1; e_p = 1;
	gy_obs = 0; gc_obs = 0; gi_obs = 0; pi_obs = 0; r_obs = 0; h_obs = 0;
	lny = 0; lnc = 0; lni = 0; lnpi = 0; lnr = 0;
end;

% check residuals
resid;


varobs gy_obs pi_obs r_obs gc_obs gi_obs;

estimated_params;
//	PARAM NAME,		INITVAL,	LB,		UB,		PRIOR_SHAPE,		PRIOR_P1,		PRIOR_P2,		PRIOR_P3,		PRIOR_P4,		JSCALE
	stderr eta_g,   	,			,		,		INV_GAMMA_PDF,		.01,			2;
	rho_g,				.92,    	,		,		beta_pdf,			.5,				0.2;
	stderr eta_p,   	,			,		,		INV_GAMMA_PDF,		.01,			2;
	rho_p,				.92,    	,		,		beta_pdf,			.5,				0.2;
	stderr eta_r,   	,			,		,		INV_GAMMA_PDF,		.01,			2;
	rho_r,				.5,    		,		,		beta_pdf,			.5,				0.2;
	stderr eta_c,   	,			,		,		INV_GAMMA_PDF,		.01,			2;
	rho_c,				.96,    		,		,		beta_pdf,			.5,				0.2;
	stderr eta_i,   	,			,		,		INV_GAMMA_PDF,		.01,			2;
	rho_i,				.9,    		,		,		beta_pdf,			.5,				0.2;
	

	sigmaC,				2,    		,		,		normal_pdf,			1.5,				.35;
	sigmaH,				0.8,   	 	,		,		gamma_pdf,			2,				0.5;
	hh,					.34,    		,		,		beta_pdf,			.75,			0.1;
	kappa,				6,    		,		,		gamma_pdf,			4,				1.5;
	xi,					106,    	0,		,		gamma_pdf,			100,				15;
	rho,				.45,    	,		,		beta_pdf,			.75,				0.1;
	phi_pi,				1.8,    	,		,		gamma_pdf,			1.5,				0.25;
	phi_y,				0.05,    	,		,		gamma_pdf,			0.12,				0.05;
	phi_dy,				0.02,    	,		,		normal_pdf,			0.12,				0.05;
%	alpha,				0.25,    	,		,		beta_pdf,			0.3,				.05;

end;


%%% estimation of the model
estimation(datafile=myobs,	% your datafile, must be in your current folder
first_obs=1,				% First data of the sample
mode_compute=4,				% optimization algo, keep it to 4
mh_replic=5000,				% number of sample in Metropolis-Hastings
mh_jscale=0.5,				% adjust this to have an acceptance rate between 0.2 and 0.3
prefilter=1,				% remove the mean in the data
lik_init=2,					% Don't touch this,
mh_nblocks=1,				% number of mcmc chains
forecast=8					% forecasts horizon
) gy_obs pi_obs r_obs gc_obs gi_obs;


% load estimated parameters
fn = fieldnames(oo_.posterior_mean.parameters);
for ix = 1:size(fn,1)
	set_param_value(fn{ix},eval(['oo_.posterior_mean.parameters.' fn{ix} ]))
end
% load estimated shocks
fx = fieldnames(oo_.posterior_mean.shocks_std);
for ix = 1:size(fx,1)
	idx = strmatch(fx{ix},M_.exo_names,'exact');
	M_.Sigma_e(idx,idx) = eval(['oo_.posterior_mean.shocks_std.' fx{ix}])^2;
end

stoch_simul(irf=30,conditional_variance_decomposition=[1,4,10,100],order=1) gy_obs pi_obs r_obs;



shock_decomposition lny pi_obs r_obs;

load(options_.datafile);
if exist('T') ==1
	Tvec = T;
else
	Tvec = 1:size(dataset_,1);
end
Tfreq = mean(diff(Tvec));

%%%%%%%%%%%%%%%%% END OF SAMPLE FORECASTING - PLOTS
tprior = 20; % period before forecasts to plot
Tvec2 = Tvec(end) + (0:(options_.forecast))*Tfreq;
for i1 = 1 :size(dataset_.name,1)
	idv		= strmatch(dataset_.name{i1},M_.endo_names,'exact');
	idd		= strmatch(dataset_.name{i1},dataset_.name,'exact');
	if ~isempty(idd) && isfield(oo_.MeanForecast.Mean, dataset_.name{i1})
		% Draw 
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






%%%%%%%%%%%%%%%%% COUNTERFACTUAL EXERCISES %%%%%%%%%%%%%%%%%%
%% stacks shocks in matrix
fx = fieldnames(oo_.SmoothedShocks);
for ix=1:size(fx,1)
	shock_mat = eval(['oo_.SmoothedShocks.' fx{ix}]);
	if ix==1; ee_mat = zeros(length(shock_mat),M_.exo_nbr); end;
	ee_mat(:,strmatch(fx{ix},M_.exo_names,'exact')) = shock_mat;
end

%%% Simulate baseline scenario
% solve decision rule
[oo_.dr, info, M_.params] = resol(0, M_, options_, oo_.dr, oo_.dr.ys, oo_.exo_steady_state, oo_.exo_det_steady_state);
% simulate the model
y_            = simult_(M_,options_,oo_.dr.ys,oo_.dr,ee_mat,options_.order);

%%% Simulate alternative scenario
% make a copy
Mx  = M_;
oox = oo_;
% change parameter
Mx.params(strcmp('phi_y',M_.param_names)) = .25;
% solve new decision rule
[oox.dr, info, Mx.params] = resol(0, Mx, options_, oox.dr, oox.dr.ys, oox.exo_steady_state, oox.exo_det_steady_state);
% simulate dovish central bank
ydov            = simult_(Mx,options_,oox.dr.ys,oox.dr,ee_mat,options_.order);

% draw result
var_names={'lny','lnc','lni','lnpi','lnr','h_obs'};
Ty = [T(1)-Tfreq;T];
draw_tables(var_names,M_,Ty,[],y_,ydov)
legend('Estimated','Dovish')








%%%%%%%%%%%%%%%%% FORECAST UNDER ALTERNATIVE POLICY %%%%%%%%%%%%%%%%%%
Thorizon 	= 12; % number of quarters for simulation
% Built baseline forecast
fx = fieldnames(oo_.SmoothedShocks);
for ix=1:size(fx,1)
	shock_mat = eval(['oo_.SmoothedShocks.' fx{ix}]);
	if ix==1; ee_mat2 = zeros(length(shock_mat),M_.exo_nbr); end;
	ee_mat2(:,strmatch(fx{ix},M_.exo_names,'exact')) = shock_mat;
end
% add mean-wise forecast with zero mean shocks
ee_mat2 	= [ee_mat;zeros(Thorizon,M_.exo_nbr)];
Tvec2 		= Tvec(1):Tfreq:(Tvec(1)+size(ee_mat2,1)*Tfreq);

%%% Simulate baseline scenario
% solve decision rule
[oo_.dr, info, M_.params] = resol(0, M_, options_, oo_.dr, oo_.dr.ys, oo_.exo_steady_state, oo_.exo_det_steady_state);
% simulate the model
y_            = simult_(M_,options_,oo_.dr.ys,oo_.dr,ee_mat2,options_.order);

%%% Add a positive fiscal shock
% make a copy of shock matrix
ee_matx = ee_mat2;
% select fiscal shock
idx = strmatch('eta_g',M_.exo_names,'exact');
ee_matx(end-Thorizon+1,idx) = 0.05;% add a 5 percent increase in public spending
% simulate the model
y_fiscal           = simult_(M_,options_,oo_.dr.ys,oo_.dr,ee_matx,options_.order);


%%% Add a positive carbon shock
% make a copy of shock matrix
ee_matx = ee_mat2;
% select fiscal shock
idx = strmatch('eta_t',M_.exo_names,'exact');
ee_matx(end-Thorizon+1,idx) = 0.5;% add a 50 percent increase in carbon price 
% simulate the model
y_carbon           = simult_(M_,options_,oo_.dr.ys,oo_.dr,ee_matx,options_.order);

%%% Add a negative monetary policy shock
% make a copy of shock matrix
ee_matx = ee_mat2;
% select fiscal shock
idx = strmatch('eta_r',M_.exo_names,'exact');
ee_matx(end-Thorizon+1,idx) = -0.05;% add a 50 percent increase in carbon price 
% simulate the model
y_monetary           = simult_(M_,options_,oo_.dr.ys,oo_.dr,ee_matx,options_.order);

% draw result
var_names={'lny','lni','lnpi','lnr','g','tau'};
Ty = [T(1)-Tfreq;T];
draw_tables(var_names,M_,Tvec2,[2023 Tvec2(end)],y_,y_fiscal,y_carbon,y_monetary)
legend('Estimated','Fiscal','Carbon','Monetary')
