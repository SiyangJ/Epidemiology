function [dS,dE,dA,dI,dR] = SEAIR(S,E,A,I,R)

global beta mu_I mu_A mu_E delta p

dS = -beta * S * (delta * A + I);
dE = beta * S * (delta * A + I) - mu_E * E;
dI = p * mu_E * E - mu_I * I;
dA = (1-p) * mu_E * E - mu_A * A;
dR = mu_A * A + mu_I * I;

end