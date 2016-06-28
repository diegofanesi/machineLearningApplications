function [I, Parallel] = findIntersection(S,Z)
    point1 = [(S(3)-S(2))/S(1); 1];
    point2 = [(Z(3)-2*Z(2))/Z(1); 2];
    vect = point2.-point1;
    if (strcmp(isOrthogonal(S(1:2),vect),"Orthogonal"))
    I = [];
    Parallel=2;
    elseif (strcmp(isParallel(S(1:2),Z(1:2)),"notParallel"))
    Parallel = 0;
    I = [(Z(2)*S(3)-S(2)*Z(3))/(S(1)*Z(2)-S(2)*Z(1)) (-Z(1)*S(3)+S(1)*Z(3))/(S(1)*Z(2)-S(2)*Z(1)) ];
    else
        Parallel=1;
        I = [];
    end
  
end
