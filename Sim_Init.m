% This Script load LV data and calculate TVC dynamics


load('GreensiteLPV_Data.mat')
load('Controller.mat')
load('drywind.mat')
load('Qmax.mat')

% ------------------------------------------------------------------------
% --------------------------- TVC Dynamics TF ----------------------------
% ------------------------------------------------------------------------

tau_delay = 0.02;
sysMARGIN = gain_delay_state_model(tau_delay,1);
omega_TVC = 70;
zita_TVC = 0.7;
TVC_dyn =sysMARGIN*tf([omega_TVC^2],[1 2*zita_TVC*omega_TVC omega_TVC^2]);
