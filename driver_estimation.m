

%% Setting up Dynare
clc % clean console
close all  % close all figures
clear all   % clear all variables

% user options 
options.model_path = 'C:\Users\eliot\Documents\REPOSITORIES\applied-macro/';
options.modfile = 'credit_NK';
% change your Dynare path
options.Dynare_path = 'C:\dynare\6.3';

options.folder2plot = 'C:\Users\eliot\Documents\REPOSITORIES\applied-macro\Plots/';   % Your destination folder

% set path
addpath([options.Dynare_path,'\matlab\']); 
dynare_config;
addpath([options.model_path,'\']); 

%% running mod-file and saving plots  

% run mod file
cd(options.model_path)
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