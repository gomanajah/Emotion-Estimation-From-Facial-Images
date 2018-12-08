function [Sheet_Na,Angry,Contempt,Disgusted,Embarrass,Fear,Happy,Neutral,Pride,Sad,Surprised,Total,MultiSVM_result,Test_Class,False_Expr] = HOG_SVM(CS)
clc
DBPath = 'C:\Emotion Estimation From Facial Images\Databases\After Pre-Pocessing\ADFES (10 Expressions)\';
%%  ************************ Read Folders *******************************
Train_Angry_Folder =          fullfile(DBPath, 'Train\Angry');
Train_Contempt_Folder =       fullfile(DBPath, 'Train\Contempt');
Train_Disgusted_Folder =      fullfile(DBPath, 'Train\Disgusted');
Train_Embarrass_Folder =      fullfile(DBPath, 'Train\Embarrass');
Train_Fear_Folder =           fullfile(DBPath, 'Train\Fear');
Train_Happy_Folder =          fullfile(DBPath, 'Train\Happy');
Train_Neutral_Folder =        fullfile(DBPath, 'Train\Neutral');
Train_Pride_Folder =          fullfile(DBPath, 'Train\Pride');
Train_Sad_Folder =            fullfile(DBPath, 'Train\Sad');
Train_Surprised_Folder =      fullfile(DBPath, 'Train\Surprised');
%  ***********************
Test_Angry_Folder =          fullfile(DBPath, 'Test\Angry');
Test_Contempt_Folder =       fullfile(DBPath, 'Test\Contempt');
Test_Disgusted_Folder =      fullfile(DBPath, 'Test\Disgusted');
Test_Embarrass_Folder =      fullfile(DBPath, 'Test\Embarrass');
Test_Fear_Folder =           fullfile(DBPath, 'Test\Fear');
Test_Happy_Folder =          fullfile(DBPath, 'Test\Happy');
Test_Neutral_Folder =        fullfile(DBPath, 'Test\Neutral');
Test_Pride_Folder =          fullfile(DBPath, 'Test\Pride');
Test_Sad_Folder =            fullfile(DBPath, 'Test\Sad');
Test_Surprised_Folder =      fullfile(DBPath, 'Test\Surprised');
%%  *********************** Call HOG Functions ******************************
[Train_Angry_Matrix,Train_No_Of_AN_Images] = HOG(CS,Train_Angry_Folder,'Loading Angry Expression...','Extract HOG Features for Training set');[Train_Contempt_Matrix,Train_No_Of_CO_Images] = HOG(CS,Train_Contempt_Folder,'Loading Contempt Expression...','Extract HOG Features for Training set');[Train_Disgusted_Matrix,Train_No_Of_DI_Images] = HOG(CS,Train_Disgusted_Folder,'Loading Disgusted Expression...','Extract HOG Features for Training set');[Train_Embarrass_Matrix,Train_No_Of_EM_Images] = HOG(CS,Train_Embarrass_Folder,'Loading Embarrass Expression...','Extract HOG Features for Training set');[Train_Fear_Matrix,Train_No_Of_FE_Images] = HOG(CS,Train_Fear_Folder,'Loading Fear Expression...','Extract HOG Features for Training set');[Train_Happy_Matrix,Train_No_Of_HA_Images] = HOG(CS,Train_Happy_Folder,'Loading Happy Expression...','Extract HOG Features for Training set');[Train_neutral_Matrix,Train_No_Of_NE_Images] = HOG(CS,Train_Neutral_Folder,'Loading Neutral Expression...','Extract HOG Features for Training set');[Train_Pride_Matrix,Train_No_Of_PR_Images] = HOG(CS,Train_Pride_Folder,'Loading Pride Expression...','Extract HOG Features for Training set');[Train_Sad_Matrix,Train_No_Of_SA_Images] = HOG(CS,Train_Sad_Folder,'Loading Sad Expression...','Extract HOG Features for Training set');[Train_Surprised_Matrix,Train_No_Of_SU_Images] = HOG(CS,Train_Surprised_Folder,'Loading Surprised Expression...','Extract HOG Features for Training set');
%  ***********************
[Test_Angry_Matrix,Test_No_Of_AN_Images] = HOG(CS,Test_Angry_Folder,'Loading Angry Expression...','Extract HOG Features for Test set');[Test_Contempt_Matrix,Test_No_Of_CO_Images] = HOG(CS,Test_Contempt_Folder,'Loading Contempt Expression...','Extract HOG Features for Test set');[Test_Disgusted_Matrix,Test_No_Of_DI_Images] = HOG(CS,Test_Disgusted_Folder,'Loading Disgusted Expression...','Extract HOG Features for Test set');[Test_Embarrass_Matrix,Test_No_Of_EM_Images] = HOG(CS,Test_Embarrass_Folder,'Loading Embarrass Expression...','Extract HOG Features for Test set');[Test_Fear_Matrix,Test_No_Of_FE_Images] = HOG(CS,Test_Fear_Folder,'Loading Fear Expression...','Extract HOG Features for Test set');[Test_Happy_Matrix,Test_No_Of_HA_Images] = HOG(CS,Test_Happy_Folder,'Loading Happy Expression...','Extract HOG Features for Test set');[Test_neutral_Matrix,Test_No_Of_NE_Images] = HOG(CS,Test_Neutral_Folder,'Loading Neutral Expression...','Extract HOG Features for Test set');[Test_Pride_Matrix,Test_No_Of_PR_Images] = HOG(CS,Test_Pride_Folder,'Loading Pride Expression...','Extract HOG Features for Test set');[Test_Sad_Matrix,Test_No_Of_SA_Images] = HOG(CS,Test_Sad_Folder,'Loading Sad Expression...','Extract HOG Features for Test set');[Test_Surprised_Matrix,Test_No_Of_SU_Images] = HOG(CS,Test_Surprised_Folder,'Loading Surprised Expression...','Extract HOG Features for Test set');
%%  ************************ Integrating Matrices *************************
Train_Matrix = vertcat(Train_Angry_Matrix,Train_Contempt_Matrix, Train_Disgusted_Matrix,Train_Embarrass_Matrix, Train_Fear_Matrix, Train_Happy_Matrix, Train_neutral_Matrix,Train_Pride_Matrix, Train_Sad_Matrix, Train_Surprised_Matrix);
Test_Matrix = vertcat(Test_Angry_Matrix,Test_Contempt_Matrix, Test_Disgusted_Matrix,Test_Embarrass_Matrix, Test_Fear_Matrix, Test_Happy_Matrix, Test_neutral_Matrix,Test_Pride_Matrix, Test_Sad_Matrix, Test_Surprised_Matrix);
%%  *************************** Class Or Group ****************************
 Train_Class = zeros(size(length(Train_Matrix),1),1);
    Train_Class(1:  Train_No_Of_AN_Images,1) = 1;  % Angry;
    Train_Class(    Train_No_Of_AN_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images,1) = 2; %Contempt;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images,1) = 3; %Disgusted;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_EM_Images,1) = 4; %Embarrass;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_EM_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_EM_Images+Train_No_Of_FE_Images,1) = 5; %Fear;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_EM_Images+Train_No_Of_FE_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_EM_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images,1) = 6; %Happy;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_EM_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_EM_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images,1) = 7; %Neutral;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_EM_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_EM_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+Train_No_Of_PR_Images,1) = 8; %Pride;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_EM_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+Train_No_Of_PR_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_EM_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+Train_No_Of_PR_Images+Train_No_Of_SA_Images,1) = 9; %Sad;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_EM_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+Train_No_Of_PR_Images+Train_No_Of_SA_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_CO_Images+Train_No_Of_DI_Images+Train_No_Of_EM_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+Train_No_Of_PR_Images+Train_No_Of_SA_Images+Train_No_Of_SU_Images,1) = 10; %Surprised;
% %  ***********************
 Test_Class = zeros(size(length(Test_Matrix),1),1);
    Test_Class(1:  Test_No_Of_AN_Images,1) = 1;  % Angry;
    Test_Class(    Test_No_Of_AN_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images,1) = 2; %Contempt;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images,1) = 3; %Disgusted;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_EM_Images,1) = 4; %Embarrass;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_EM_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_EM_Images+Test_No_Of_FE_Images,1) = 5; %Fear;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_EM_Images+Test_No_Of_FE_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_EM_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images,1) = 6; %Happy;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_EM_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_EM_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images,1) = 7; %Neutral;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_EM_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_EM_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+Test_No_Of_PR_Images,1) = 8; %Pride;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_EM_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+Test_No_Of_PR_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_EM_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+Test_No_Of_PR_Images+Test_No_Of_SA_Images,1) = 9; %Sad;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_EM_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+Test_No_Of_PR_Images+Test_No_Of_SA_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_CO_Images+Test_No_Of_DI_Images+Test_No_Of_EM_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+Test_No_Of_PR_Images+Test_No_Of_SA_Images+Test_No_Of_SU_Images,1) = 10; %Surprised;
%%  ************************ MultiSVM *************************************
[MultiSVM_result]=multisvm( Train_Matrix,Train_Class,Test_Matrix );
AN=0;CO=0;DI=0;EM=0;FE=0;HA=0;NE=0;PR=0;SA=0;SU=0;
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
            EM=EM+1;
            elseif MultiSVM_result(i) == 5
            FE=FE+1;
            elseif MultiSVM_result(i) == 6
            HA=HA+1;
            elseif MultiSVM_result(i) == 7
            NE=NE+1;
            elseif MultiSVM_result(i) == 8
            PR=PR+1;
            elseif MultiSVM_result(i) == 9
            SA=SA+1;
            elseif MultiSVM_result(i) == 10
            SU=SU+1;
            end
         Result(i)=1;
%          fprintf('Expression= %d\n',Test_Class(i));
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
Sheet_Na='HOG+SVM'; %Name of sheet
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
EM1=EM/Test_No_Of_EM_Images*100;
fprintf('Embarrass: ||     %d     ||     %d     ||       %d        ||  %0.2f%s\n',Train_No_Of_EM_Images,Test_No_Of_EM_Images,EM,EM1,Percent);
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
PR1=PR/Test_No_Of_PR_Images*100;
fprintf('Pride:     ||     %d     ||     %d     ||       %d        ||  %0.2f%s\n',Train_No_Of_PR_Images,Test_No_Of_PR_Images,PR,PR1,Percent);
fprintf('-----------||------------||-----------||----------------||---------\n');
SA1=SA/Test_No_Of_SA_Images*100;
fprintf('Sad:       ||     %d     ||     %d     ||       %d        ||  %0.2f%s\n',Train_No_Of_SA_Images,Test_No_Of_SA_Images,SA,SA1,Percent);
fprintf('-----------||------------||-----------||----------------||---------\n');
SU1=SU/Test_No_Of_SU_Images*100;
fprintf('Surprised: ||     %d     ||     %d     ||       %d        ||  %0.2f%s\n',Train_No_Of_SU_Images,Test_No_Of_SU_Images,SU,SU1,Percent);
fprintf('===================================================================\n');
fprintf('Total:     ||     %d    ||     %d    ||       %d       ||  %0.2f%s\n',length(Train_Class),length(Test_Class),sum(Result),Accurancy,Percent);
fprintf('===================================================================\n');
% %========          
%     for k=1:length(False_Expr)
%             fprintf('Ind of false Expr %d=',Ind_Of_False_Expr(k));
%             if False_Expr(k) == 1
%             fprintf('Angry\n');
%             elseif False_Expr(k) == 2
%             fprintf('Contempt\n');
%             elseif False_Expr(k) == 3
%             fprintf('Disgusted\n');
%             elseif False_Expr(k) == 4
%             fprintf('Embarrass\n');
%             elseif False_Expr(k) == 5
%             fprintf('Fear\n');
%             elseif False_Expr(k) == 6
%             fprintf('Happy\n');
%             elseif False_Expr(k) == 7
%             fprintf('Neutral\n');
%             elseif False_Expr(k) == 8
%             fprintf('Pride\n');
%             elseif False_Expr(k) == 9
%             fprintf('Sad\n');
%             elseif False_Expr(k) == 10
%             fprintf('Surprised\n');
%             end
%     end
% %========          
%%  ***********************Export Data to Excel File***********************
Angry={Train_No_Of_AN_Images,Test_No_Of_AN_Images,AN,AN1};
Contempt={Train_No_Of_CO_Images,Test_No_Of_CO_Images,CO,CO1};
Disgusted={Train_No_Of_DI_Images,Test_No_Of_DI_Images,DI,DI1};
Embarrass={Train_No_Of_EM_Images,Test_No_Of_EM_Images,EM,EM1};
Fear={Train_No_Of_FE_Images,Test_No_Of_FE_Images,FE,FE1};
Happy={Train_No_Of_HA_Images,Test_No_Of_HA_Images,HA,HA1};
Neutral={Train_No_Of_NE_Images,Test_No_Of_NE_Images,NE,NE1};
Pride={Train_No_Of_PR_Images,Test_No_Of_PR_Images,PR,PR1};
Sad={Train_No_Of_SA_Images,Test_No_Of_SA_Images,SA,SA1};
Surprised={Train_No_Of_SU_Images,Test_No_Of_SU_Images,SU,SU1};
Total={length(Train_Class),length(Test_Class),sum(Result),Accurancy};
fprintf('Done\n');