%% 3D Simple Cubic Madelung Constant Calculator
%
% Author: Rainni Chen
% Date: Oct 24 2016
%
% The madelung constant is defined as 
% $\alpha\equiv\sum_j'\frac{(\pm)}{p_{ij}}$ where $j$ indexes all other
% atoms and $p_{ij}$ is their separation divided by the lattice parameter.
% This program calculates the madelung constant for a simple cubic
% structure where the ith and (i+1)th set of nearest neighbors have equal
% but opposite charges.
%

% select size to probe; volume of cube is (2*endpoint)^3
endpoint = 100;

% initialize the variable containing the madelung constant
madelung = 0;

% iterate through all atoms
for i = -endpoint:endpoint
    for j = -endpoint:endpoint
        for k = -endpoint:endpoint
            
            % calculate the distance and its nearest neighbor index
            pij = sqrt(i^2+j^2+k^2);
            n = i+j+k;
            
            if mod(n,2) == 0
                n = 1;
            else
                n = 2;
            end
            
            % add contribution from each atom
            if pij ~= 0
                madelung = madelung + ((-1)^n/pij);
            end
        end
    end
end

% display the result
madelung