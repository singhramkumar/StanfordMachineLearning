function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

posIndex = find(y==1);
negIndex = find(y==0);

x1posData = X(posIndex, 1);
x2posData = X(posIndex, 2);

x1negData = X(negIndex, 1);
x2negData = X(negIndex, 2);

plot(x1posData, x2posData, 'k+','LineWidth', 2,'MarkerSize', 7);
plot(x1negData,x2negData,'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);








% =========================================================================



hold off;

end
