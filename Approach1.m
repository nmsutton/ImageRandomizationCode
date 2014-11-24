function Approach1()
indices = [9,8,7,6,5,4,3,2,1,1,2,3,4,5,6,7,8,9]
leftTargets1 = floor(rand(1)*9)+1; #Random number between 1-9
leftTargets2 = 9 - leftTargets1
targetCriteria1 = randperm(9); #Numbers 1-9 in random order
targetCriteria2 = randperm(9); #Numbers 1-9 in random order
bottomImageSameAsTop = []
for i = 1:18
  if i < 9
     left_bottom_image_cutoff = leftTargets1
     target_criteria =  targetCriteria1
  else
     left_bottom_image_cutoff = leftTargets2
     target_criteria =  targetCriteria2
  end
  
  if target_criteria(indices(i)) <= left_bottom_image_cutoff
    bottomImageSameAsTop = [bottomImageSameAsTop, ' left '] #left bottom is same as top image
  else
    bottomImageSameAsTop = [bottomImageSameAsTop, ' right '] #right bottom is same as top image
  end
end

disp(bottomImageSameAsTop)
end
