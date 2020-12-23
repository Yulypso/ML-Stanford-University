function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2)); %size(X, 2) => nb columns
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

mu = mean(X); %matrice ligne des moyennes de X
sigma = std(X);%matrice ligne des ecart-types de X

for i = 1:size(X, 2) %nb of features 1 -> n (nb columns)
  X_numerator  = X(:, i) - mu(i); %on retire la moyenne pour toutes les lignes de la colonne i <=> toutes les données de la feature i
  X_norm(:, i) = X_numerator / sigma(i); %on divise par son ecart-type
end


% ============================================================

end
