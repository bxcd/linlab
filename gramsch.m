function[Q] = gramsch(V)

  V = [v1 v2 v3]

  [m, n] = size(V)

  Q = zeros(m,n)
  R = zeros(m,n)
  P = zeros(m,0)

  for i = (1 : n)
    [~, b] = size(P)
    q = zeros(m, 1)
    r = zeros(m, 1)
    p = zeros(m, 1)
    for j = (0 : b)
        if j > 0
            R(j, i) = (V(:, i)' * Q(:, j))
            p = (p + (R(j, i) * Q(:, j)))
        end
    end
    P(:, i) = p
    R(i, i) = norm(V(:, i) - p)
    q = (V(:, i) - p)/R(i, i)
    Q(:, i) = q
  end
end
