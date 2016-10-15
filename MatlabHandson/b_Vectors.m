vRow = [3, -2, 0.5, 7] % row vector
vCol = [3; -2; 0.5; 7] % column vector

x = vRow(4)
vRow(4) = 8
vCol(4)
1 + vRow
delta = vRow - x

%vector arithmentic
1 + 2*(vRow - x) + (vRow -x).^2 
1 + 2*(delta) + (delta).^2

%vector transpose
vRow' 

% sequence of uniformly spaced vector : colon operator
% firstValue :  spacing : lastValue
v = 2: 0.2 :3
v1 = 2: 0.2 :3.5
v2 = 2 : 10


% sequence of uniformly spaced vector : linspace function
% linspace(firstValue, lastValue,numberOfPoints)
linspace(3,5, 4)


