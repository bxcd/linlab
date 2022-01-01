function [D] = onspan(v, W) 

    [m, n] = size(W);
    U = zeros(m, n);
    
    % proj v unto w
    for i = (1 : v)
        U(:, i) = W(:, i)/(norm(W(:, i)));
    end
    
%    convert the rest
%    c1 = u1'*v;
%    c2 = u2'*v;
%    c3 = u3'*v;
%    p1 = c1*u1 + c2*u2 +c3*u3;
%    p2 = U*U'*v;
   
%    d1 = norm(v - p1);
%    d2 = norm(v - p2);
    

end