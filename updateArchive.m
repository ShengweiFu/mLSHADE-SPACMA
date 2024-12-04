function archive = updateArchive(archive, pop, funvalue)
% Update the archive with input solutions
%   Step 1: Add new solution to the archive
%   Step 2: Remove duplicate elements
%   Step 3: If necessary, randomly remove some solutions to maintain the archive size
%
% Version: 1.1   Date: 2008/04/02
% Written by Jingqiao Zhang (jingqiao@gmail.com)

if archive.NP == 0, return; end

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

if size(pop, 1) ~= size(funvalue,1), error('check it'); end

% Method 2: Remove duplicate elements
popAll = [archive.pop; pop ];
funvalues = [archive.funvalues; funvalue ];
[dummy IX]= unique(popAll, 'rows');
if length(IX) < size(popAll, 1) % There exist some duplicate solutions
  popAll = popAll(IX, :);
  funvalues = funvalues(IX, :);
end

if size(popAll, 1) <= archive.NP   % add all new individuals
  archive.pop = popAll;
  archive.funvalues = funvalues;
else                % randomly remove some solutions
  % rndpos = randperm(size(popAll, 1)); % equivelent to "randperm";
  % rndpos = rndpos(1 : archive.NP);
  % 
  % archive.pop = popAll  (rndpos, :);
  % archive.funvalues = funvalues(rndpos, :);

[~, sortIdx] = sort(funvalues);

% Select the best NP solutions
bestIdx = sortIdx(1:archive.NP);

% Update archive
archive.pop = popAll(bestIdx, :);
archive.funvalues = funvalues(bestIdx, :);

end
end