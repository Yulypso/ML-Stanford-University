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

%compute cost function
hypothesis = sigmoid(X*theta);

%penalty calculation
%need to exclude the first theta value by setting 0 on the first value of the vector
% ; denotes a column vectors here
% then we add all the theta vector from position 2 to n 
theta_0excluded = [0; theta(2:size(theta), :)];

%matrix version, replaces sum versions
%with vector/matrix transpositions and matrix multiplications

%penalty term
p = lambda*(theta_0excluded'*theta_0excluded)/(2*m);

%cost term
% y' : y transpose
J = (1/m)*((-y)'*log(hypothesis) - (1-y)'*log(1-hypothesis)) + p;


%gradient calculation
grad = (1/m)*((X'*(hypothesis - y)) + lambda*theta_0excluded); %theta_0excluded is a column vector

% =============================================================

end
