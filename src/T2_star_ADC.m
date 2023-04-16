function sumRes = T2_star_ADC(x,Avox,bvals,echo_time)
%T2_star_ADC SSD T2*-ADC model
%   Sum of squared differences of  T2*-ADC model: model paramiters (x),
%   ground truth (Avox), acquisition parameter b-value (bvals) and, 
%   acquisition parameter echo times (echo_time).
S0 = x(1);
D = x(2);
T2_star = x(3);
S = S0 * exp(-echo_time/T2_star) .* exp(-bvals * D);
sumRes = sum((Avox - S).^2);
end

