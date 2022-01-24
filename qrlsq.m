% QR least-squares solution
% finds d for {Q, R} obtained from QR factorization of Ax = b

function x = qrlsq(Q, R, b)

    x = rref([R (Q'*b)]);

end
