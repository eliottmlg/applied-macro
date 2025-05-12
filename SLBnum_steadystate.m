function [ys, params, check] = SLBnum_steadystate(ys,exo,M_,options_)

    % Initialize
    check = 0;

    % Access Dynare model structure
    global M_;
    ys = zeros(M_.endo_nbr, 1);
    var_list = M_.endo_names;

    %% === Parameters (already available from Dynare) ===
    % Assumes values for: beta_H, beta_E, gy, tau0, y0, piss, sig, varphi, 
    % theta1, theta2, epsilon, hh, sigmaC, sigmaL, delta, alpha, mk, mh, 
    % mmu, chi_s, sigmaS

    %% === Exogenous / Basic Definitions ===
    y     = y0;
    tau   = tau0;
    pi    = piss;
    rr    = 1 / beta_H;
    r     = rr * pi;
    g     = gy * y;
    phi_E = 1 - beta_E / beta_H;
    mc    = (epsilon - 1) / epsilon;

    %% === Initial Guesses ===
    mu      = 0.8;
    tol     = 1e-8;
    max_iter= 500;
    diff    = 1;
    iter    = 0;

    while diff > tol && iter < max_iter
        mu_old = mu;

        % Intermediate calculations
        e = sig * (1 - mu) * y^(1 - varphi);
        varrho = mc - theta1 * mu^theta2 - tau * (1 - varphi) * sig * (1 - mu) * y^(-varphi);

        % Capital block
        denom = (rr - phi_E * mk - (1 - beta_E * (1 / beta_H)) * ms) / (1 - phi_E) - (1 - delta);
        k = alpha * varrho * y / denom;
        A = y / (k^alpha * h^(1 - alpha));
        i = delta * k;

        % Labor and wage
        w = (1 - alpha) * varrho * y / h / (1 + mh * phi_E);
        l = mk * k / rr - mh * w * h;

        % b_s
        b_s = mk * k / rr - mmu * y * theta1 * mu^theta2;

        % Consumption blocks
        c = (1 - gy) * y - i - theta1 * mu^theta2 * y;
        c_E = -i - w * h - theta1 * mu^theta2 * y - tau * e + mc * y + (1 - mc) * y + (1 - rr) * l;
        c_H = c - c_E;

        % Utility weights
        lb_E = (c_E - hh * c_E)^(-sigmaC);
        lb_H = (c_H - hh * c_H)^(-sigmaC);

        % chi_l
        chi_l = w * lb_H / h^sigmaL;

        % rrs and phiS
        rrs = 1 / beta_H * (1 - (chi_s / lb_E) * (b_s / piss)^(-sigmaS));
        r_s = rrs * pi;
        phiS = 1 - beta_E * rrs;

        % Update mu
        mu = (tau * sig * y^(1 - varphi) / ((1 + phiS) * theta2 * theta1))^(1 / (theta2 - 1));

        % Convergence check
        diff = abs(mu - mu_old);
        iter = iter + 1;
    end

    if iter == max_iter
        check = 1;
        disp('Steady-state iteration did not converge.');
        return;
    end

    %% === Assign to ys vector ===
    assign('y', y);
    assign('tau', tau);
    assign('pi', pi);
    assign('rr', rr);
    assign('r', r);
    assign('g', g);
    assign('phi_E', phi_E);
    assign('mu', mu);
    assign('e', e);
    assign('mc', mc);
    assign('varrho', varrho);
    assign('k', k);
    assign('A', A);
    assign('i', i);
    assign('w', w);
    assign('l', l);
    assign('b_s', b_s);
    assign('c', c);
    assign('c_E', c_E);
    assign('c_H', c_H);
    assign('lb_E', lb_E);
    assign('lb_H', lb_H);
    assign('chi_l', chi_l);
    assign('rrs', rrs);
    assign('r_s', r_s);
    assign('phiS', phiS);
    
        %% === Local assignment helper ===
    function assign(name, val)
        ys(strcmp(var_list, name)) = val;
    end

end
