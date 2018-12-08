function [Sheet_Na1] = Select_DB(CS,Sheet_Na)
%% Select file name And Sheet_Na By (Cell Size & Database name)

if CS==2

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

elseif CS==4

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
    
elseif CS==6

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
    
elseif CS==8

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
    
elseif CS==10

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
    
elseif CS==12

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
    
elseif CS==14

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
    
elseif CS==16

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
    
elseif CS==18

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
    
elseif CS==20

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
    
elseif CS==22

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

elseif CS==24

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
    
elseif CS==26

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
    
elseif CS==28

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
    
elseif CS==30

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
    
elseif CS==32

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
    
elseif CS==34

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
    
elseif CS==36

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
    
elseif CS==38

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
    
elseif CS==40

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
    
elseif CS==42

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

elseif CS==44

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
    
elseif CS==46

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
    
elseif CS==48

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
    
elseif CS==50

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
    
elseif CS==52

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
    
elseif CS==54

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
    
elseif CS==56

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
    
elseif CS==58

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
    
elseif CS==60

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
    
elseif CS==62

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
    
elseif CS==64

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
    
end
end