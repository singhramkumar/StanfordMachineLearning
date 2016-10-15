function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

n = size(grad);
J = - sum(y.*log(sigmoid(X*theta)) + (1-y).*log(1 - sigmoid(X*theta)))/m;
J = J + lambda * (sum(theta(2:n).^2))/(2 * m); % add regularization term and not regularize theta(1)


    calc = (sigmoid(X*theta)- y); %see notes page 16 concept (c)
    % calc = m x 1 as X = mxn  and theta = nx1
    % so take transpose in next step 
	grad = (X' * calc)/m; % or    grad = ((calc'*X)/m)';
    grad(2:n) = grad(2:n) + (lambda * theta(2:n))/m ;% add regularization term and not regularize theta(1)
    
% Hint: The computation of the cost function and gradients can be
%       efficiently vectorized. For example, consider the computation
%
%           sigmoid(X * theta)
%
%       Each row of the resulting matrix will contain the value of the
%       prediction for that example. You can make use of this to vectorize
%       the cost function and gradient computations. 
%
% Hint: When computing the gradient of the regularized cost function, 
%       there're many possible vectorized solutions, but one solution
%       looks like:
%           grad = (unregularized gradient for logistic regression)
%           temp = theta; 
%           temp(1) = 0;   % because we don't add anything for j = 0  
%           grad = grad + YOUR_CODE_HERE (using the temp variable)
%










% =============================================================

grad = grad(:);

end
