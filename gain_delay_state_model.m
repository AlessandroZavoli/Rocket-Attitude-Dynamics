
function sysMARGIN = gain_delay_state_model(tauDelay,gain)

if(1==0)  %------- padé order 1
    sysMARGIN = ss([-2/tauDelay],[4*gain/tauDelay],[1],[-1]);
    
else      %------- padé order 2
    a = [ 0                 1       ; 
        -12/tauDelay^2  -6/tauDelay];
    b = [ 0 ;
        (-12/tauDelay)*gain];
    c = [ 0  1 ];
    d = [1]*gain;
    sysMARGIN = ss(a,b,c,d);
end

    