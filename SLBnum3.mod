%---------------------------------------------------------------
% Toy model with borrowing constraints and Sustainability-Linked Bonds (SLBs)
% Author: gauthier@vermandel.fr
%---------------------------------------------------------------

%--------------------------
% 0. Housekeeping
%--------------------------
close all;  % Close any open figure windows

%--------------------------
% 1. Declare Variables
%--------------------------

% --- Endogenous Variables ---
var rr        // Real interest rate (standard)
    c c_E c_H // Aggregate, entrepreneur, and household consumption
    h         // Hours worked
    w         // Wage rate
    y         // Output
    k i       // Capital stock and investment
    l         // Traditional debt (loans)
    lb_E lb_H // Marginal utility (Lagrange multipliers) for entrepreneurs and households
    phi_E     // Shadow price of borrowing constraint (entrepreneurs)
    mc        // Marginal cost
    pi r      // Inflation and nominal interest rate
    q         // Tobin's q
    varrho    // Output multiplier (from firm's FOCs)
    tau mu e  // Carbon tax, abatement effort, emissions
    g         // Government spending

    % SLB variables
    b_s       // SLB holdings
    r_s       // SLB nominal interest rate
    rrs       // SLB real return
    phiS     // Shadow price on SLB constraint

    gy_obs gc_obs gi_obs pi_obs r_obs l_obs;

% --- Exogenous Shocks (multiplicative, log-linearized) ---
var e_a e_g e_c e_m e_i e_r e_t e_p // Standard macro shocks
    e_s e_mmu e_ms;                 // SLB-specific preference and constraints shocks

% --- Stochastic innovations ---
varexo eta_a eta_g eta_c eta_m eta_i eta_r eta_t eta_p
       eta_s eta_mmu eta_ms;

%--------------------------
% 2. Model Parameters
%--------------------------

parameters 
    % Time preferences and technology
    beta_E beta_H delta alpha sigmaC sigmaL hh A

    % Policy and frictions
    gy psi phi_pi phi_y rho epsilon kappa piss
    mh mk chi_l

    % Climate
    tau0 sig varphi theta1 theta2 y0

    % SLB calibration
    sigmaS chi_s p_s gamma stepup BDratio mmu ms

    % Shock persistence
    rho_a rho_g rho_c rho_m rho_i rho_r rho_t rho_p
    rho_s rho_mmu rho_ms;

%--------------------------
% 3. Calibration
%--------------------------

% Time preferences and technology
beta_H  = 0.993;   % Household discount factor
beta_E  = 0.980;   % Entrepreneur discount factor
delta   = 0.025;   % Capital depreciation rate
alpha   = 0.30;    % Capital share
hh      = 0.7;     % Habit formation in consumption
sigmaC  = 1;       % CRRA parameter
sigmaL  = 1;       % Labor elasticity

% Frictions and policy rules
mk      = 0.8;     % Capital borrowing constraint (entrepreneurs)
mh      = 0.1;     % Labor borrowing constraint
epsilon = 10;      % Price elasticity of substitution
kappa   = 4;       % Capital adjustment cost
psi     = 80;      % Price adjustment cost
rho     = 0.8;     % Interest rate smoothing
phi_pi  = 1.5;     % Taylor rule inflation coefficient
phi_y   = 0;       % Taylor rule output coefficient
piss    = 1.005;   % Steady-state inflation (0.5% quarterly)
chi_l   = 1;       % Labor disutility weight (initial)

% Fiscal / climate
gy      = 0.2;     % Government spending to GDP ratio
tau0    = 0.1;     % Carbon tax rate
sig     = 0.2;     % Carbon intensity (Gt / Trillions USD)
y0      = 25;      % Output level (trillions USD)
theta1  = 0.05;    % Abatement cost level
theta2  = 2.6;     % Abatement cost curvature
varphi  = 0.2;     % Elasticity of emissions to output

% SLB-specific
sigmaS  = 8.93;    % Elasticity of substitution for SLBs
chi_s   = 15;      % Utility weight on SLBs
BDratio = 0.05;    % SLBs as share of total debt
p_s     = 0.02;    % Spread: (regular bond rate - SLB rate)
gamma   = 0.3;     % Probability of failing sustainability target
stepup  = 0.25;    % Penalty on SLB if target missed
ms      = 0.8;     % Capital constraint scaling for SLBs
mmu     = 0.1;     % Emission constraint scaling for SLBs

% Shock persistence
rho_a   = 0.95; rho_g   = 0.95; rho_c   = 0.95;
rho_m   = 0.95; rho_i   = 0.95; rho_r   = 0.40;
rho_t   = 0.40; rho_p   = 0.90;
rho_s   = 0.90; rho_mmu = 0.90; rho_ms  = 0.90;

%---------------------------------------------------------------
% 3. Model Equations
%---------------------------------------------------------------

model;

%% ---------- Households ----------

[name='marginal utility of consumption']
lb_H = e_c * (c_H - hh * c_H(-1))^(-sigmaC);

[name='Euler equation (standard bond)']
beta_H * lb_H(+1) / lb_H * rr = 1;

[name='Labor supply']
w * lb_H = chi_l * h^sigmaL;

[name='Investment FOC']
e_i * q = 1 
    + e_i * q * (kappa / 2) * (1 + (3*i / i(-1) - 4) * i / i(-1))
    + beta_E * lb_E(+1) / lb_E * e_i(+1) * q(+1) * kappa * (1 - i(+1) / i) * (i(+1) / i)^2;

[name='Euler equation for SLBs']
beta_H * (lb_H(+1) / lb_H) * r_s(+1) / pi(+1)
+ (chi_s / lb_H) * b_s^(-sigmaS) = 1;  % e_s = 1 in steady state

%% ---------- Production and Entrepreneurs ----------

[name='Production function']
y = e_a * A * k(-1)^alpha * h^(1 - alpha);

[name='Borrowing constraint']
l = e_m * mk * q(+1) * k / rr - mh * w * h;

[name='Capital accumulation']
i * e_i * (1 - (kappa / 2) * (i / i(-1) - 1)^2) = k - (1 - delta) * k(-1);

[name='Entrepreneur consumption FOC']
lb_E = e_c * (c_E - hh * c_E(-1))^(-sigmaC);

[name='Loan FOC']
1 - phi_E = beta_E * lb_E(+1) / lb_E * rr;

[name='Capital FOC']
(1 - phi_E) * ((1 - delta) * q(+1) + alpha * varrho(+1) * y(+1) / k)
+ phi_E * q(+1) * e_m * mk
+ phiS * q(+1) * e_ms * ms * (rr / rrs) = q * rr;

[name='Labor FOC']
w = (1 - alpha) * varrho * y / (h * (1 + mh * phi_E));

[name='New Keynesian Phillips Curve']
(1 - epsilon) + epsilon * mc 
- psi * pi * (pi - steady_state(pi)) 
+ psi * beta_E * lb_E(+1) / lb_E * y(+1) / y * pi(+1) * (pi(+1) - steady_state(pi));

[name='Output FOC']
varrho = mc - theta1 * mu^theta2 - tau * (1 - varphi) * sig * (1 - mu) * y^(-varphi) 
         - phiS * mmu * theta1 * mu^theta2;

[name='Abatement optimality']
mu = ((tau * sig * y^(1 - varphi)) / ((1 + phiS) * theta2 * theta1))^(1 / (theta2 - 1));

[name='SLB borrowing FOC (entrepreneurs)']
1 - phiS = beta_E * lb_E(+1) / lb_E * rrs;

%% ---------- Aggregation & Market Clearing ----------

[name='Balance sheet (resource use)']
c_E + i + w * h + (r(-1) / pi) * l(-1) + (r_s / pi) * b_s(-1) 
+ theta1 * mu^theta2 * y + tau * e 
= mc * y + (1 - mc - psi / 2 * (pi - steady_state(pi))^2) * y + l + b_s;

[name='Resource constraint']
y = c + i + g + theta1 * mu^theta2 * y + psi / 2 * (pi - steady_state(pi))^2 * y;

[name='Total consumption']
c = c_E + c_H;

[name='Emissions']
e = sig * (1 - mu) * y^(1 - varphi);

%% ---------- Interest Rate Definitions ----------

[name='Fisher equation (standard)']
rr = r / pi(+1);

[name='Fisher equation (SLB)']
rrs = r_s / pi(+1);

[name='SLB spread']
r_s = r - p_s;

%% ---------- Policy Rules ----------

[name='Monetary policy (Taylor rule)']
r = r(-1)^rho * (steady_state(r) * (pi / steady_state(pi))^phi_pi * (y / steady_state(y))^phi_y)^(1 - rho) * e_r;

[name='Government spending rule']
g = gy * steady_state(y) * e_g;

[name='Carbon tax rule']
tau = tau0 * e_t;

%% ---------- Measurement Equations (for observables) ----------

[name='Observed GDP growth']
gy_obs = log(y / y(-1));

[name='Observed consumption growth']
gc_obs = log(c / c(-1));

[name='Observed investment growth']
gi_obs = log(i / i(-1));

[name='Observed inflation']
pi_obs = pi - steady_state(pi);

[name='Observed nominal interest rate']
r_obs = r - steady_state(r);

[name='Observed corporate loans']
l_obs = log(l / l(-1));

%% ---------- Shock Processes ----------

[name='Shock processes (AR(1))']
log(e_a)    = rho_a   * log(e_a(-1))    + eta_a;
log(e_g)    = rho_g   * log(e_g(-1))    + eta_g;
log(e_c)    = rho_c   * log(e_c(-1))    + eta_c;
log(e_p)    = rho_p   * log(e_p(-1))    + eta_p;
log(e_i)    = rho_i   * log(e_i(-1))    + eta_i;
log(e_m)    = rho_m   * log(e_m(-1))    + eta_m;
log(e_r)    = rho_r   * log(e_r(-1))    + eta_r;
log(e_t)    = rho_t   * log(e_t(-1))    + eta_t;

log(e_s)    = rho_s   * log(e_s(-1))    + eta_s;
log(e_mmu)  = rho_mmu * log(e_mmu(-1))  + eta_mmu;
log(e_ms)   = rho_ms  * log(e_ms(-1))   + eta_ms;

end;

%---------------------------------------------------------------
% 4. Steady State Computation
%---------------------------------------------------------------

steady_state_model;

    %% --- Exogenous policy settings & initial assignments ---
    y      = y0;            // Output level (from data)
    tau    = tau0;          // Carbon tax (fixed)
    pi     = piss;          // Inflation target
    rr     = 1 / beta_H;    // Real interest rate (households)
    r      = rr * pi;       // Nominal interest rate
    g      = gy * y;        // Government spending

    %% --- Constants and implied ratios ---
    h      = 1 / 3;                        // Hours worked (normalized)
    q      = 1;                            // Tobin's q
    mc     = (epsilon - 1) / epsilon;      // Marginal cost (from mark-up)
    phi_E  = 1 - beta_E / beta_H;          // Shadow price from loan Euler equation

    %% --- Initial guess: SLB utility weight to match SLB Euler ---
    mu     = 0.3;                                            // Initial abatement effort
    e      = sig * (1 - mu) * y^(1 - varphi);                // Emissions from production
    k      = alpha * (mc - theta1 * mu^theta2 - tau * (1 - varphi) * sig * (1 - mu) * y^(-varphi)) * y / ((rr - phi_E * mk) / (1 - phi_E) - (1 - delta)); // Capital from firm's FOC

    A      = y / (k^alpha * h^(1 - alpha));     // TFP from production function
    i      = delta * k;                         // Investment from law of motion
    w      = (1 - alpha) * mc * y / h / (1 + mh * phi_E);  // Wage from labor FOC
    l      = mk * k / rr - mh * w * h;          // Loans from borrowing constraint
    
    c_E    = -i - w * h - theta1 * mu^theta2 * y - tau * e  + mc * y + (1 - mc) * y + (1 - rr) * l;         // Entrepreneur consumption
    c      = (1 - gy) * y - i - theta1 * mu^theta2 * y;      // Total consumption
    c_H    = c - c_E;                                        // Household consumption

    lb_E   = (c_E - hh * c_E)^(-sigmaC);       // Entrepreneur marginal utility
    lb_H   = (c_H - hh * c_H)^(-sigmaC);       // Household marginal utility
    
    %% --- SLB return and shadow price ---
    r_s    = r - p_s;                     // SLB rate = nominal rate - spread
    rrs    = r_s / pi;                    // SLB real return
    phiS   = 1 - beta_E * rrs;            // Shadow price on SLB borrowing

    %% --- SLB bond holdings (initial approximation) ---
    //b_s     = (0.08 / 0.92) * l;
    b_s    = mk * k / rr - mmu * y * theta1 * mu^theta2;    // SLB constraint
    chi_s  = (1 - beta_H * rrs) * lb_H * b_s^sigmaS;    // Utility weight on SLBs

    %% --- Recompute mu, emissions, and capital with phiS ---
    mu     = (tau * sig * y^(1 - varphi) / ((1 + phiS) * theta2 * theta1))^(1 / (theta2 - 1));
    e      = sig * (1 - mu) * y^(1 - varphi);      // Emissions
    varrho = mc - theta1 * mu^theta2 - tau * (1 - varphi) * sig * (1 - mu) * y^(-varphi) - phiS * mmu * theta1 * mu^theta2;    // Output multiplier

    k      = ((1 - phi_E) * alpha * varrho * y) / ( rr - (1 - phi_E) * (1 - delta) - phi_E * mk - phiS * ms * (rr / rrs) );
    i      = delta * k;
    A      = y / (k^alpha * h^(1 - alpha));
    w      = (1 - alpha) * varrho * y / h / (1 + mh * phi_E);
    l      = mk * k / rr - mh * w * h;

    %% --- Final consumption and marginal utilities ---
    c_E    = -i - w * h - theta1 * mu^theta2 * y - tau * e + mc * y + (1 - mc) * y + (1 - rr) * l + (1 - r_s / pi) * b_s;
    c      = (1 - gy) * y - i - theta1 * mu^theta2 * y;
    c_H    = c - c_E;

    lb_E   = (c_E - hh * c_E)^(-sigmaC);
    lb_H   = (c_H - hh * c_H)^(-sigmaC);

    %% --- Labor disutility calibration (from labor FOC) ---
    chi_l  = w * lb_H / h^sigmaL;

    %% --- Set observables and shocks to steady state (zero or one) ---
    gy_obs = 0; gc_obs = 0; gi_obs = 0;
    pi_obs = 0; r_obs = 0; l_obs = 0;

    e_a = 1; e_g = 1; e_c = 1; e_m = 1;
    e_i = 1; e_r = 1; e_t = 1; e_p = 1;
    e_s = 1; e_mmu = 1; e_ms = 1;

end;

%---------------------------------------------------------------
% 5. Steady State Check and Simulation
%---------------------------------------------------------------

% Print residuals of all equations (should be close to zero)
resid;

% Compute the steady state and check model consistency
steady;

% (Optional) Check eigenvalues for local stability
check;

%---------------------------------------------------------------
% 6. Shocks for Simulation
%---------------------------------------------------------------

shocks;
    var eta_a; stderr 1;      // Productivity shock
    var eta_m; stderr 1;      // Financial shock
    var eta_g; stderr 1;      // Government spending shock
    var eta_s; stderr 1;      // SLB preference shock
    var eta_mmu; stderr 1;    // SLB emission constraint shock
    var eta_ms; stderr 1;     // SLB capital constraint shock
end;

%---------------------------------------------------------------
% 7. Stochastic Simulation (Impulse Response Functions)
%---------------------------------------------------------------

% Simulate IRFs (30 periods, 1st-order approximation)
stoch_simul(order=1, irf=30)
    y c_H c_E i pi r q e phi_E b_s r_s mu l;
