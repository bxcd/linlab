function [D] = onspan(v, W) 

  format long

  [m, n] = size(W);
  U = zeros(m, n);
  C = zeros(1, n);

  % proj v unto w
  for i = (1 : n)
      U(:, i) = W(:, i)/(norm(W(:, i)));
      C(:, i) = U(:,i)'*v;
  end

  p1 = U*C';
  p2 = U*U'*v;

  % norm of residual = distance
  d1 = norm(v - p1);
  d2 = norm(v - p2);
    
end