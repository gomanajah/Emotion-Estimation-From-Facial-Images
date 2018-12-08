function [Matrix,No_Of_Images] = HOG(CS,Path,Expression,Extract)
waitbar1 = waitbar(0,Expression,'Name',Extract); %% WaitBar
Images = imageSet(Path);
No_Of_Images=Images.Count;
Matrix = [];
for i = 1:Images.Count
    
[hogFeature, visualization]=extractHOGFeatures(read(Images,i),'CellSize',[CS CS]);
    
Matrix = [Matrix;hogFeature];
waitbar(i / Images.Count)%% WaitBar
end
close(waitbar1)%% WaitBar 
end