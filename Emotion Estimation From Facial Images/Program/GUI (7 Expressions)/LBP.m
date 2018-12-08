function [Matrix,No_Of_Images] = LBP(CS,Path,Expression,Extract)
waitbar1 = waitbar(0,Expression,'Name',Extract); %% WaitBar
Images = imageSet(Path);
No_Of_Images=Images.Count;
Matrix = [];
for i = 1:Images.Count

    LBPFeature= extractLBPFeatures(read(Images,i),'CellSize',[CS CS]);

Matrix = [Matrix;LBPFeature];
waitbar(i / Images.Count)%% WaitBar
end
close(waitbar1)%% WaitBar 
end