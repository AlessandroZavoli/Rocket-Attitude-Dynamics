# Rocket-Attitude-Dynamics
Attitude control of a rocket in atmosferic flight 

Numerical data
- GreensiteLPV_DATA.txt: LV model parameters
- Controller.txt: PD controller gain and LP filter data

MATLAB/Simulink LV Model
- Sim_Init.m : Load in MATLAB WorkSpace LV data for LV_Greensite.slx, that are:
    - GreensiteLPV_DATA.mat: timeseries of LV parameters
    - Controller.mat: PD controller gain and LP filter data
    - Drywind.mat: High altitude Dryden wind model parameters
    - Qmax.mat: Aerodynamics load safty envelope data
    - gain_delay_state_model.m: function to create delay padè approximantion transfer function 
- LV_Greensite.slx: Simulink model of Launch Vehicle features Baseline controller and wind disturbances

