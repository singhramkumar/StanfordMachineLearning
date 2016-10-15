function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
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
%J = J + lambda * (sum(theta.^2))/(2 * m); % add regularization term

     calc = (sigmoid(X*theta)- y); 
    % calc = m x 1 as X = mxn  and theta = nx1
    % so take transpose in next step 
	grad = (X' * calc)/m; % or    grad = ((calc'*X)/m)';
    grad(2:n) = grad(2:n) + (lambda * theta(2:n))/m ;% add regularization term and not regularize theta(1)
    %tempThetaOne = grad(1);
    %grad = grad + (lambda * theta)/m ;% addregularization term
    %grad(1) = tempThetaOne; % should not regularize theta(1)


% =============================================================

end
