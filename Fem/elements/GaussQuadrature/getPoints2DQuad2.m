
function [xi, wgp] = getPoints2DQuad2(ngp)

    if(ngp == 4)

            xi = [-1, -1, 1, -1, 1, 1, -1, 1];

           wgp = ones(1,ngp);
    else

    error("GaussQuadrature::getPoints2DQuad2: invalid ngp!")

    end

end