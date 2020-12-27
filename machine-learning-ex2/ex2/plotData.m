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

plot(X(find(y==1), 1), X(find(y==1), 2), 'k+', 'LineWidth', 2, 'MarkerSize', 6); % Plot the data of admitted students
plot(X(find(y==0), 1), X(find(y==0), 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 6); % Plot the data of non admitted students
ylabel('Exam 2 score'); % Set the y−axis label 
xlabel('Exam 1 score'); % Set the x−axis label

%k+ => marker en forme de +
%ko => marker en forme de o
%MarkerFaceBolor & y permet de definir la couleur des points en jaune ici

%find(y==1) permet de trouver dans nos données toutes les données de classe = 1 => admitted
%X(data, 1) permet de récuperer uniquement la premiere colonne de la matrice X de taille Mx2 






% =========================================================================



hold off;

end
