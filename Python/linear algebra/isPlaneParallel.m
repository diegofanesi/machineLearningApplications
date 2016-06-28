function str = isPlaneParallel (V,W)
  Vvect=V(1:3);
  Wvect=W(1:3);
  res1=Vvect./Wvect;
  res1=sqrt(res1.^2);

  
  if ((res1(1)==res1(2) && res1(2)==res1(3)) || (sqrt((res1(1)-res1(2))^2)<0.01 && sqrt((res1(2)-res1(3))^2)<0.01))
    str="Parallel";
  else
    str="notParallel";
  end
end