function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
% Add intercept term to X with X = [ones(m, 1) X]; ===> see ex1_multi.m

nb_features = size(X, 2);

    for iter = 1:num_iters

        % ====================== YOUR CODE HERE ======================
        % Instructions: Perform a single gradient step on the parameter vector
        %               theta. 
        %
        % Hint: While debugging, it can be useful to print out the values
        %       of the cost function (computeCostMulti) and gradient here.
        %

        h = X*theta; %update each iter the hypothesis with the updated theta

        for i = 1:nb_features
            theta(i) = theta(i) - alpha * (1/m) * sum((h - y) .* X(:, i));
        end


        % ============================================================

        % Save the cost J in every iteration    
        J_history(iter) = computeCostMulti(X, y, theta);

    end

end
