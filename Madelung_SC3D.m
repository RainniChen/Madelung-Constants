endpoint = 100;

madelung = 0;

for i = -endpoint:endpoint
    for j = -endpoint:endpoint
        for k = -endpoint:endpoint
            pij = sqrt(i^2+j^2+k^2);
            n = i+j+k;
            
            if mod(n,2) == 0
                n = 1;
            else
                n = 2;
            end
            
            if pij ~= 0
                madelung = madelung + ((-1)^n/pij);
            end
        end
    end
end

madelung