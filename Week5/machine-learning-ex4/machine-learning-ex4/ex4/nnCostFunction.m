function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m

  a1 = [ones(m, 1) X]; % m X (n+1)
  a2 = [ones(m, 1) sigmoid(a1 * Theta1')]; %Theta1 25 x (n+1) so a2 = m x 26
  h = sigmoid(a2 * Theta2'); % theta2 = k x 26 so h = m x k
 
  
 % Constructing a vector of result ex: for 5 of 10 the 1 should be at 
 % fifth position [0 0 0 0 1 0 0 0 0 0] where rows are training set samples
 % yVec = repmat([1:num_labels], m, 1) == repmat(y, 1, num_labels);
 %or
 yVec = zeros(size(h));
 temp = [1:num_labels];

 for i = 1:m
     temp1 = temp;
     for j = 1:num_labels
         if(temp1(j)== y(i))
             temp1(j) =1;
         else
             temp1(j) =0;
         end
     end
     yVec(i,:) = temp1;
 end
 
 cost = -yVec .* log(h) - (1 - yVec) .* log(1 - h);
 
 J = (1 / m) * sum(sum(cost));
 
 
 % regularized
 Theta1reg = Theta1(:, 2:size(Theta1,2)); % Theta1(:, 2:end)
 Theta2reg = Theta2(:, 2:size(Theta2,2));
 
 J = J + (lambda/(2*m))*(sum(sum(Theta1reg .^2)) + sum(sum(Theta2reg .^2)));
 
%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.

for i = 1:m
   xi1 = X(i,:);
   ai1 = [1; xi1']; % (n+1) x 1
   
   zi2 = Theta1*ai1; %Theta1 25 x (n+1)so zi2 = 25 x 1
   ai2 = [1;sigmoid(zi2)]; %Theta1 25 x (n+1)so ai2 = 26 x 1
   
   hi = sigmoid(Theta2*ai2); % theta2 = k x 26 so h = k x 1
   
   yi = yVec(i,:)';
   
   d3 = hi - yi; % k x 1
   Theta2_grad =  Theta2_grad + d3 * ai2';
   
   d2 = (Theta2(:,2:end)'*d3).* sigmoidGradient(zi2); % 25 x 1
   Theta1_grad = Theta1_grad + d2 * ai1';
   %or
   % d2 = (Theta2'*d3).* sigmoidGradient([1;zi2]); % 26 x 1
   % Theta1_grad = Theta1_grad + d2(2:end) * ai1'; 
  
    
   
   
end

Theta2_grad = Theta2_grad/m;
Theta1_grad =  Theta1_grad/m;

%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%

Theta1_grad(:, 2:end) = Theta1_grad(:, 2:end)+(lambda/m)*(Theta1(:,2:end));
Theta2_grad(:, 2:end) = Theta2_grad(:, 2:end)+(lambda/m)*(Theta2(:,2:end));




















% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
