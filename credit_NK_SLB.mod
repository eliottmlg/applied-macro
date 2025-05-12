% Revised model of borrowing constraint with second loan type (SLB)
% (Original model: "Toy model of borrowing constraint for entrepreneurs")
% gauthier@vermandel.fr
%----------------------------------------------------------------
% 0. Housekeeping
%----------------------------------------------------------------
close all;  % Close all open figure windows

%----------------------------------------------------------------
% 1. Declaration of endogenous and exogenous variables
%----------------------------------------------------------------

% Endogenous variables
var 
    rr      % Real interest rate
    c       % Aggregate consumption
    c_E     % Entrepreneur consumption
    c_H     % Household consumption
    h       % Hours worked
    w       % Real wage
    y       % Output
    k       % Capital
    i       % Investment
    l       % Traditional loans (bank credit)
    l_SLB   % SLB loans (new second type of bank loan)
    d_t     % Total loans (bank assets = deposits) - new variable
    lb_E    % Lagrange multiplier on entrepreneur borrowing constraint
    phi_E   % Entrepreneur borrowing constraint tightness (multiplier)
    mc      % Marginal cost
    pi      % Inflation
    r       % Nominal interest rate (policy rate / standard loan rate)
    r_SLB   % Nominal interest rate on SLB loans (lower by spread rho) - new
    lb_H    % Household deposits (Lagrange multiplier for household Euler)
    q       % Price of capital
    varrho  % Productivity shock composite term
    tau     % Carbon tax
    mu      % Emissions abatement rate
    e       % Emissions
    g       % Government spending
    gy_obs gc_obs gi_obs pi_obs r_obs l_obs; % Observable variables

% Exogenous shocks
var e_a e_g e_c e_m e_i e_r e_t e_p;

% Exogenous processes (shock innovations)
varexo 
    eta_a   % Technology shock
    eta_g   % Government spending shock
    eta_c   % Preference shock
    eta_m   % Collateral value shock
    eta_i   % Investment shock
    eta_r   % Monetary policy shock
    eta_t   % CO2 tax shock
    eta_p;  % Cost-push shock

%----------------------------------------------------------------
% 2. Parameter Declaration
%----------------------------------------------------------------
parameters 
    beta_E beta_H         % Discount factors (Entrepreneurs, Households)
    delta alpha           % Capital depreciation rate, output elasticity of capital
    sigmaC sigmaL chi     % Preferences: risk aversion, labor supply elasticity, disutility weight
    gy A mh mk hh         % Steady state gov. spending ratio, TFP, collateral ratios, habit
    epsilon kappa         % Substitution elasticity, investment adjustment cost
    rho_mp phi_y phi_pi   % Taylor rule parameters (monetary policy smoothing rho renamed to rho_mp)
    psi piss              % Price adjustment cost, steady-state inflation
    rho xi                % Interest rate spread (rho) and SLB loan share (xi) for second loan (new)
    rho_a rho_g rho_c rho_m rho_i rho_r rho_t rho_p  % AR(1) shock parameters
    sig theta1 theta2     % Emission intensity, abatement cost parameters
    varphi tau0 y0;       % Emission elasticity, steady-state CO2 tax, steady-state output

%----------------------------------------------------------------
% 2. Calibration
%----------------------------------------------------------------

beta_H  = 0.993;        % Discount factor (Households)
beta_E  = 0.980;        % Discount factor (Entrepreneurs)
delta   = 0.025;        % Depreciation rate of capital
alpha   = 0.30;         % Capital share in production
gy      = 0.2;          % Government spending to GDP ratio
hh      = 0.7;          % Consumption habit formation weight
sigmaC  = 1;            % Relative risk aversion (consumption)
sigmaL  = 1;            % Inverse Frisch elasticity of labor supply
mk      = 0.8;          % Capital collateral constraint coefficient
mh      = 0.1;          % Labor collateral constraint coefficient
epsilon = 10;           % Elasticity of substitution between differentiated goods
rho_mp  = 0.8;          % Monetary policy smoothing (Taylor rule) – renamed from rho
phi_y   = 0;            % Monetary policy response to output
phi_pi  = 1.5;          % Monetary policy response to inflation
rho     = 0.02;         % Interest rate spread for SLB loans (e.g., SLB loans 2% cheaper)
psi     = 80;           % Price adjustment cost (Rotemberg)
kappa   = 4;            % Investment adjustment cost
varphi  = 0.2;          % Elasticity of emissions to output
piss    = 1.005;        % Steady-state gross inflation (0.5% quarterly)
xi      = 0.0;          % Fraction of total loans provided as SLB (0 = no SLB access baseline)

% Values of long-term variables (steady-state targets)
tau0    = 100/1000;     % Steady-state carbon tax ($100 per ton scaled to model units)
sig     = 0.2;          % Carbon intensity (Gt emissions per trillion USD output)
y0      = 25;           % Steady-state output (trillions USD, for scaling)
% Source: World Bank national accounts data

theta1  = 0.05;         % Level of abatement cost
theta2  = 2.6;          % Curvature of abatement cost

% Autoregressive shock parameters (persistence)
rho_a   = 0.95;
rho_g   = 0.95;
rho_c   = 0.95;
rho_m   = 0.95;
rho_i   = 0.95;
rho_r   = 0.40;
rho_t   = 0.40;
rho_p   = 0.90;
                
%----------------------------------------------------------------
% 3. Model
%----------------------------------------------------------------

model;
    %% Household
    [name='marginal utility of consumption']
    lb_H = e_c*(c_H - hh*c_H(-1))^(-sigmaC);
    [name='Euler']
    beta_H * lb_H(+1)/lb_H * rr = 1;
    [name='Labor Supply']
    w * lb_H = chi * (h^sigmaL);
    [name='FOC investment']
    e_i * q = 1 + e_i*q * (kappa/2)*(1 + (3*i/i(-1) - 4) * i/i(-1)) + beta_E * (lb_E(+1)/lb_E) * e_i(+1) * q(+1) * kappa * (1 - i(+1)/i) * (i(+1)/i)^2;
    
    %% Production and Entrepreneurs
    [name='technology']
    y = e_a * A * (k(-1)^alpha) * (h^(1-alpha));
    [name='Borrowing constraint']
    l + l_SLB = e_m * mk * q(+1) * k / rr - mh * w * h;
    [name='Capital law of motion']
    i * e_i * (1 - (kappa/2)*((i/i(-1) - 1)^2)) = k - (1 - delta) * k(-1);
    [name='FOC entrepreneur consumption']
    lb_E = e_c * (c_E - hh*c_E(-1))^(-sigmaC);
    [name='FOC total borrowing']
    1 - phi_E = beta_E * (lb_E(+1)/lb_E) * rr;
    [name='FOC capital']
    (1 - phi_E) * ((1 - delta)*q(+1) + alpha * varrho(+1) * y(+1)/k) + phi_E * q(+1) * e_m * mk = q * rr;
    [name='FOC labor demand']
    w = (1 - alpha) * varrho * y / (h * (1 + mh * phi_E));
    [name='NK Phillips Curve']
    (1 - epsilon) + epsilon*mc - psi * pi * (pi - steady_state(pi)) + psi * beta_E * (lb_E(+1)/lb_E) * (y(+1)/y) * pi(+1) * (pi(+1) - steady_state(pi)) = 0;
    [name='FOC abatement']
    ((tau * sig * y^(1 - varphi)) / (theta2 * theta1))^(1/(theta2 - 1)) = mu;
    [name='Productivity composite definition']
    varrho = mc - theta1 * mu^theta2 - tau * (1 - varphi) * sig * (1 - mu) * y^(-varphi);
    
    %% Aggregation and Resource Constraints
    [name='Entrepreneur balance sheet']
    c_E + i + w*h + (r(-1)/pi) * l(-1) + (r_SLB(-1)/pi) * l_SLB(-1) + theta1 * mu^theta2 * y + tau * e = mc * y + (1 - mc - psi/2 * (pi - steady_state(pi))^2) * y + l + l_SLB;
    [name='Resource constraint']
    y = c + i + g + theta1 * mu^theta2 * y + (psi/2) * (pi - steady_state(pi))^2 * y;
    [name='Total consumption definition']
    c = c_E + c_H;
    [name='Emissions definition']
    e = sig * (1 - mu) * y^(1 - varphi);
    
    %% Banking Sector (SLB Loans)
    [name='SLB loan share']
    l_SLB = xi * d_t;
    [name='Bank balance sheet identity']
    d_t = l + l_SLB;
    [name='SLB loan interest rate']
    r_SLB = r - rho;
    
    %%% Policy instruments
    [name='Fisherian equation']
    rr = r / pi(+1);
    [name='Monetary Policy rule']
    r = (r(-1)^rho_mp) * ( steady_state(r) * (pi/steady_state(pi))^phi_pi * (y/steady_state(y))^phi_y )^(1 - rho_mp ) * e_r;
    [name='Public spending']
    g = gy * steady_state(y) * e_g;
    [name='Carbon tax']
    tau = tau0 * e_t;
    
    %% Observable variables 
    [name='measurement GDP']
    gy_obs = log(y / y(-1));
    [name='measurement consumption']
    gc_obs = log(c / c(-1));
    [name='measurement investment']
    gi_obs = log(i / i(-1));
    [name='measurement inflation']
    pi_obs = pi - steady_state(pi);
    [name='measurement interest rate']
    r_obs = r - steady_state(r);
    [name='measurement total loans']
    l_obs = log(d_t / d_t(-1));
    
    %%% Stochastic processes for exogenous shocks
    [name='shocks']
    log(e_a) = rho_a * log(e_a(-1)) + eta_a;
    log(e_g) = rho_g * log(e_g(-1)) + eta_g;
    log(e_c) = rho_c * log(e_c(-1)) + eta_c;
    log(e_i) = rho_i * log(e_i(-1)) + eta_i;
    log(e_m) = rho_m * log(e_m(-1)) + eta_m;
    log(e_r) = rho_r * log(e_r(-1)) + eta_r;
    log(e_t) = rho_t * log(e_t(-1)) + eta_t;
    log(e_p) = rho_p * log(e_p(-1)) + eta_p;
end;

%----------------------------------------------------------------
% 4. Computation (Steady State and Simulation)
%----------------------------------------------------------------
steady_state_model;
    % Steady-state target values
    y       = y0;
    tau     = tau0;
    % Solve for abatement share mu given tax and parameters
    mu      = (tau * sig * y^(1 - varphi) / (theta2 * theta1))^(1/(theta2 - 1));
    e       = sig * (1 - mu) * y^(1 - varphi);
    g       = gy * y;
    pi      = piss;
    rr      = 1 / beta_H;
    r       = rr * pi;
    r_SLB   = r - rho;           % SLB nominal interest (steady state)
    rr_SLB  = r_SLB / pi;        % SLB real interest factor (steady state)
    mc      = (epsilon - 1) / epsilon;
    varrho  = mc - theta1 * mu^theta2 - tau * (1 - varphi) * sig * (1 - mu) * y^(-varphi);
    h       = 1/3;
    q       = 1;
    phi_E   = 1 - beta_E / beta_H;
    % Solve for steady-state capital from capital FOC and borrowing constraint
    k       = alpha * varrho * y / ( (rr - phi_E * mk) / (1 - phi_E) - (1 - delta) );
    A       = y / (k^alpha * h^(1 - alpha));   % Total factor productivity to match output
    i       = delta * k;
    w       = (1 - alpha) * varrho * y / (h * (1 + mh * phi_E));
    l       = mk * k / rr - mh * w * h;
    l_SLB   = (xi / (1 - xi)) * l;            % SLB loans in steady state (xi fraction of total loans)
    d_t     = l + l_SLB;                      % Total loans equals deposits in steady state
    % Entrepreneur consumption (resources): output + loans minus investment, wage, costs, and debt repayment
    c_E     = -i - w*h - theta1 * mu^theta2 * y - tau * e + mc * y + (1 - mc) * y + (1 - rr) * l + (1 - rr_SLB) * l_SLB;
    c       = (1 - gy) * y - i - theta1 * mu^theta2 * y;
    c_H     = c - c_E;
    lb_E    = (c_E - hh * c_E)^(-sigmaC);
    lb_H    = (c_H - hh * c_H)^(-sigmaC);
    chi     = w * lb_H / (h^sigmaL);
    % Initialize exogenous shock levels at steady state
    e_a     = 1; 
    e_g     = 1; 
    e_c     = 1; 
    e_m     = 1; 
    e_i     = 1; 
    e_r     = 1; 
    e_t     = 1; 
    e_p     = 1;
    % Steady-state observables (logs or gaps are zero)
    gy_obs  = 0; 
    gc_obs  = 0; 
    gi_obs  = 0; 
    pi_obs  = 0; 
    r_obs   = 0; 
    l_obs   = 0;
end;

% Assign parameters after computing steady state values
chi = w * lb_H / (h^sigmaL);
A   = y / (k^alpha * h^(1 - alpha));

% Check for residuals of static equations (should be all zero if steady state is correct)
resid;

// % (Stochastic simulation or estimation commands can follow here)
// shocks;
//     var eta_g; stderr 1;
//     % Additional shock standard deviations can be set here...
// end;
// 
// % Example: simulate impulse responses
// stoch_simul(irf=30, order=1) y c_H c_E i pi r d_t l_SLB phi_E;

