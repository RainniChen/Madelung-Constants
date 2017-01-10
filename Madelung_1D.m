%% 1D Chain Madelung Constant
endpoint = 100;

madelung = 0;

for j = -endpoint:endpoint
    if j ~= 0
        p_ij = abs(j);
        madelung = madelung + (-1)^(j+1)/p_ij;
    end
end

madelung