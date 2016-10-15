function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.



% Add ones to the X data matrix
 X = [ones(m, 1) X];
 Z2 = Theta1 * X'; % Theta1 = 25x(n+1), X = mx(n+1) => so Z2 = 25xm
 a2 = sigmoid(Z2);
 a2 = [ones(1, m); a2]; % 26 x m
 
 Z3 = Theta2 * a2; % Theta2 = k x 26 , a2 = 26 x m => Z3 = k x m
 
 htheta = sigmoid(Z3); %htheta k x m
 
  [Y ,I] = max(htheta); % index of max in eaach column
  p = I';
 
 
 
 


% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%









% =========================================================================


end