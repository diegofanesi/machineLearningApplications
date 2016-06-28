function [I, Parallel] = findIntersectionPlanes(S,Z)
    point1 = [(S(4)-S(3)-S(2))/S(1); 1; 1];
    point2 = [(Z(4)-2*Z(2)-S(3))/Z(1); 2; 1];
    if (!Z(1:3)'*point2==Z(4) || !S(1:3)'*point1==S(4))
      fprintf("Point calculation error!");
      endif
    
    vect = point2-point1;
    
    Snorm=S./S(4);
    Znorm=Z./Z(4);

    if (Snorm==Znorm)
    I = [];
    Parallel=2;
    elseif (strcmp(isPlaneParallel(S,Z),"notParallel"))
    Parallel = 0;
    I = [(Z(2)*S(3)-S(2)*Z(3))/(S(1)*Z(2)-S(2)*Z(1)) (-Z(1)*S(3)+S(1)*Z(3))/(S(1)*Z(2)-S(2)*Z(1)) ];
    else
        Parallel=1;
        I = [];
    end
  
end