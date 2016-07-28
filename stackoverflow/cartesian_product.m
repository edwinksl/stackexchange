% Code for http://stackoverflow.com/a/38637302/486919

clear
close all
clc

A = [1 0 1;
     0 0 1;
     1 1 0;
     0 0 1];

[row,col] = find(A);
[~,ia,~] = unique(col);
n_cols = size(A,2);
indices = cell(n_cols,1);

for ii = 1:n_cols-1
  indices{ii} = row(ia(ii):ia(ii+1)-1);
end
indices{end} = row(ia(end):end);

cp_temp = cell(n_cols,1);
[cp_temp{:}] = ndgrid(indices{:});

cp = NaN(numel(cp_temp{1}),n_cols);
for ii = 1:n_cols
  cp(:,ii) = cp_temp{ii}(:);
end
cp = sortrows(cp);
cp
