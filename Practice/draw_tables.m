function [] = draw_tables(var_names,M_,T,xlimval,varargin)
%DRAW_TABLES Summary of this function goes here
%   Detailed explanation goes here
n = size(var_names,2);
nv = length(varargin);

ny = ceil(sqrt(n));
nx = ceil(n/ny);
figure;
for ix = 1:n
    subplot(nx,ny,ix)
    hold on;
    idy = strmatch(var_names{ix},M_.endo_names,'exact');
    if isempty(idy); error(['Variable ' var_names{ix} ' does not exist.']); end;
    for iy = 1:nv
       themat = varargin{iy};
       plot(T,themat(idy,:),'linewidth',1)
    end
    title(M_.endo_names_tex{idy})
    grid on;
    hold off;
    if ~isempty(xlimval)
        xlim(xlimval)
    end
end
end

