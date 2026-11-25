
function [xi, wgp] = Element2D3nodedTriangle_getGaussPoints(ngp, Flag)

if (exist('Flag','var') == 0); Flag = 1; end

    switch Flag 
    
        case 1
    
        [xi, wgp] = getPoints2DTriangle(ngp);
    
        case 2
    
        [xi, wgp] = getPoints2DTriangle2(ngp);
    
        otherwise
                error("Element2D3nodedTriangle::getGaussPoints: invalid parameters!")
    end

end