function sumRes = T2_star_IVIM(x, Avox, bvals,echo_time)
%T2_star_IVIM SSD T2*-IVIM model
%   Sum of squared differences of  T2*-IVIM model: model paramiters (x),
%   ground truth (Avox), acquisition parameter b-value (bvals) and, 
%   acquisition parameter echo times (echo_time).
S0 = x(1);
D = x(2);
T2_star = x(3);
D_p = x(4);
f = x(5);

S = S0 * exp(-echo_time/T2_star) .* (f * exp(-bvals * D_p) + (1-f) * exp(-bvals * D));

sumRes = sum((Avox - S).^2);
end