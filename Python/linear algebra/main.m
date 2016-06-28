pkg load nurbs;

A = [-0.221; 7.437 ];
B = [8.813; -1.331; -6.247 ];
C = [ 5.581; -2.136 ];
D = [ 1.996; 3.108; -4.554 ];

magA=Magnitude(A)
magB = Magnitude(B)
normC= Normalize(C)
normD = Normalize(D)

clear

A1 = [7.887; 4.138];
A2 = [-8.802; 6.776];
B1 = [-5.955; -4.904; -1.874];
B2 = [-4.496; -8.755; 7.103];
C1 = [3.183; -7.627];
C2 = [-2.668; 5.319];
D1 = [7.35; 0.221; 5.188];
D2 = [2.751; 8.259; 3.985];

res1 = Product(A1,A2)
res2 = Product(B1,B2)
res3 = getAngle(C1,C2)
res3 = rad2deg( getAngle(D1,D2))
clear

A1 = [-7.579; -7.88];
A2 = [22.737; 23.64];
B1 = [-2.029; 9.97; 4.172];
B2 = [-9.231; -6.639; -7.245];

Apar = isParallel(A1,A2)
Aort = isOrthogonal(A1,A2)
Bpar = isParallel(B1,B2)
Bort = isOrthogonal(B1,B2) 
isOrthogonal(B1,[0;0;0])
clear

A1 = [3.039; 1.879];
A2 = [0.825; 2.036];
B1 = [-9.88; -3.264; -8.159];
B2 = [-2.155; -9.353; -9.473];
C1 = [3.009; -6.172; 3.692; -2.51];
C2 = [6.404; -9.144; 2.759; 8.718];
clear

A1 = [4.046; 2.836; 1.21];
A2 = [10.115; 7.09; 3.025];
B1 = [7.204; 3.182; 8.68];
B2 = [8.172; 4.114; 9.883];
C1 = [1.182; 5.562; 6.744];
C2 = [1.773; 8.343; 9.525];
fprintf("\n");
fprintf("\n");
fprintf("\n");
fprintf("\n");

[I, par]=findIntersection(A1,A2);
I
par
[I, par]=findIntersection(B1,B2);
I
par
[I, par]=findIntersection(C1,C2);
I
par
clear
fprintf("\n");
fprintf("\n");
fprintf("####################################################");
fprintf("\n");
fprintf("\n");

A1 = [-0.412; 3.806; 0.728; -3.46];
A2 = [1.03; -9.515; -1.82; 8.65];
B1 = [2.611; 5.528; 0.283; 4.6];
B2 = [7.715; 8.306; 5.342; 3.76];
C1 = [-7.926; 8.625; -7.217;-7.952];
C2 = [-2.642; 2.875; -2.404; -2.443];

[I, par]=findIntersectionPlanes(A1,A2);
I
par
[I, par]=findIntersectionPlanes(B1,B2);

I
par
[I, par]=findIntersectionPlanes(C1,C2);

I
par
fprintf("\n");
fprintf("\n");
fprintf("####################################################");
fprintf("\n");
fprintf("\n");
isPlaneParallel(C1,C2)
