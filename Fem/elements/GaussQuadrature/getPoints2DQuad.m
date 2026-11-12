
function [xi, wgp] = getPoints2DQuad(ngp)

ngp1D = ceil(sqrt(ngp));

if (ngp1D*ngp1D > ngp) 
    error("GaussQuadrature::getPoints2DQuad: invalid ngp!");
end

[xi1D, wgp1D] = getPoints1D(ngp1D);

wgp = wgp1D' * wgp1D;
wgp = wgp(:)';

xi1 = repelem(xi1D,1,length(xi1D));
xi2 =  repmat(xi1D,1,length(xi1D));

xi = zeros(1, ngp + ngp);

xi(1:2:end-1) = xi1;
  xi(2:2:end) = xi2;

end
