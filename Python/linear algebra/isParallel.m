function str = isParallel (V,W)
  a = V./W;
  b = W./V;
  if (a(1)==sum(a)/size(a,1) || b(1)==sum(b)/size(b,1))
    str="Parallel";
  else
    str="notParallel";
  end
end