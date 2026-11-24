
function [shp, dv] = Element2D3nodedTriangle_getBasisFuncs(ndf, nen, xi, wgp, xl, shp)

[shp, dv] = Element2D3nodedTriangle_evalBasisFuncs(xi, xl, shp);

dv = dv * wgp;

end