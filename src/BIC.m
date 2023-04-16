function p = BIC(k,n,L)
%BIC Bayesian information criterion function 
%   Bayesian information criterion asses fit of a model: model
%   likelihood (L), number of data points (n) and, number of model
%   parameters (k).
p = k * log(n) - 2 * log(L);
end