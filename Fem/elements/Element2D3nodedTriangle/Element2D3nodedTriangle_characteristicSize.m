
function h = Element2D3nodedTriangle_characteristicSize(xl)

area = 0.5 * abs(xl(1)*(xl(4) - xl(6)) + xl(3)*(xl(6) - xl(2)) + xl(5)*(xl(2) - xl(4)));

h = sqrt(area);

end