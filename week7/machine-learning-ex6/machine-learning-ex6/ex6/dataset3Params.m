function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.


Cvec = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
SigmaVec = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];

C = Cvec(1);
sigma = SigmaVec(1);

leastPredictionError_C = C;
leastPredictionError_sigma = sigma

model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
predictions = svmPredict(model, Xval);

leastPredictionError = mean(double(predictions ~= yval));

for i=1:length(Cvec)    
    for j=1: length(SigmaVec)
        
    model= svmTrain(X, y, Cvec(i), @(x1, x2) gaussianKernel(x1, x2, SigmaVec(j)));
    predictions = svmPredict(model, Xval);
    predictionError = mean(double(predictions ~= yval));
    
        if (predictionError < leastPredictionError)
         leastPredictionError = predictionError;
         leastPredictionError_C = Cvec(i);
         leastPredictionError_sigma = SigmaVec(j);
        end
    end

end

C = leastPredictionError_C;
sigma = leastPredictionError_sigma;
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%



% =========================================================================

end
