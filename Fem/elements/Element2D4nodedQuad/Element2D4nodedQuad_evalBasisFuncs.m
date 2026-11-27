
function [shp, jac] = Element2D4nodedQuad_evalBasisFuncs(xi, xl, shp)

jac = 0;

shp(1)  = 0.25 * (1 - xi(1)) * (1 - xi(2));
shp(4)  = 0.25 * (1 + xi(1)) * (1 - xi(2));
shp(7)  = 0.25 * (1 + xi(1)) * (1 + xi(2));
shp(10) = 0.25 * (1 - xi(1)) * (1 + xi(2));


dshp(1) = -0.25 * (1 - xi(2));
dshp(2) = -0.25 * (1 - xi(1));
dshp(3) =  0.25 * (1 - xi(2));
dshp(4) = -0.25 * (1 + xi(1));
dshp(5) =  0.25 * (1 + xi(2));
dshp(6) =  0.25 * (1 + xi(1));
dshp(7) = -0.25 * (1 + xi(2));
dshp(8) =  0.25 * (1 - xi(1));

[shp, jac] = computeShapeFunc2DAux(shp, jac, dshp, xl, 4);

end