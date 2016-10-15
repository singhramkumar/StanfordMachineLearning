%computaion
A= [1 2; 3 4; 5 6]
B = [11 12 ; 13 14; 15 16]

C = A.*B
%element wise inverse

1./A
%absolute abs

abs([-1 -2 -3])

V = [1,2,3]
%transpose
A'

val = max(A) % in matrix it is column wise
[val, ind] = max(A)

val = max(V) % in matrix it is column wise
[val, ind] = max(V)

V<3

magic(3)

[r,c] = find(V > 2)
sum(A)
sum(V)

floor(A)
floor(V)

ceil(A)
ceil(V)

B = [6, 5; 4, 3 ; 2 , 1]

max(A, B)  % max is done element wise

max(A) % column wise
max(A, [], 1) % coulmn wise
max (A, [], 2) % row wise


A(:) % to vectore
max(max(A)) % max value in A
max(A(:)) %max value in A


R= magic(3)
sum(R,1) % columwise sume
sum(R,2) %row wise sum

R.*eye(3)
sum(sum(R.*eye(3))) % leading diagonal sum

flipud(eye(3))

R.*flipud(eye(3))
sum(sum(R.*flipud(eye(3)))) % other diagonal sum

%invers

pinv(R)
R*pinv(R)



