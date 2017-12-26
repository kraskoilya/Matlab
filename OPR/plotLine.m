function plotLine(V,Y)
%PLOTPOINT Summary of this function goes here
%   Detailed explanation goes here'
m = 1;
for i=1:length(Y)
    if ( (Y(i)<=Y(1))&&( Y(i)<=Y(2) )&&( Y(i)<=Y(3))) 
      m = i;
      break;
    end
end

scatter(V(m,1),V(m,2))