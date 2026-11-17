
function [shp, jac] = Element2D3nodedTriangle_evalBasisFuncs(xi, xl, shp)

  x1 = xl(1);
  x2 = xl(3);
  x3 = xl(5);

  y1 = xl(2);
  y2 = xl(4);
  y3 = xl(6);
 
  xsj  = x1*(y2-y3) + x2*(y3-y1) + x3*(y1-y2);
  xsjr = 1. / xsj;
  xsj  = 0.5 * xsj;

  shp(1) = 1. - xi(1) - xi(2);
  shp(2) = (y2-y3) * xsjr;
  shp(3) = (x3-x2) * xsjr;

  shp(4) = xi(1);
  shp(5) = (y3-y1)*xsjr;
  shp(6) = (x1-x3)*xsjr;

  shp(7) = xi(2);
  shp(8) = (y1-y2)*xsjr;
  shp(9) = (x2-x1)*xsjr;

  jac = xsj;

end