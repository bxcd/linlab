% distance to span
% computes distance of v to plane spanned by {w1, w2, w3}

function d1 = spand3(v, w1, w2, w3)

    u1 = w1 / (norm(w1));
    u2 = w2 / (norm(w2));
    u3 = w3 / (norm(w3));
    U = [u1 u2 u3];
    c1 = u1'*v;
    c2 = u2'*v;
    c3 = u3'*v;
    p1 = c1*u1 + c2*u2 + c3*u3;
    p2 = U*U'*v;

    d1 = norm(v - p1);
    d2 = norm(v - p2);

end
