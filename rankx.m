% rank approximation
% computes rank-x approximation for an assumed S, U, V decomposition

function rankX = rankx(x, S, U, V)

    rankX = zeros(size(S));
    i = 1;

    while i <= x
        rankX = (rankX + S(i, i) * U(:, i) * V(:, i)');
        i = (i + 1);
    end

end
