% least-squares solution
% for an overdetermined system, finds x for which Ax most closely approximates b
% as well as d between Ax and b

function [x, d1] = lsq(A, b)

    P = A*((A'*A)^(-1))*A';
    x = ((A'*A)^(-1))*A'*b;

    p1 = A*x;
    p2 = P*b;

    d1 = norm(b - p1);
    d2 = norm(b - p2);

end
