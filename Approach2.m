function Approach2()
indices = [6,5,4,3,2,1,1,2,3,4,5,6,6,5,4,3,2,1];

LeftTargets1 = randi(7)-1; #Random number between 1-6
remainingPortion = 9-LeftTargets1
minForBlock2 = remainingPortion - 6
if minForBlock2 < 0
	minForBlock2 = 0
end
maxForBlock2 = remainingPortion
if maxForBlock2 > 6
	maxForBlock2 = 6
end
randomRange = minForBlock2:1:maxForBlock2 # random number amongst numbers still needed
LeftTargets2 = randomRange(randi(length(randomRange)))
LeftTargets3 = 9 - (LeftTargets1 + LeftTargets2)
	
TargetCriteria1 = randperm(6); #Numbers 1-6 in random order
TargetCriteria2 = randperm(6); #Numbers 1-6 in random order
TargetCriteria3 = randperm(6); #Numbers 1-6 in random order

bottomImageSameAsTop = []
for i = 1:18
  if i < 7
    left_bottom_image_cutoff = LeftTargets1;  
    target_criteria = TargetCriteria1
  elseif i < 13
    left_bottom_image_cutoff = LeftTargets2
    target_criteria = TargetCriteria2    		
  else
    left_bottom_image_cutoff = LeftTargets3
    target_criteria = TargetCriteria3
  end
  
  if target_criteria(indices(i)) <= left_bottom_image_cutoff
    bottomImageSameAsTop = [bottomImageSameAsTop, ' left '] #left bottom is same as top image
  else
    bottomImageSameAsTop = [bottomImageSameAsTop, ' right '] #right bottom is same as top image
  end
end

disp(bottomImageSameAsTop)
end
