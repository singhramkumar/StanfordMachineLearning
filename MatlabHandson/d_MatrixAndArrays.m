A = [1,2,3;4,5,6;7,8,9; 10,11,12]

%array creating fucntions
% rand, ones, eye, randi,randn,zeros, toeplitz
%vander, diag, magic, hilb

rand(3,2)
eye(4)
zeros(3,2)
vRandi = randi(5, 3,2)
vRandi1 = randi([0,5], 3,2)
randn(3,2)
diag([1,2,3,4])

%Accessing element of array
A
A(3,2)
A([2,3],2)
A(2:4,2)
A(:,2)


% Array size and length
len = length(A) % max of col number or row number
sz = size(A)
tst = A(1,:)
length(tst)
size(tst)

% concatenating array : Horizontal by , and vertical by ;

B = A;

C = [A, B] % both should have same number of row
D = [A; B] % both should have same number of col

% Matrix Multiplication

E = A*B'


