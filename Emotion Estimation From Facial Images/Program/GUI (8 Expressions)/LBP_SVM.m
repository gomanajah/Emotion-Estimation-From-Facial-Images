function [Sheet_Na,Angry,contempt,Disgusted,Fear,Happy,Neutral,Sad,Surprised,Total,MultiSVM_result,Test_Class,False_Expr] = LBP_SVM(CS)
clc
DBPath = 'C:\Emotion Estimation From Facial Images\Databases\After Pre-Pocessing\TFEID (8 Expressions)\';
  %%  ************************ Read Folders *******************************
Train_Angry_Folder =          fullfile(DBPath, 'Train\dfh_anger_x');
Train_Contempt_Folder =       fullfile(DBPath, 'Train\dfh_contempt_x');
Train_Disgusted_Folder =      fullfile(DBPath, 'Train\dfh_disguest_x');
Train_Fear_Folder =           fullfile(DBPath, 'Train\dfh_fear_x');
Train_Happy_Folder =          fullfile(DBPath, 'Train\dfh_happiness_x');
Train_Neutral_Folder =        fullfile(DBPath, 'Train\dfh_neutral_x');
Train_Sad_Folder =            fullfile(DBPath, 'Train\dfh_sadness_x');
Train_Surprised_Folder =      fullfile(DBPath, 'Train\dfh_surprise_x');
%  ***********************
Test_Angry_Folder =          fullfile(DBPath, 'Test\dfh_anger_x');
Test_Contempt_Folder =       fullfile(DBPath, 'Test\dfh_contempt_x');
Test_Disgusted_Folder =      fullfile(DBPath, 'Test\dfh_disguest_x');
Test_Fear_Folder =           fullfile(DBPath, 'Test\dfh_fear_x');
Test_Happy_Folder =          fullfile(DBPath, 'Test\dfh_happiness_x');
Test_Neutral_Folder =        fullfile(DBPath, 'Test\dfh_neutral_x');
Test_Sad_Folder =            fullfile(DBPath, 'Test\dfh_sadness_x');
Test_Surprised_Folder =      fullfile(DBPath, 'Test\dfh_surprise_x');
  %%  *********************** Call Old LBP Functions ******************************
[Train_Angry_Matrix,Train_No_Of_AN_Images] = LBP(CS,Train_Angry_Folder,'Loading Angry Expression...','Extract LBP Features for Training set');[Train_Contempt_Matrix,Train_No_Of_CO_Images] = LBP(CS,Train_Contempt_Folder,'Loading Contempt Expression...','Extract LBP Features for Training set');[Train_Disgusted_Matrix,Train_No_Of_DI_Images] = LBP(CS,Train_Disgusted_Folder,'Loading Disgusted Expression...','Extract LBP Features for Training set');[Train_Fear_Matrix,Train_No_Of_FE_Images] = LBP(CS,Train_Fear_Folder,'Loading Fear Expression...','Extract LBP Features for Training set');[Train_Happy_Matrix,Train_No_Of_HA_Images] = LBP(CS,Train_Happy_Folder,'Loading Happy Expression...','Extract LBP Features for Training set');[Train_neutral_Matrix,Train_No_Of_NE_Images] = LBP(CS,Train_Neutral_Folder,'Loading Neutral Expression...','Extract LBP Features for Training set');[Train_Sad_Matrix,Train_No_Of_SA_Images] = LBP(CS,Train_Sad_Folder,'Loading Sad Expression...','Extract LBP Features for Training set');[Train_Surprised_Matrix,Train_No_Of_SU_Images] = LBP(CS,Train_Surprised_Folder,'Loading Surprised Expression...','Extract LBP Features for Training set');
% %***********************
[Test_Angry_Matrix,Test_No_Of_AN_Images] = LBP(CS,Test_Angry_Folder,'Loading Angry Expression...','Extract LBP Features for Test set');[Test_Contempt_Matrix,Test_No_Of_CO_Images] = LBP(CS,Test_Contempt_Folder,'Loading Contempt Expression...','Extract LBP Features for Test set');[Test_Disgusted_Matrix,Test_No_Of_DI_Images] = LBP(CS,Test_Disgusted_Folder,'Loading Disgusted Expression...','Extract LBP Features for Test set');[Test_Fear_Matrix,Test_No_Of_FE_Images] = LBP(CS,Test_Fear_Folder,'Loading Fear Expression...','Extract LBP Features for Test set');[Test_Happy_Matrix,Test_No_Of_HA_Images] = LBP(CS,Test_Happy_Folder,'Loading Happy Expression...','Extract LBP Features for Test set');[Test_neutral_Matrix,Test_No_Of_NE_Images] = LBP(CS,Test_Neutral_Folder,'Loading Neutral Expression...','Extract LBP Features for Test set');[Test_Sad_Matrix,Test_No_Of_SA_Images] = LBP(CS,Test_Sad_Folder,'Loading Sad Expression...','Extract LBP Features for Test set');[Test_Surprised_Matrix,Test_No_Of_SU_Images] = LBP(CS,Test_Surprised_Folder,'Loading Surprised Expression...','Extract LBP Features for Test set');
%%  ************************ Integrating Matrices *************************
Train_Matrix = vertcat(Train_Angry_Matrix,Train_Contempt_Matrix, Train_Disgusted_Matrix, Train_Fear_Matrix, Train_Happy_Matrix, Train_neutral_Matrix, Train_Sad_Matrix, Train_Surprised_Matrix);
Test_Matrix = vertcat(Test_Angry_Matrix,Test_Contempt_Matrix, Test_Disgusted_Matrix, Test_Fear_Matrix, Test_Happy_Matrix, Test_neutral_Matrix, Test_Sad_Matrix, Test_Surprised_Matrix);
%%  *************************** Class Or Group ****************************
 Train_Class = zeros(size(length(Train_Matrix),1),1);
    Train_Class(1:  Train_No_Of_AN_Images,1) = 1;  % Angry;
    Train_Class(    Train_No_Of_AN_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images,1) = 2; %Contempt;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images,1) = 3; %Disgusted;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images,1) = 4; %Afraid;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images,1) = 5; %Happy;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images,1) = 6; %neutral;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+Train_No_Of_SA_Images,1) = 7; %Sad;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+Train_No_Of_SA_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+Train_No_Of_SA_Images+Train_No_Of_SU_Images,1) = 8; %Surprised;
%  ***********************
 Test_Class = zeros(size(length(Test_Matrix),1),1);
    Test_Class(1:  Test_No_Of_AN_Images,1) = 1;  % Angry;
    Test_Class(    Test_No_Of_AN_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images,1) = 2; %Contempt;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images,1) = 3; %Disgusted;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images,1) = 4; %Afraid;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images,1) = 5; %Happy;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images,1) = 6; %neutral;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+Test_No_Of_SA_Images,1) = 7; %Sad;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+Test_No_Of_SA_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+Test_No_Of_SA_Images+Test_No_Of_SU_Images,1) = 8; %Surprised;
%%  ************************ MultiSVM *************************************
[MultiSVM_result]=multisvm( Train_Matrix,Train_Class,Test_Matrix );
AN=0;CO=0;DI=0;FE=0;HA=0;NE=0;SA=0;SU=0;
waitbar2 = waitbar(0,'Wait...','Name','Calculate Accurancy'); %% WaitBar
%========          
False_Expr=[];
Ind_Of_False_Expr=[];
%========          
for i=1:length(Test_Class)
     if (MultiSVM_result(i)==Test_Class(i))
            if MultiSVM_result(i) == 1
            AN=AN+1;
            elseif MultiSVM_result(i) == 2
            CO=CO+1;
            elseif MultiSVM_result(i) == 3
            DI=DI+1;
            elseif MultiSVM_result(i) == 4
            FE=FE+1;
            elseif MultiSVM_result(i) == 5
            HA=HA+1;
            elseif MultiSVM_result(i) == 6
            NE=NE+1;
            elseif MultiSVM_result(i) == 7
            SA=SA+1;
            elseif MultiSVM_result(i) == 8
            SU=SU+1;
            end
         Result(i)=1;
     else
         Result(i)=0;
%========          
         False_Expr=[False_Expr;MultiSVM_result(i)];%  False_Expr(i)=knn_Result(i);
         Ind_Of_False_Expr=[Ind_Of_False_Expr;i];%  Ind_Of_False_Expr(i)=i;
%========
     end
waitbar(i / length(Test_Class))%% WaitBar
end
close(waitbar2)%% WaitBar 
Accurancy=sum(Result)/length(Test_Class)*100;
Sheet_Na='LBP+SVM'; %Name of sheet
%%  ******************************Print OUT********************************
Percent='%';
fprintf('===================================================================\n');
fprintf('%s ||%s||%s||%s||%s\n', 'Expression', 'Train images', 'Test images', 'True Expressions', 'Accurancy');
fprintf('===========||============||===========||================||=========\n');
AN1=AN/Test_No_Of_AN_Images*100;
fprintf('Angry:     ||     %d     ||     %d     ||       %d        ||  %0.2f%s\n',Train_No_Of_AN_Images,Test_No_Of_AN_Images,AN,AN1,Percent);
fprintf('-----------||------------||-----------||----------------||---------\n');
CO1=CO/Test_No_Of_CO_Images*100;
fprintf('Contempt:  ||     %d     ||     %d     ||       %d        ||  %0.2f%s\n',Train_No_Of_CO_Images,Test_No_Of_CO_Images,CO,CO1,Percent);
fprintf('-----------||------------||-----------||----------------||---------\n');
DI1=DI/Test_No_Of_DI_Images*100;
fprintf('Disgusted: ||     %d     ||     %d     ||       %d        ||  %0.2f%s\n',Train_No_Of_DI_Images,Test_No_Of_DI_Images,DI,DI1,Percent);
fprintf('-----------||------------||-----------||----------------||---------\n');
FE1=FE/Test_No_Of_FE_Images*100;
fprintf('Fear:      ||     %d     ||     %d     ||       %d        ||  %0.2f%s\n',Train_No_Of_FE_Images,Test_No_Of_FE_Images,FE,FE1,Percent);
fprintf('-----------||------------||-----------||----------------||---------\n');
HA1=HA/Test_No_Of_HA_Images*100;
fprintf('Happy:     ||     %d     ||     %d     ||       %d        ||  %0.2f%s\n',Train_No_Of_HA_Images,Test_No_Of_HA_Images,HA,HA1,Percent);
fprintf('-----------||------------||-----------||----------------||---------\n');
NE1=NE/Test_No_Of_NE_Images*100;
fprintf('Neutral:   ||     %d     ||     %d     ||       %d        ||  %0.2f%s\n',Train_No_Of_NE_Images,Test_No_Of_NE_Images,NE,NE1,Percent);
fprintf('-----------||------------||-----------||----------------||---------\n');
SA1=SA/Test_No_Of_SA_Images*100;
fprintf('Sad:       ||     %d     ||     %d     ||       %d        ||  %0.2f%s\n',Train_No_Of_SA_Images,Test_No_Of_SA_Images,SA,SA1,Percent);
fprintf('-----------||------------||-----------||----------------||---------\n');
SU1=SU/Test_No_Of_SU_Images*100;
fprintf('Surprised: ||     %d     ||     %d     ||       %d        ||  %0.2f%s\n',Train_No_Of_SU_Images,Test_No_Of_SU_Images,SU,SU1,Percent);
fprintf('===================================================================\n');
fprintf('Total:     ||     %d    ||     %d    ||       %d       ||  %0.2f%s\n',length(Train_Class),length(Test_Class),sum(Result),Accurancy,Percent);
fprintf('===================================================================\n');
%========          
    for k=1:length(False_Expr)
            fprintf('Ind of false Expr %d=',Ind_Of_False_Expr(k));
            if False_Expr(k) == 1
            fprintf('Angry\n');
            elseif False_Expr(k) == 2
            fprintf('contempt\n');
            elseif False_Expr(k) == 3
            fprintf('Disgusted\n');
            elseif False_Expr(k) == 4
            fprintf('Fear\n');
            elseif False_Expr(k) == 5
            fprintf('Happy\n');
            elseif False_Expr(k) == 6
            fprintf('Neutral\n');
            elseif False_Expr(k) == 7
            fprintf('Sad\n');
            elseif False_Expr(k) == 8
            fprintf('Surprised\n');
            end
    end
%========          
%%  ***********************Export Data to Excel File***********************
Angry={Train_No_Of_AN_Images,Test_No_Of_AN_Images,AN,AN1};
contempt={Train_No_Of_CO_Images,Test_No_Of_CO_Images,CO,CO1};
Disgusted={Train_No_Of_DI_Images,Test_No_Of_DI_Images,DI,DI1};
Fear={Train_No_Of_FE_Images,Test_No_Of_FE_Images,FE,FE1};
Happy={Train_No_Of_HA_Images,Test_No_Of_HA_Images,HA,HA1};
Neutral={Train_No_Of_NE_Images,Test_No_Of_NE_Images,NE,NE1};
Sad={Train_No_Of_SA_Images,Test_No_Of_SA_Images,SA,SA1};
Surprised={Train_No_Of_SU_Images,Test_No_Of_SU_Images,SU,SU1};
Total={length(Train_Class),length(Test_Class),sum(Result),Accurancy};
fprintf('Done\n');