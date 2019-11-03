a=1.7
b=-1.25
c=-0.3
x=2.5
k=3
y=-((abs(b-a))/(k*x))+10^4*(abs(cos(k*x))^1/5)+(((a*b*c)/2.4)^0.5)-((0.7*a*b*c)/(sin(7)))
vec = [a,b,c,x,k,y];
vec(3)=sum(vec)
vecSort=sort(vec);
newIndex = 0;
for i = 1:6
  for j = 1:6
    if vecSort(i) == vec(j)
      newIndex = newIndex + 1;
      vecIndex(newIndex) = j;
    end
  end
end
vecIndex