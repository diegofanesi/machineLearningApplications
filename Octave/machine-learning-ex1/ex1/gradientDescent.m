function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
[X_norm,mu,sigma]=featureNormalize(X(:,2));
[y_norm,mu,sigma]=featureNormalize(y);
X_norm=X;%[X(:,1),X_norm];
y_norm=y;
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

temp=zeros(2,1);
%a=theta(1)+(alpha*sum((y_norm-(theta(1)*X_norm)).*X_norm))
%theta(2)+(alpha*sum((y_norm-(theta'.*[ones(97,1),X_norm])).*X_norm))



temp(1)= theta(1)-((alpha/m)*sum(X_norm*theta-y_norm));
temp(2)= theta(2)-((alpha/m)*sum(X_norm(:,2).*(X_norm*theta-y_norm)));
theta=temp;

    % ============================================================

    % Save the cost J in every iteration   
   computeCost(X_norm, y_norm, theta)
    J_history(iter) = computeCost(X_norm, y_norm, theta);

end



end
