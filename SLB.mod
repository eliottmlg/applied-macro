% Toy model of borrowing constraint for entrepreneurs
% gauthier@vermandel.fr

%----------------------------------------------------------------
% 0. Housekeeping (close all graphic windows)
%----------------------------------------------------------------

close all;

%----------------------------------------------------------------
% 1. Defining variables
%----------------------------------------------------------------

var rr c c_E c_H h w y k i l lb_E phi_E mc pi r lb_H q varrho tau mu e g gy_obs gc_obs gi_obs pi_obs r_obs l_obs 
// New below
b_s r_s rrs phiS;

var e_a e_g e_c e_m e_i e_r e_t e_p
// New 
e_s e_mmu e_ms;


varexo eta_a eta_g eta_c eta_m eta_i eta_r eta_t eta_p 
// New 
eta_s eta_mmu eta_ms;

parameters beta_E beta_H delta alpha sigmaC sigmaL chi_l gy A mh mk hh epsilon kappa rho phi_y phi_pi psi piss
			rho_a rho_g rho_c rho_m rho_i rho_r rho_t rho_p
			sig theta1 theta2 varphi  tau0 y0
//             New below
            stepup p_s gamma
            chi_s sigmaS rho_s BDratio
            mmu rho_mmu ms rho_ms;
            
            
%----------------------------------------------------------------
% 2. Calibration
%----------------------------------------------------------------

beta_H 	= 0.993; 	% Discount factor firms
beta_E  = 0.980;	% Discount factor entrepreneurs
delta 	= 0.025;	% Depreciation rate
alpha 	= 0.30;		% Capital share
gy 		= 0.2;   	% Public spending in GDP
hh		= 0.7;		% Consumption habits
sigmaC 	= 1;		% Consumption risk aversion
sigmaL 	= 1; 		% Elasticity of labor
mk      = 0.8;		% Capital borrowing constraint
mh      = 0.1;		% Labor borrowing constraint
epsilon = 10;		% Elasticity between goods
rho 	= .8;		% Monetary policy smoothing
phi_y	= 0;		% Monetary policy reaction to output
phi_pi	= 1.5;		% Monetary policy reaction to inflation
psi 	= 80;		% Adjustment costs on prices
kappa	= 4;		% adjustment costs on investment
varphi	= 0.2;		% elasticity of emission to GDP
piss	= 1.005;	% 0.5% inflation quarterly basis in steady state

sigmaS = 8.9300; // elasticity SLB
chi_s   = 15; // weight of SLBs
BDratio = 0.05; // Bonds (SLB + ordinary) over debt ratio



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
rho_m  	= 0.95;
rho_i	= 0.95;
rho_r	= 0.40;
rho_t	= 0.40;
rho_p   = 0.90;
// New
rho_s   = 0.90; // persistence of SLB preference shock
rho_ms  = 0.90; // persistence of SLB capital constraint shock 
rho_mmu = 0.90; // persistence of SLB emission constraint shock
// New
stepup  = 0.25; // stepup if target is missed
p_s     = 0.02; // sustainium: yield premium on SLBs (rate bond - rate SLB)
gamma   = 0.3; // probability of missing target
ms      = 0.8; // Capital for SLB borrowing constraint
mmu     = 0.1; // Emission for SLB borrowing constraint
		
%----------------------------------------------------------------
% 3. Model
%----------------------------------------------------------------

model; 
	%% Household
	[name='marginal utility of consumption']
	lb_H = e_c*(c_H-hh*c_H(-1))^-sigmaC;
	[name='Euler']
	beta_H*lb_H(+1)/lb_H*rr = 1;
	[name='Labor Supply']
	w*lb_H = chi_l*(h^sigmaL);
	[name='FOC i']
 	e_i*q = 1 + e_i*q*(kappa/2)*( 1 + ( 3*i/i(-1)-4 )*i/i(-1) )
			+ beta_E*lb_E(+1)/lb_E*e_i(+1)*q(+1)*kappa*(1-i(+1)/i)*(i(+1)/i)^2;
// New
    [name='Euler SLBs (b_s)']
    beta_H * (lb_H(+1)/lb_H) * r_s(+1)/pi(+1) + e_s * (chi_s/lb_H) * (b_s/pi)^-sigmaS = 1;

 	
	%% Production
	[name='technology']
	y = e_a*A*(k(-1)^alpha)*(h^(1-alpha));
	[name='Borrowing constraint']
	l = e_m*mk*q(+1)*k/rr - mh*w*h;
	[name='Capital law of motion']
	i*e_i*(1-(kappa/2)*(i/i(-1)-1)^2) = k-(1-delta)*k(-1);
 	[name='FOC c']
	lb_E = e_c*(c_E-hh*c_E(-1))^-sigmaC;
	[name='FOC l']
	1-phi_E = beta_E*lb_E(+1)/lb_E*rr;
	[name='FOC k']
// 	(1-phi_E)*((1-delta)*q(+1)+alpha*varrho(+1)*y(+1)/k) + phi_E*q(+1)*e_m*mk = q*rr;
// New
	(1-phi_E)*((1-delta)*q(+1)+alpha*varrho(+1)*y(+1)/k) + phi_E*q(+1)*e_m*mk + phiS*q(+1)*e_ms*ms*(rr/rrs) = q*rr;
	[name='FOC h']
	w = (1-alpha)*varrho*y/(h*(1+mh*phi_E));
	[name='NKPC']
	(1-epsilon) + epsilon*mc - psi*pi*(pi-steady_state(pi)) + psi*beta_E*lb_E(+1)/lb_E*y(+1)/y*pi(+1)*(pi(+1)-steady_state(pi));
	[name='FOC y']
// 	varrho = mc - theta1*mu^theta2 - tau*(1-varphi)*sig*(1-mu)*y^-varphi;
	varrho = mc - theta1*mu^theta2 - tau*(1-varphi)*sig*(1-mu)*y^-varphi - phiS*mmu*theta1*mu^theta2;
	[name='FOC mu']
// 	((tau*sig*y^(1-varphi))/(theta2*theta1))^(1/(theta2-1)) = mu;
((tau*sig*y^(1-varphi))/((1+phiS)*theta2*theta1))^(1/(theta2-1)) = mu;
// New
	[name='FOC for entrepreneur SLB (b_s_E)']
//     lb_E = beta_E*lb_E * r_s;
	1-phiS = beta_E*lb_E(+1)/lb_E*rrs;

	%% AGGREGATION
// 	[name='balance sheet']
// 	c_E + i + w*h + r(-1)/pi*l(-1) + theta1*mu^theta2*y + tau*e = mc*y +(1-mc-psi/2*(pi-steady_state(pi))^2)*y + l ;
	[name='balance sheet']
	c_E + i + w*h + (r(-1)/pi)*l(-1) + (r_s/pi)*b_s(-1) + theta1*mu^theta2*y + tau*e = mc*y +(1-mc-psi/2*(pi-steady_state(pi))^2)*y + l + b_s;
// TRIALS
//     [name='SLB market clearing condition']
//     b_s = b_s_E;
//     [name='Firms debt structure']
//     b_s_E = BDratio * (b_s_E + l);
//     [name='Firms capital structure']
//     r_s = r + gamma * stepup;

	[name='Resources Constraint']
	y = c + i + g + theta1*mu^theta2*y + y*psi/2*(pi-steady_state(pi))^2;
	[name='Total consumption']
	c = c_E + c_H;
	[name='Total emissions']
	e = sig*(1-mu)*y^(1-varphi);
	[name='Fisherian equation']
	rr = r/pi(+1);
// New
	[name='Fisherian equation']
	rrs = r_s/pi;
	[name='Sustainium equation']
	r_s = r + gamma*stepup;

	
	%%% Policy instruments
	[name='Monetary Policy rule']
	r = r(-1)^rho * (steady_state(r)*(pi/steady_state(pi))^phi_pi*(y/steady_state(y))^phi_y)^(1-rho) * e_r;
	[name='Public spending']
	g = gy*steady_state(y)*e_g;
	[name='Carbon tax']
	tau = tau0*e_t;

// New
// 	[name='Interest rate on SLB']
//     r_s = rr + gamma * stepup
// 	[name='Interest rate on original bonds']
//     r_o = r_s + p_s

	%% Observable variables 
	[name='measurement GDP']
	gy_obs = log(y/y(-1));
	[name='measurement consumption']
	gc_obs = log(c/c(-1));
	[name='measurement investment']
	gi_obs = log(i/i(-1));
	[name='measurement inflation']
	pi_obs = pi - steady_state(pi);
	[name='measurement interest rate']
	r_obs  = r  - steady_state(r);
	[name='measurement corporate loans']
	l_obs  = log(l/l(-1));
// 	[name='measurement CO2 emissions']
// 	co2_obs  = log(e/e(-1));

	%%% stochastic innovations
	[name='shocks']
	log(e_a) = rho_a*log(e_a(-1))+eta_a;
	log(e_g) = rho_g*log(e_g(-1))+eta_g;
	log(e_c) = rho_c*log(e_c(-1))+eta_c;
	log(e_p) = rho_p*log(e_p(-1))+eta_p;
	log(e_i) = rho_i*log(e_i(-1))+eta_i;
    log(e_m) = rho_m*log(e_m(-1))+eta_m;
    log(e_r) = rho_r*log(e_r(-1))+eta_r;  
    log(e_t) = rho_t*log(e_t(-1))+eta_t;  
// New
    log(e_s) = rho_s*log(e_s(-1))+eta_s;  
    log(e_mmu) = rho_mmu*log(e_mmu(-1))+eta_mmu;  
    log(e_ms) = rho_ms*log(e_ms(-1))+eta_ms;  
end;


%----------------------------------------------------------------
% 4. Computation
%----------------------------------------------------------------
steady_state_model;
	y		= y0;
	tau 	= tau0;
	g       = gy*y;
	pi		= piss;
	rr		= 1/beta_H;
	r		= rr*pi;
// New
    rrs     = 1/beta_H * ( 1 - (chi_s/lb_E)*(b_s/piss)^-sigmaS );
//     rrs     = rr + gamma*stepup;
    r_s     = rrs*pi;
//     r_s     = r + gamma*stepup;
	phiS    = 1 - beta_E*rrs;
// 
// 	mu		= (tau*sig*y^(1-varphi)/(theta2*theta1))^(1/(theta2-1));
	mu		= (tau*sig*y^(1-varphi)/((1+phiS)*theta2*theta1))^(1/(theta2-1));
	e 		= sig*(1-mu)*y^(1-varphi);
	mc		= (epsilon-1)/epsilon;
	varrho 	= mc - theta1*mu^theta2 - tau*(1-varphi)*sig*(1-mu)*y^(-varphi);
	h		= 1/3;
	q		= 1;
	phi_E	= 1-beta_E/beta_H;
// 	k		= alpha*varrho*y/((rr-phi_E*mk)/(1-phi_E)-(1-delta)) ;
	k		= alpha*varrho*y/((rr-phi_E*mk-phiS*ms)/(1-phi_E)-(1-delta)) ;
	A		= y/(k^alpha*h^(1-alpha));
	i		= delta*k;
	w		= (1-alpha)*varrho*y/h/(1+mh*phi_E);
	l		= mk*k/rr - mh*w*h;
	c_E 	= -i - w*h - theta1*mu^theta2*y - tau*e + mc*y +(1-mc)*y + (1-rr)*l;
	c  		= (1-gy)*y-i-theta1*mu^theta2*y;
	c_H		= c - c_E;
	lb_E 	= (c_E-hh*c_E)^-sigmaC;
	lb_H 	= (c_H-hh*c_H)^-sigmaC;
	chi_l	= w*lb_H/(h^sigmaL);
	g 		= gy*y;
	e_a 	= 1; e_g 	= 1; e_c 	= 1; e_m 	= 1; e_i 	= 1; e_r 	= 1; e_t 	= 1; e_p = 1;
	gy_obs = 0; gc_obs = 0; gi_obs = 0; pi_obs = 0; r_obs = 0; l_obs = 0; // co2_obs = 0;
// New
	b_s		= mk*k/rr - mmu*y*theta1*mu^theta2;
//     r_s		= r + gamma*stepup; 
//     r_o     = r_s + p_s;
    e_s     = 1; e_mmu  = 1; e_ms   = 1;
//     r_s     = r + gamma*stepup;
//     rrs     = rr + gamma*stepup;
//     rrs     = 1/beta_H * ( 1 - (chi_s/lb_E)*(b_s/piss)^-sigmaS );
//     r_s     = rrs*pi;
// 	phiS  = 1 - beta_E*rrs;
// 	mu		= (tau*sig*y^(1-varphi)/((1+phiS)*theta2*theta1))^(1/(theta2-1));
// 	k		= alpha*varrho*y/((rr-phi_E*mk-phiS*ms)/(1-phi_E)-(1-delta)) ;


    

end;

% check residuals
resid;

%%% Estimation
varobs gy_obs pi_obs r_obs gc_obs gi_obs l_obs; // co2_obs;

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
	stderr eta_m,   	,			,		,		INV_GAMMA_PDF,		.01,			2;
	rho_m,				.96,    		,		,		beta_pdf,			.5,				0.2;
	stderr eta_a,   	,			,		,		INV_GAMMA_PDF,		.01,			2;
	rho_a,				.9,    		,		,		beta_pdf,			.5,				0.2;
	stderr eta_t,   	,			,		,		INV_GAMMA_PDF,		.01,			2;
	rho_t,				.9,    		,		,		beta_pdf,			.5,				0.2;

    rho,				.45,    	,		,		beta_pdf,			.75,				0.1;	
end;

%%% estimation of the model
// estimation(datafile='Utils/myobs.xlsx',	% your datafile, must be in your current folder
// first_obs=1,				% First data of the sample
// mode_compute=4,				% optimization algo, keep it to 4
// mh_replic=500,				% number of sample in Metropolis-Hastings
// mh_jscale=0.5,				% adjust this to have an acceptance rate between 0.2 and 0.3
// prefilter=1,				% remove the mean in the data
// lik_init=2,					% Don't touch this,
// mh_nblocks=1,				% number of mcmc chains
// forecast=8					% forecasts horizon
// ) gy_obs pi_obs r_obs gc_obs gi_obs l_obs; // co2_obs;



%%% Stochastic Simulations // replace with your codes

% variance covariance matrix
shocks;
	var eta_a;	stderr 1;
    var eta_m;    stderr 1;
end;
	
% stochastic simulations
stoch_simul(irf=30,order=1) y c_H c_E i pi r q e phi_E;


	
	