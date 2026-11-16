
function [xi, wgp] = getPoints2DTriangle2(ngp)

    if(ngp == 3)

            xi = [0, 0,...
                  1, 0,...
                  0, 1];

           wgp = [1/3, 1/3, 1/3];
    else

    error("GaussQuadrature::getPoints2DTriangle2: invalid ngp!")

    end

end