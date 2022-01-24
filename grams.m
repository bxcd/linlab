% gram-schmidt process
% transforms m x n ordinary basis from columns of V into m x n orthonormal basis
% columns of Q are orthonormal vectors
% R is n x n upper triangular

function [Q, R] = grams(V)

  [m, n] = size(V);

  Q = zeros(m,n);
  R = zeros(m,n);
  P = zeros(m,0);

  for i = (1 : n)

    [~, b] = size(P);
    q = zeros(m, 1);
    p = zeros(m, 1);

    for j = (0 : b)
        if j > 0
            R(j, i) = (V(:, i)' * Q(:, j));
            p = (p + (R(j, i) * Q(:, j)));
        end
    end

    P(:, i) = p;
    R(i, i) = norm(V(:, i) - p);
    q = (V(:, i) - p) / R(i, i);
    Q(:, i) = q;

  end
end
