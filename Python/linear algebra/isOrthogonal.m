function str = isOrthogonal(V,W)
  if sqrt((V'*W)^2)<0.01
    str = "Orthogonal";
  else
    str = "notOrthogonal";
    porcodio =V'*W
  endif
endfunction