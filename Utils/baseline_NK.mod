% Toy model of borrowing constraint for entrepreneurs
% gauthier@vermandel.fr

%----------------------------------------------------------------
% 0. Housekeeping (close all graphic windows)
%----------------------------------------------------------------

close all;

%----------------------------------------------------------------
% 1. Defining variables
%----------------------------------------------------------------

var rr c c h w y k i mc pi r lb q varrho tau mu e g gy_obs gc_obs gi_obs pi_obs r_obs lny;
var e_a e_g e_c e_i e_r e_t e_p;


varexo eta_a eta_g eta_c eta_i eta_r eta_t eta_p;

parameters beta_E beta delta alpha sigmaC sigmaL chi gy A hh epsilon kappa rho phi_y phi_pi xi piss
			rho_a rho_g rho_c rho_i rho_r rho_t rho_p
			sig theta1 theta2 varphi  tau0 y0;
            
            
%----------------------------------------------------------------
% 2. Calibration
%----------------------------------------------------------------

beta 	= 0.993; 	% Discount factor firms
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
xi 		= 80;		% Adjustment costs on prices
kappa	= 4;		% adjustment costs on investment
varphi	= 0.2;		% elasticity of emission to GDP
piss	= 1.005;	% 0.5% inflation quarterly basis in steady state

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
	w*lb = chi*(h^sigmaL);
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
	(1-epsilon) + epsilon*mc - xi*pi*(pi-steady_state(pi)) + xi*beta*lb(+1)/lb*y(+1)/y*pi(+1)*(pi(+1)-steady_state(pi));
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
	r = r(-1)^rho * (steady_state(r)*(pi/steady_state(pi))^phi_pi*(y/steady_state(y))^phi_y)^(1-rho) * e_r;
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
	pi_obs = pi - steady_state(pi);
	[name='measurement interest rate']
	r_obs  = r  - steady_state(r);

	[name='Output gap']
	lny = log(y/steady_state(y));
	
	%%% stochastic innovations
	[name='shocks']
	log(e_a) = rho_a*log(e_a(-1))+eta_a;
	log(e_g) = rho_g*log(e_g(-1))+eta_g;
	log(e_c) = rho_c*log(e_c(-1))+eta_c;
	log(e_p) = rho_p*log(e_p(-1))+eta_p;
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
	chi		= w*lb/(h^sigmaL);
	g 		= gy*y;
	e_a 	= 1; e_g 	= 1; e_c 	= 1; e_i 	= 1; e_r 	= 1; e_t 	= 1; e_p = 1;
	gy_obs = 0; gc_obs = 0; gi_obs = 0; pi_obs = 0; r_obs = 0;
end;

% check residuals
resid;

%%% Stochastic Simulations // replace with your codes

% variance covariance matrix
shocks;
	var eta_a;	stderr 1;
end;
	
% stochastic simulations
stoch_simul(irf=30,order=1) y c i pi r q h;


	
	