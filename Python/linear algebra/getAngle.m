function angle = getAngle(V,W)
  angle = acos(Product(V,W)/(Magnitude(V)*Magnitude(W)));
end