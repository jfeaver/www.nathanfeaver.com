clear;
clc;

nPoints = 50;
outside=0;

for i = 1:50
    xy=rand(2,1);
    if (xy(1,1)^2+xy(2,1)^2)^0.5 > 1
        outside = outside + 1;
    end
end
inside = nPoints-outside;
piEst = 4*inside/nPoints;
fprintf('The estimate for pi, after %.0d points was %.3f\n',nPoints,piEst);