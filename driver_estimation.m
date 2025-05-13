
addpath('Utils');
addpath('Data');

%% Fetching and processing the estimation data
run( 'my_db_FR.m' );

%% Setting up Dynare
clc % clean console
close all  % close all figures
clear all   % clear all variables

% change your Dynare path
options.Dynare_path = '/Applications/Dynare/6.2-x86_64';

%% Launch routine

% user options 
options.modfile = 'credit_NK_SLB';
options.folder2plot = 'Plots/';   % Your destination folder

% set path
addpath([options.Dynare_path,'\matlab\']); 
dynare_config;

%% running mod-file and saving plots  

% run mod file
dynare(options.modfile)

%% plots

FigList = findobj(allchild(0), 'flat', 'Type', 'figure');
for     iFig = 1:length(FigList)   
  FigHandle = FigList(iFig);
  FigName   = get(FigHandle, 'Name');
  FigName   = erase(FigName,[".", ":"]);
  set(FigHandle,'Position',[300 100 800 800]);
  savefig(FigHandle, [options.folder2plot, FigName, '-', num2str(iFig)]);
  saveas(FigHandle, [options.folder2plot, FigName, '-', num2str(iFig), '.jpg']);
end