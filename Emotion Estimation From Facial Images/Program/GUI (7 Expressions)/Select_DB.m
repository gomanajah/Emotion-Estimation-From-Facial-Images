function [filename,Sheet_Na1] = Select_DB(CS2Excel,database_N,Sheet_Na)
%% Select file name And Sheet_Na By (Cell Size & Database name)

if CS2Excel==2 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(2)'; %Name of sheet
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(2)'; %Name of sheet
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(2)'; %Name of sheet
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(2)'; %Name of sheet
    end
filename = [pwd '\JAFFE.xlsx']; % Create file name

elseif CS2Excel==2 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(2)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(2)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(2)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(2)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==2 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(2)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(2)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(2)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(2)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==2 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(2)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(2)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(2)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(2)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==4 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(4)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(4)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(4)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(4)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==4 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(4)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(4)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(4)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(4)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==4 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(4)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(4)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(4)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(4)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==4 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(4)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(4)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(4)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(4)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==6 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(6)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(6)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(6)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(6)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==6 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(6)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(6)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(6)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(6)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==6 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(6)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(6)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(6)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(6)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==6 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(6)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(6)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(6)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(6)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==8 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(8)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(8)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(8)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(8)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==8 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(8)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(8)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(8)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(8)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==8 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(8)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(8)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(8)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(8)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==8 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(8)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(8)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(8)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(8)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==10 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(10)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(10)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(10)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(10)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==10 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(10)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(10)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(10)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(10)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==10 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(10)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(10)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(10)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(10)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==10 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(10)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(10)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(10)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(10)';
    end
filename = [pwd '\WSEFEP.xlsx'];
%% ========================================================================
elseif CS2Excel==12 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(12)'; %Name of sheet
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(12)'; %Name of sheet
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(12)'; %Name of sheet
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(12)'; %Name of sheet
    end
filename = [pwd '\JAFFE.xlsx']; % Create file name

elseif CS2Excel==12 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(12)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(12)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(12)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(12)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==12 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(12)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(12)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(12)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(12)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==12 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(12)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(12)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(12)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(12)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==14 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(14)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(14)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(14)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(14)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==14 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(14)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(14)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(14)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(14)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==14 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(14)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(14)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(14)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(14)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==14 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(14)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(14)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(14)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(14)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==16 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(16)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(16)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(16)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(16)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==16 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(16)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(16)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(16)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(16)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==16 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(16)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(16)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(16)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(16)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==16 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(16)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(16)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(16)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(16)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==18 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(18)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(18)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(18)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(18)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==18 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(18)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(18)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(18)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(18)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==18 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(18)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(18)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(18)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(18)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==18 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(18)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(18)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(18)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(18)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==20 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(20)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(20)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(20)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(20)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==20 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(20)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(20)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(20)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(20)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==20 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(20)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(20)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(20)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(20)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==20 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(20)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(20)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(20)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(20)';
    end
filename = [pwd '\WSEFEP.xlsx'];
%% ========================================================================
elseif CS2Excel==22 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(22)'; %Name of sheet
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(22)'; %Name of sheet
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(22)'; %Name of sheet
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(22)'; %Name of sheet
    end
filename = [pwd '\JAFFE.xlsx']; % Create file name

elseif CS2Excel==22 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(22)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(22)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(22)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(22)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==22 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(22)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(22)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(22)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(22)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==22 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(22)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(22)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(22)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(22)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==24 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(24)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(24)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(24)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(24)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==24 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(24)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(24)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(24)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(24)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==24 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(24)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(24)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(24)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(24)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==24 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(24)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(24)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(24)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(24)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==26 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(26)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(26)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(26)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(26)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==26 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(26)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(26)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(26)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(26)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==26 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(26)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(26)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(26)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(26)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==26 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(26)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(26)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(26)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(26)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==28 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(28)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(28)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(28)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(28)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==28 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(28)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(28)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(28)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(28)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==28 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(28)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(28)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(28)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(28)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==28 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(28)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(28)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(28)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(28)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==30 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(30)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(30)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(30)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(30)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==30 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(30)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(30)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(30)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(30)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==30 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(30)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(30)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(30)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(30)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==30 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(30)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(30)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(30)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(30)';
    end
filename = [pwd '\WSEFEP.xlsx'];
%% ========================================================================
elseif CS2Excel==32 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(32)'; %Name of sheet
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(32)'; %Name of sheet
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(32)'; %Name of sheet
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(32)'; %Name of sheet
    end
filename = [pwd '\JAFFE.xlsx']; % Create file name

elseif CS2Excel==32 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(32)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(32)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(32)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(32)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==32 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(32)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(32)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(32)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(32)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==32 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(32)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(32)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(32)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(32)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==34 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(34)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(34)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(34)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(34)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==34 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(34)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(34)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(34)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(34)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==34 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(34)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(34)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(34)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(34)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==34 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(34)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(34)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(34)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(34)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==36 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(36)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(36)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(36)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(36)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==36 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(36)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(36)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(36)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(36)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==36 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(36)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(36)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(36)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(36)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==36 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(36)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(36)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(36)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(36)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==38 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(38)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(38)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(38)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(38)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==38 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(38)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(38)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(38)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(38)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==38 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(38)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(38)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(38)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(38)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==38 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(38)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(38)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(38)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(38)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==40 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(40)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(40)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(40)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(40)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==40 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(40)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(40)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(40)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(40)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==40 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(40)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(40)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(40)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(40)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==40 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(40)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(40)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(40)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(40)';
    end
filename = [pwd '\WSEFEP.xlsx'];
%% ========================================================================
elseif CS2Excel==42 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(42)'; %Name of sheet
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(42)'; %Name of sheet
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(42)'; %Name of sheet
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(42)'; %Name of sheet
    end
filename = [pwd '\JAFFE.xlsx']; % Create file name

elseif CS2Excel==42 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(42)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(42)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(42)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(42)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==42 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(42)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(42)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(42)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(42)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==42 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(42)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(42)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(42)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(42)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==44 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(44)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(44)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(44)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(44)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==44 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(44)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(44)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(44)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(44)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==44 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(44)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(44)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(44)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(44)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==44 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(44)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(44)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(44)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(44)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==46 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(46)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(46)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(46)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(46)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==46 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(46)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(46)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(46)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(46)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==46 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(46)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(46)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(46)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(46)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==46 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(46)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(46)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(46)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(46)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==48 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(48)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(48)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(48)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(48)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==48 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(48)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(48)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(48)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(48)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==48 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(48)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(48)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(48)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(48)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==48 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(48)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(48)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(48)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(48)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==50 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(50)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(50)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(50)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(50)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==50 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(50)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(50)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(50)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(50)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==50 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(50)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(50)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(50)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(50)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==50 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(50)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(50)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(50)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(50)';
    end
filename = [pwd '\WSEFEP.xlsx'];
%% ========================================================================
elseif CS2Excel==52 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(52)'; %Name of sheet
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(52)'; %Name of sheet
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(52)'; %Name of sheet
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(52)'; %Name of sheet
    end
filename = [pwd '\JAFFE.xlsx']; % Create file name

elseif CS2Excel==52 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(52)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(52)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(52)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(52)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==52 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(52)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(52)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(52)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(52)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==52 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(52)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(52)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(52)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(52)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==54 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(54)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(54)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(54)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(54)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==54 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(54)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(54)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(54)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(54)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==54 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(54)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(54)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(54)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(54)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==54 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(54)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(54)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(54)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(54)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==56 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(56)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(56)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(56)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(56)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==56 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(56)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(56)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(56)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(56)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==56 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(56)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(56)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(56)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(56)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==56 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(56)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(56)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(56)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(56)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==58 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(58)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(58)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(58)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(58)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==58 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(58)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(58)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(58)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(58)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==58 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(58)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(58)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(58)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(58)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==58 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(58)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(58)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(58)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(58)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==60 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(60)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(60)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(60)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(60)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==60 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(60)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(60)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(60)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(60)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==60 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(60)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(60)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(60)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(60)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==60 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(60)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(60)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(60)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(60)';
    end
filename = [pwd '\WSEFEP.xlsx'];
%% ========================================================================
elseif CS2Excel==62 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(62)'; %Name of sheet
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(62)'; %Name of sheet
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(62)'; %Name of sheet
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(62)'; %Name of sheet
    end
filename = [pwd '\JAFFE.xlsx']; % Create file name

elseif CS2Excel==62 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(62)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(62)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(62)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(62)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==62 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(62)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(62)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(62)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(62)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==62 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(62)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(62)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(62)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(62)';
    end
filename = [pwd '\WSEFEP.xlsx'];

elseif CS2Excel==64 && database_N==1

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(64)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(64)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(64)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(64)';
    end
filename = [pwd '\JAFFE.xlsx'];

elseif CS2Excel==64 && database_N==2

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(64)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(64)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(64)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(64)';
    end
filename = [pwd '\KDEF.xlsx'];

elseif CS2Excel==64 && database_N==3

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(64)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(64)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(64)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(64)';
    end
filename = [pwd '\MUG.xlsx'];

elseif CS2Excel==64 && database_N==4

    switch Sheet_Na
      case 'HOG+KNN'
    Sheet_Na1='HOG+KNN(64)';
      case 'HOG+SVM'
    Sheet_Na1='HOG+SVM(64)';
      case 'LBP+KNN'
    Sheet_Na1='LBP+KNN(64)';
      case 'LBP+SVM'
    Sheet_Na1='LBP+SVM(64)';
    end
filename = [pwd '\WSEFEP.xlsx'];
end
%% ========================================================================
end