% distance to span
% computes distance from v to plane spanned by columns of W

function d1 = spand(v, W)

  [m, n] = size(W);
  U = zeros(m, n);
  C = zeros(1, n);

  for i = (1 : n)
      U(:, i) = W(:, i) / (norm(W(:, i)));
      C(:, i) = U(:, i)' * v;
  end

  p1 = U*C';
  p2 = U*U'*v;

  d1 = norm(v - p1);
  d2 = norm(v - p2);

end
