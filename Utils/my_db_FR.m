% Collect data, transform, and map to model

clear all
close all
clc
%%
[output_table,~,T] = call_dbnomics( ...
    'ECB/MNA/Q.Y.FR.W2.S1.S1.B.B1GQ._Z._Z._Z.EUR.V.N', ...
    'ECB/MNA/Q.Y.FR.W0.S1M.S1.D.P31._Z._Z._T.EUR.V.N', ...
    'ECB/MNA/Q.Y.FR.W0.S1.S1.D.P51G.N11G._T._Z.EUR.V.N', ...
    'ECB/MNA/Q.Y.FR.W2.S1.S1.B.B1GQ._Z._Z._Z.IX.D.N', ...
    'ECB/FM/Q.U2.EUR.RT.MM.EURIBOR3MD_.HSTA');
[output_table2,~,T2] = call_dbnomics('ECB/BSI/M.FR.Y.A.A20T.A.1.U2.2240.Z01.E');
% [output_table3,~,T3] = call_dbnomics('Eurostat/env_ac_aigg_q/Q.GHG.TOTAL_HH.THS_T.FR');

% In order:

% GDP, Calendar and seasonally adjusted data, Current prices = first diff
% consumption, Calendar and seasonally adjusted data = first diff
% investment, quarterly, SA-WDA = FD
% deflator, SA
% interest rate, Euribor 3-month

% loans, Working day and seasonally adjusted, stocks, monthly = use only last quarter's month + take first diff 

% emissions, in tonnes, quarterly = needs to be Seasonally adjusted , maybe FD
output_table3 = output_table2;
T3 = T2;

% select non NaN ids
idx			= find(~isnan(sum(output_table(:,2:end),2)));
idx2 			= find(~isnan(sum(output_table2(:,2:end),2)));
idx3 			= find(~isnan(sum(output_table3(:,2:end),2)));

output_table 	= output_table(idx,:);
output_table2 	= output_table2(idx2,:);
output_table3 	= output_table3(idx3,:);

T				= T(idx);
T2				= T2(idx2);
T3				= T3(idx3);


% we normalize to one prices and in population for 2015
id2015 = find(T==2015);
def = output_table(:,5)/output_table(id2015,5);


%% taking in real growth rates per capita
gy_obs  = diff(log(output_table(:,2)./(def)));
gc_obs  = diff(log(output_table(:,3)./(def)));
gi_obs  = diff(log(output_table(:,4)./(def)));

% inflation rate
pi_obs  = diff(log(def));
% quarterly interest rate
r_obs	= output_table(2:end,6)/400;

T = T(2:end);

%% Loans: convert montly to quarterly

% date, keep first quarter as value date
T2 = T2(1:3:end);

% Define quarter value as value of each quarter's last month
output_table2 = output_table2(1:3:end,:);

% quarterly loan 
l_obs = diff(log(output_table2(:,2)));

%% Transform co2: correct for seacsonal adjustment using X13

% download because series not available anymore on DBNOMICS
T3 = T2(29:85);
output_table3 = output_table3(29:85,:);

data = readtable('Data/filtered_series.csv');
co2_season = output_table3(:,2);
output_table3(:,2) = table2array(data(:,2)); % replace with filtered series

% co2 emissions
co2_obs  = diff(log(output_table3(:,2)));

T3 = T3(2:end);

%% Align time series

%  check min date where we have obs
min(T);
min(T2);
Tmin = min(T3); % max minimum
% check max
max(T);
max(T2);
Tmax = max(T3); % min max

% cropping observation window 
Tl = (T >= Tmin); % remove one bc we take difference
Tu = ~(T > Tmax);
eff_idx = Tl & Tu;
eff_sample = T(eff_idx); % 56 obs

% same for other variables
Tl2 = (T2 >= Tmin); % remove one bc we take difference
Tu2 = ~(T2 > Tmax);
eff_idx2 = Tl2 & Tu2;

eff_idx3 = (T3 == T3);

dataset = [];
dataset(:,1) = eff_sample;
dataset(:,2) = gy_obs(eff_idx);
dataset(:,3) = gc_obs(eff_idx);
dataset(:,4) = gi_obs(eff_idx);
dataset(:,5) = pi_obs(eff_idx);
dataset(:,6) = r_obs(eff_idx);
dataset(:,7) = l_obs(eff_idx2);
dataset(:,8) = co2_obs(eff_idx3);

% crop all variables
gy_obs = gy_obs(eff_idx);
gc_obs = gc_obs(eff_idx);
gi_obs = gi_obs(eff_idx);
pi_obs = pi_obs(eff_idx);
r_obs= r_obs(eff_idx);
l_obs= l_obs(eff_idx2);
co2_obs = co2_obs(eff_idx3);

%% SAVE
% save into myobs.mat
save myobs gy_obs gc_obs gi_obs pi_obs r_obs l_obs co2_obs

colNames = {'eff_sample', 'gy_obs', 'gc_obs', 'gi_obs', 'pi_obs', 'r_obs', 'l_obs', 'co2_obs'};
sTable = array2table(dataset,'VariableNames',colNames);

filename = 'myobs.xlsx';
writetable(sTable,filename,'Sheet',1,'Range','A1')

%% Plot

T = dataset(:,1); 
gy_obs = dataset(:,2);
gc_obs = dataset(:,3);
gi_obs = dataset(:,4);
pi_obs = dataset(:,5);
r_obs = dataset(:,6);
l_obs = dataset(:,7);
co2_obs = dataset(:,8);

figure;
subplot(2,2,1)
plot(T,gy_obs)
xlim([min(T) max(T)]);
title('output growth')
subplot(2,2,2)
plot(T,gc_obs)
xlim([min(T) max(T)]);
title('consumption growth')
subplot(2,2,3)
plot(T,gi_obs)
xlim([min(T) max(T)]);
title('investment growth')
subplot(2,2,4)
plot(T,pi_obs)
xlim([min(T) max(T)]);
title('inflation rate')


figure;
subplot(2,2,1)
plot(T,r_obs)
xlim([min(T) max(T)]);
title('Euribor 3-month')
subplot(2,2,2)
plot(T,l_obs)
xlim([min(T) max(T)]);
title('corporate loan growth')
subplot(2,2,3)
plot(T,co2_obs)
xlim([min(T) max(T)]);
title('CO2 emission growth')
