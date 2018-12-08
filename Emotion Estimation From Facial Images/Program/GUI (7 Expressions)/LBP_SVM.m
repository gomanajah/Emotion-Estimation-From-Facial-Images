function [Sheet_Na,Angry,Disgusted,Fear,Happy,Neutral,Sad,Surprised,Total,MultiSVM_result,Test_Class,False_Expr] = LBP_SVM(CS,Train_Angry_Folder,Train_Disgusted_Folder,Train_Fear_Folder,Train_Happy_Folder,Train_Neutral_Folder,Train_Sad_Folder,Train_Surprised_Folder,Test_Angry_Folder,Test_Disgusted_Folder,Test_Fear_Folder,Test_Happy_Folder,Test_Neutral_Folder,Test_Sad_Folder,Test_Surprised_Folder)
clc
%%  *********************** Call Old LBP Functions ******************************
[Train_Angry_Matrix,Train_No_Of_AN_Images] = LBP(CS,Train_Angry_Folder,'Loading Angry Expression...','Extract LBP Features for Training set');[Train_Disgusted_Matrix,Train_No_Of_DI_Images] = LBP(CS,Train_Disgusted_Folder,'Loading Disgusted Expression...','Extract LBP Features for Training set');[Train_Fear_Matrix,Train_No_Of_FE_Images] = LBP(CS,Train_Fear_Folder,'Loading Fear Expression...','Extract LBP Features for Training set');[Train_Happy_Matrix,Train_No_Of_HA_Images] = LBP(CS,Train_Happy_Folder,'Loading Happy Expression...','Extract LBP Features for Training set');[Train_neutral_Matrix,Train_No_Of_NE_Images] = LBP(CS,Train_Neutral_Folder,'Loading Neutral Expression...','Extract LBP Features for Training set');[Train_Sad_Matrix,Train_No_Of_SA_Images] = LBP(CS,Train_Sad_Folder,'Loading Sad Expression...','Extract LBP Features for Training set');[Train_Surprised_Matrix,Train_No_Of_SU_Images] = LBP(CS,Train_Surprised_Folder,'Loading Surprised Expression...','Extract LBP Features for Training set');
%***********************
[Test_Angry_Matrix,Test_No_Of_AN_Images] = LBP(CS,Test_Angry_Folder,'Loading Angry Expression...','Extract LBP Features for Test set');[Test_Disgusted_Matrix,Test_No_Of_DI_Images] = LBP(CS,Test_Disgusted_Folder,'Loading Disgusted Expression...','Extract LBP Features for Test set');[Test_Fear_Matrix,Test_No_Of_FE_Images] = LBP(CS,Test_Fear_Folder,'Loading Fear Expression...','Extract LBP Features for Test set');[Test_Happy_Matrix,Test_No_Of_HA_Images] = LBP(CS,Test_Happy_Folder,'Loading Happy Expression...','Extract LBP Features for Test set');[Test_neutral_Matrix,Test_No_Of_NE_Images] = LBP(CS,Test_Neutral_Folder,'Loading Neutral Expression...','Extract LBP Features for Test set');[Test_Sad_Matrix,Test_No_Of_SA_Images] = LBP(CS,Test_Sad_Folder,'Loading Sad Expression...','Extract LBP Features for Test set');[Test_Surprised_Matrix,Test_No_Of_SU_Images] = LBP(CS,Test_Surprised_Folder,'Loading Surprised Expression...','Extract LBP Features for Test set');
%%  ************************ Integrating Matrices *************************
Train_Matrix = vertcat(Train_Angry_Matrix, Train_Disgusted_Matrix, Train_Fear_Matrix, Train_Happy_Matrix, Train_neutral_Matrix, Train_Sad_Matrix, Train_Surprised_Matrix);
Test_Matrix = vertcat(Test_Angry_Matrix, Test_Disgusted_Matrix, Test_Fear_Matrix, Test_Happy_Matrix, Test_neutral_Matrix, Test_Sad_Matrix, Test_Surprised_Matrix);
%%  *************************** Class Or Group ****************************
Train_Class = zeros(size(length(Train_Matrix),1),1);
    Train_Class(1:  Train_No_Of_AN_Images,1) = 1;  % Angry;
    Train_Class(    Train_No_Of_AN_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_DI_Images,1) = 2; %Disgusted;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_DI_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images,1) = 3; %Afraid;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images,1) = 4; %Happy;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images,1) = 5; %neutral;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+Train_No_Of_SA_Images,1) = 6; %Sad;
    Train_Class(    Train_No_Of_AN_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+Train_No_Of_SA_Images+1:...
                    Train_No_Of_AN_Images+Train_No_Of_DI_Images+Train_No_Of_FE_Images+Train_No_Of_HA_Images+Train_No_Of_NE_Images+Train_No_Of_SA_Images+Train_No_Of_SU_Images,1) = 7; %Surprised;
%  ***********************
 Test_Class = zeros(size(length(Test_Matrix),1),1);
    Test_Class(1:  Test_No_Of_AN_Images,1) = 1;  % Angry;
    Test_Class(    Test_No_Of_AN_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_DI_Images,1) = 2; %Disgusted;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_DI_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images,1) = 3; %Afraid;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images,1) = 4; %Happy;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images,1) = 5; %neutral;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+Test_No_Of_SA_Images,1) = 6; %Sad;
    Test_Class(    Test_No_Of_AN_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+Test_No_Of_SA_Images+1:...
                   Test_No_Of_AN_Images+Test_No_Of_DI_Images+Test_No_Of_FE_Images+Test_No_Of_HA_Images+Test_No_Of_NE_Images+Test_No_Of_SA_Images+Test_No_Of_SU_Images,1) = 7; %Surprised;
%%  ************************ MultiSVM *************************************
[MultiSVM_result]=multisvm( Train_Matrix,Train_Class,Test_Matrix );
AN=0;DI=0;FE=0;HA=0;NE=0;SA=0;SU=0;
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
            DI=DI+1;
            elseif MultiSVM_result(i) == 3
            FE=FE+1;
            elseif MultiSVM_result(i) == 4
            HA=HA+1;
            elseif MultiSVM_result(i) == 5
            NE=NE+1;
            elseif MultiSVM_result(i) == 6
            SA=SA+1;
            elseif MultiSVM_result(i) == 7
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
            fprintf('Disgusted\n');
            elseif False_Expr(k) == 3
            fprintf('Fear\n');
            elseif False_Expr(k) == 4
            fprintf('Happy\n');
            elseif False_Expr(k) == 5
            fprintf('Neutral\n');
            elseif False_Expr(k) == 6
            fprintf('Sad\n');
            elseif False_Expr(k) == 7
            fprintf('Surprised\n');
            end
    end
%========          
%%  ***********************Export Data to Excel File***********************
Angry={Train_No_Of_AN_Images,Test_No_Of_AN_Images,AN,AN1};
Disgusted={Train_No_Of_DI_Images,Test_No_Of_DI_Images,DI,DI1};
Fear={Train_No_Of_FE_Images,Test_No_Of_FE_Images,FE,FE1};
Happy={Train_No_Of_HA_Images,Test_No_Of_HA_Images,HA,HA1};
Neutral={Train_No_Of_NE_Images,Test_No_Of_NE_Images,NE,NE1};
Sad={Train_No_Of_SA_Images,Test_No_Of_SA_Images,SA,SA1};
Surprised={Train_No_Of_SU_Images,Test_No_Of_SU_Images,SU,SU1};
Total={length(Train_Class),length(Test_Class),sum(Result),Accurancy};
fprintf('Done\n');