

%% Setting up Dynare
clc % clean console
close all  % close all figures
clear all   % clear all variables

% user options 
options.model_path = '/Users/jakob/Documents/Parforceleistung/Studium/MSc Economics/Semester 4/Applied Macro Modelling/Project/applied-macro';
options.modfile = 'credit_NK.mod';
% change your Dynare path
options.Dynare_path = '/Applications/Dynare/6.2-x86_64';
%% options.Dynare_path = 'C:\Users\eliot\OneDrive\Documents\Desktop\ECB\ENSAE REPORT FOLDER\Dynare_Versions\dynare-5.4';

options.folder2plot = '/Users/jakob/Documents/Parforceleistung/Studium/MSc Economics/Semester 4/Applied Macro Modelling/Project/applied-macro/Plots';   % Your destination folder

% set path
addpath([options.Dynare_path,'/matlab/']); 
dynare_config;
addpath([options.model_path,'/']); 


%% Fetching and processing the estimation data
my_db_FR;

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