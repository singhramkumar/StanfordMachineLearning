x= 10
y = 20

% calculate
z = mean([x,y])

%% section
a = 10
b = 15
a + b

% Logicla Operation
a > 10
a  > 3
a > 3 & a < 12
a==5
a ~= 5 % not equal to

% Conditional data selection
%lets select value greater than certain value

A = [1,2,3; 4,5,6; 7,8,9]
I = A > 3 & A < 8
r = A(I)
A(I) = A(I) + 100

A
% if else statement
A<5

% TODO : Understand the below result
if A < 5
    f = 1-A
else
    f = 2*A
end

% for loops

y(1) = 1;
for n = 1:6
   y(n+1) = y(n) - 0.1 *y(n) 
end

y
size(y)

%while loop
amount(1) = 1000;
r = 0.08;
p=1;

while amount(p) < 2000
    
    amount(p+1) = amount(p) * (r+1);
    p = p+1;
    
end
p


% using break
v;
i = 1;
while true
    v(1) = 999;
    i = i +1;
    if i==6
        break;
    else    
        v(i) = v(i-1) -1;
    end
end

v

%% custom function
mysqr(3)
[x,y] = mysqrcube(3)


