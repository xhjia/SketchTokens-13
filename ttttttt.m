cd(fileparts(mfilename('fullpath')))
addpath(genpath(pwd))
A = [2, -4;-1,-1];
AMean = mean(A);
AStd = std(A);


B = (A - repmat(AMean,[2 1])) ./ repmat(AStd,[2 1]);
[V D] = eig(cov(B))
[U s V] =svd(cov(B));
[u mu vars] =pca(cov(B))
disp(c)
disp('bye bye')