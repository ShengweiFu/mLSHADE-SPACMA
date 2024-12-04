%  Source codes demo version 1.0 using matlab2023b 
% 
%  Author and programmer: Shengwei Fu  e-Mail: shengwei_fu@163.com 
%                                                                                                     
%  Paper : Modified LSHADE-SPACMA with new mutation strategy and external archive mechanism for numerical optimization and point cloud registration
% 
%  Journal : Artificial Intelligence Review
%
% If the code is useful to you, please cite our paper, thanks！
%_______________________________________________________________________________________________


function vi = boundConstraint (vi, pop, lb,ub)

% if the boundary constraint is violated, set the value to be the middle
% of the previous value and the bound
%
% Version: 1.1   Date: 11/20/2007
% Written by Jingqiao Zhang, jingqiao@gmail.com

[NP, D] = size(pop);  % the population size and the problem's dimension

%% check the lower bound
% xl = repmat(lb, NP, 1);
% pos = vi < xl;
% vi(pos) = (pop(pos) + xl(pos)) / 2;

for i = 1:NP
    for j = 1:D
        if vi(i,j) < lb
            vi(i,j) = (pop(i,j)+lb)/2;
        end
    end
end

%% check the upper bound
% xu = repmat(ub, NP, 1);
% pos = vi > xu;
% vi(pos) = (pop(pos) + xu(pos)) / 2;

for i = 1:NP
    for j = 1:D
        if vi(i,j) > ub
            vi(i,j) = (pop(i,j)+ub)/2;
        end
    end
end
end