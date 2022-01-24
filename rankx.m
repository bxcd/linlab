% rank approximation
% computes rank-max approximation for an assumed S, U, V decomposition

function rankX = rankx(max, S, U, V)

    rankX = zeros(size(S));
    x = 1;

    while x <= max
        rankX = (rankX + S(x, x) * U(:, x) * V(:, x)');
        x = (x + 1);
    end

end
