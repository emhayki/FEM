
function [xi, wgp] = getPoints1D(ngp)

    switch ngp 
        case 1 
             xi = 0;
            wgp = 2;
        % ................ 
        case 2
             xi = [-1., 1.] * 1/sqrt(3);
            wgp = [ 1., 1.];
        % ................ 
        case 3
             xi = [-1, 0, 1] * sqrt(3/5);
            wgp = [5/9, 8/9, 5/9];
        % ................ 
        case 4
             xi = [- sqrt((3. + 2.*sqrt(6./5.))/7.), - sqrt((3. - 2.*sqrt(6./5.))/7.),...
                     sqrt((3. - 2.*sqrt(6./5.))/7.),   sqrt((3. + 2.*sqrt(6./5.))/7.)];
    
            wgp = [.5 - sqrt(30.)/36., .5 + sqrt(30.)/36.,...
                   .5 + sqrt(30.)/36., .5 - sqrt(30.)/36.];
        % ................   
        otherwise
            error("GaussQuadrature::getPoints1D: invalid ngp!")
    end

end