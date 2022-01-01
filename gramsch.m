function[U] = gramsch(V)
    
    [m, n] = size(V);
    
    U = zeros(m,n);
    P = zeros(m,0);
    
    for i = (1 : n)
        [~, b] = size(P); 
        u = zeros(m, 1);
        p = zeros(m, 1);
        for j = (0 : b)
            if j > 0
                p = (p + (V(:, i)' * U(:, j)) * U(:, j));
            end
        end
        u = (V(:, i) - p)/norm(V(:, i) - p);
        U(:, i) = u;
        P(:, i) = p;
        disp(P)
    end
end