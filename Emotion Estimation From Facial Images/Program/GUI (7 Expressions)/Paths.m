function [database_N,Train_Angry_Folder,Train_Disgusted_Folder,Train_Fear_Folder,Train_Happy_Folder,Train_Neutral_Folder,Train_Sad_Folder,Train_Surprised_Folder,Test_Angry_Folder,Test_Disgusted_Folder,Test_Fear_Folder,Test_Happy_Folder,Test_Neutral_Folder,Test_Sad_Folder,Test_Surprised_Folder] = Paths(P_NO)
% Put DB Full path Here:
DBPath = 'C:\Emotion Estimation From Facial Images\Databases\After Pre-Pocessing\4DBs (7 Expressions)\';
if P_NO == 1
%%  ************************ Read (jaffe) Folders *******************************
Train_Angry_Folder =          fullfile(DBPath, '\JAFFE\Train\Angry');
Train_Disgusted_Folder =      fullfile(DBPath, '\JAFFE\Train\Disgusted');
Train_Fear_Folder =           fullfile(DBPath, '\JAFFE\Train\Fear');
Train_Happy_Folder =          fullfile(DBPath, '\JAFFE\Train\Happy');
Train_Neutral_Folder =        fullfile(DBPath, '\JAFFE\Train\Neutral');
Train_Sad_Folder =            fullfile(DBPath, '\JAFFE\Train\Sad');
Train_Surprised_Folder =      fullfile(DBPath, '\JAFFE\Train\Surprised');
%  ***********************
Test_Angry_Folder =          fullfile(DBPath, '\JAFFE\Test\Angry');
Test_Disgusted_Folder =      fullfile(DBPath, '\JAFFE\Test\Disgusted');
Test_Fear_Folder =           fullfile(DBPath, '\JAFFE\Test\Fear');
Test_Happy_Folder =          fullfile(DBPath, '\JAFFE\Test\Happy');
Test_Neutral_Folder =        fullfile(DBPath, '\JAFFE\Test\Neutral');
Test_Sad_Folder =            fullfile(DBPath, '\JAFFE\Test\Sad');
Test_Surprised_Folder =      fullfile(DBPath, '\JAFFE\Test\Surprised');
database_N=1; % jaffe
elseif P_NO == 2 
%%  ************************ Read (KDEF) Folders *******************************
Train_Angry_Folder =          fullfile(DBPath, '\KDEF\Train\Angry');
Train_Disgusted_Folder =      fullfile(DBPath, '\KDEF\Train\Disgusted');
Train_Fear_Folder =           fullfile(DBPath, '\KDEF\Train\Fear');
Train_Happy_Folder =          fullfile(DBPath, '\KDEF\Train\Happy');
Train_Neutral_Folder =        fullfile(DBPath, '\KDEF\Train\Neutral');
Train_Sad_Folder =            fullfile(DBPath, '\KDEF\Train\Sad');
Train_Surprised_Folder =      fullfile(DBPath, '\KDEF\Train\Surprised');
%  ***********************
Test_Angry_Folder =          fullfile(DBPath, '\KDEF\Test\Angry');
Test_Disgusted_Folder =      fullfile(DBPath, '\KDEF\Test\Disgusted');
Test_Fear_Folder =           fullfile(DBPath, '\KDEF\Test\Fear');
Test_Happy_Folder =          fullfile(DBPath, '\KDEF\Test\Happy');
Test_Neutral_Folder =        fullfile(DBPath, '\KDEF\Test\Neutral');
Test_Sad_Folder =            fullfile(DBPath, '\KDEF\Test\Sad');
Test_Surprised_Folder =      fullfile(DBPath, '\KDEF\Test\Surprised');
database_N=2; %KDEF
elseif P_NO == 3
%%  ************************ Read (MUG) Folders *******************************
Train_Angry_Folder =          fullfile(DBPath, '\MUG\Train\Angry');
Train_Disgusted_Folder =      fullfile(DBPath, '\MUG\Train\Disgusted');
Train_Fear_Folder =           fullfile(DBPath, '\MUG\Train\Fear');
Train_Happy_Folder =          fullfile(DBPath, '\MUG\Train\Happy');
Train_Neutral_Folder =        fullfile(DBPath, '\MUG\Train\Neutral');
Train_Sad_Folder =            fullfile(DBPath, '\MUG\Train\Sad');
Train_Surprised_Folder =      fullfile(DBPath, '\MUG\Train\Surprised');
%  ***********************
Test_Angry_Folder =          fullfile(DBPath, '\MUG\Test\Angry');
Test_Disgusted_Folder =      fullfile(DBPath, '\MUG\Test\Disgusted');
Test_Fear_Folder =           fullfile(DBPath, '\MUG\Test\Fear');
Test_Happy_Folder =          fullfile(DBPath, '\MUG\Test\Happy');
Test_Neutral_Folder =        fullfile(DBPath, '\MUG\Test\Neutral');
Test_Sad_Folder =            fullfile(DBPath, '\MUG\Test\Sad');
Test_Surprised_Folder =      fullfile(DBPath, '\MUG\Test\Surprised');
database_N=3; % MUG
elseif P_NO == 4
%%  ************************ Read (WSEFEP) Folders *******************************
Train_Angry_Folder =          fullfile(DBPath, '\WSEFEP\Train\Angry');
Train_Disgusted_Folder =      fullfile(DBPath, '\WSEFEP\Train\Disgusted');
Train_Fear_Folder =           fullfile(DBPath, '\WSEFEP\Train\Fear');
Train_Happy_Folder =          fullfile(DBPath, '\WSEFEP\Train\Happy');
Train_Neutral_Folder =        fullfile(DBPath, '\WSEFEP\Train\Neutral');
Train_Sad_Folder =            fullfile(DBPath, '\WSEFEP\Train\Sad');
Train_Surprised_Folder =      fullfile(DBPath, '\WSEFEP\Train\Surprised');
%  ***********************
Test_Angry_Folder =          fullfile(DBPath, '\WSEFEP\Test\Angry');
Test_Disgusted_Folder =      fullfile(DBPath, '\WSEFEP\Test\Disgusted');
Test_Fear_Folder =           fullfile(DBPath, '\WSEFEP\Test\Fear');
Test_Happy_Folder =          fullfile(DBPath, '\WSEFEP\Test\Happy');
Test_Neutral_Folder =        fullfile(DBPath, '\WSEFEP\Test\Neutral');
Test_Sad_Folder =            fullfile(DBPath, '\WSEFEP\Test\Sad');
Test_Surprised_Folder =      fullfile(DBPath, '\WSEFEP\Test\Surprised');
database_N=4;  % WSEFEP
end
end