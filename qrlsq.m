% QR least-squares solution
% for an overdetermined system, finds x for which (QR)x most closely approximates b
% as well as d between (QR)x and b

function [x, d1] = qrlsq(Q, R, b)

    X = rref([R (Q'*b)])
    [~, n] = size(b)
    [~, q] = size(X)
    x = X(:, (q - n + 1):q)

    A = Q*R
    P = A*((A'*A)^(-1))*A'

    p1 = A*x
    p2 = P*b

    d1 = norm(b - p1)
    d2 = norm(b - p2)

end
