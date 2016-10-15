x = [2 5 9 6 8]
mean(x)
y = pi
%{ Matrix }%
a=[1 2 3; 4 5 6; 7 8 10;]

a + 10
sin(a)

a * a'
a * inv(a)

% per element
a.*3
a.^3

[a, a]
[a ; a]

%{ calculation}%
% Order of Operation
% 1. Parantheses
% 2. Exponents
% 3. Multiplication/Division
% 4. Addition/Substraction
%
b = 1.5
dt = .1
f = (cos(b + dt) - 2*cos(b) +  cos(b-dt))/ 2*dt


g = exp(-(b-dt)^2/2)
g = exp(-((b-dt)^2)/2)


%Mathematical Function
% sin cos tan
%ln(x)
%log10(x)
%log2(x)
%exp(x)
%sqrt(x)
%nthroot(x, n)
% here x can be a scalar of matrix
nthroot(x,3)



