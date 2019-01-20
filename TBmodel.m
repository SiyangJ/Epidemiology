% Initial susceptibles
S(1) = 60;
% Initial latency
E(1) = 60;

global beta mu_I mu_A mu_E delta p

% Transmission rate
beta = 3e-5;
% Duration of infectious period symptomatic
% Cannot recover automatically
mu_I = 0;
% Duration of infectious period symptomatic
% Cannot recover automatically
% If 
mu_A = -log(5/6);
% Latency period
mu_E = 1/1.25;
% Reduction of infectiveness for asymptomatic infections
delta = 0.7;
% Probability of developing symptoms
p = 0.5;
% Population size 100 000
N = 60;

R_0 = beta * S(1) * (p/mu_I + delta*(1-p)/mu_A);

