function varargout = Home(varargin)
% HOME MATLAB code for Home.fig
%      HOME, by itself, creates a new HOME or raises the existing
%      singleton*.
%
%      H = HOME returns the handle to a new HOME or the handle to
%      the existing singleton*.
%
%      HOME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HOME.M with the given input arguments.
%
%      HOME('Property','Value',...) creates a new HOME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Home_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Home_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Home

% Last Modified by GUIDE v2.5 30-Sep-2016 23:41:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Home_OpeningFcn, ...
                   'gui_OutputFcn',  @Home_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Home is made visible.
function Home_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Home (see VARARGIN)

% Choose default command line output for Home
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Home wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Home_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, CS2Excel, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Cell_Size = get(handles.popupmenu1,'Value'); %get currently selected option from menu
FE=get(handles.uibuttongroup1,'selectedobject');
CL=get(handles.uibuttongroup2,'selectedobject');
Database=get(handles.uibuttongroup3,'selectedobject');

if Cell_Size == 1
    CS=8;
CS2Excel=8;
elseif Cell_Size == 2
    CS=16;
CS2Excel=16;
elseif Cell_Size == 3
    CS=32;
CS2Excel=32;
elseif Cell_Size == 4
    CS=50;
CS2Excel=64;
elseif Cell_Size == 5
    CS=10;
CS2Excel=10;
elseif Cell_Size == 6
    CS=12;
CS2Excel=12;
elseif Cell_Size == 7
    CS=14;
CS2Excel=14;
elseif Cell_Size == 8
    CS=16;
CS2Excel=16;
elseif Cell_Size == 9
    CS=18;
CS2Excel=18;
elseif Cell_Size == 10
    CS=20;
CS2Excel=20;
elseif Cell_Size == 11
    CS=22;
CS2Excel=22;
elseif Cell_Size == 12
    CS=24;
CS2Excel=24;
elseif Cell_Size == 13
    CS=26;
CS2Excel=26;
elseif Cell_Size == 14
    CS=28;
CS2Excel=28;
elseif Cell_Size == 15
    CS=30;
CS2Excel=30;
elseif Cell_Size == 16
    CS=32;
CS2Excel=32;
elseif Cell_Size == 17
    CS=34;
CS2Excel=34;
elseif Cell_Size == 18
    CS=36;
CS2Excel=36;
elseif Cell_Size == 19
    CS=38;
CS2Excel=38;
elseif Cell_Size == 20
    CS=40;
CS2Excel=40;
elseif Cell_Size == 21
    CS=42;
CS2Excel=42;
elseif Cell_Size == 22
    CS=44;
CS2Excel=44;
elseif Cell_Size == 23
    CS=46;
CS2Excel=46;
elseif Cell_Size == 24
    CS=48;
CS2Excel=48;
elseif Cell_Size == 25
    CS=50;
CS2Excel=50;
elseif Cell_Size == 26
    CS=52;
CS2Excel=52;
elseif Cell_Size == 27
    CS=54;
CS2Excel=54;
elseif Cell_Size == 28
    CS=56;
CS2Excel=56;
elseif Cell_Size == 29
    CS=58;
CS2Excel=58;
elseif Cell_Size == 30
    CS=60;
CS2Excel=60;
elseif Cell_Size == 31
    CS=62;
CS2Excel=62;
elseif Cell_Size == 32
    CS=64;
CS2Excel=64;
end
%% Database Group
if Database==handles.radiobutton5
P_NO=1;
    [database_N,Train_Angry_Folder,Train_Disgusted_Folder,Train_Fear_Folder,Train_Happy_Folder,Train_Neutral_Folder,Train_Sad_Folder,Train_Surprised_Folder,Test_Angry_Folder,Test_Disgusted_Folder,Test_Fear_Folder,Test_Happy_Folder,Test_Neutral_Folder,Test_Sad_Folder,Test_Surprised_Folder] = Paths(P_NO);
elseif Database==handles.radiobutton6
P_NO=2;
    [database_N,Train_Angry_Folder,Train_Disgusted_Folder,Train_Fear_Folder,Train_Happy_Folder,Train_Neutral_Folder,Train_Sad_Folder,Train_Surprised_Folder,Test_Angry_Folder,Test_Disgusted_Folder,Test_Fear_Folder,Test_Happy_Folder,Test_Neutral_Folder,Test_Sad_Folder,Test_Surprised_Folder] = Paths(P_NO);
elseif Database==handles.radiobutton7
P_NO=3;
    [database_N,Train_Angry_Folder,Train_Disgusted_Folder,Train_Fear_Folder,Train_Happy_Folder,Train_Neutral_Folder,Train_Sad_Folder,Train_Surprised_Folder,Test_Angry_Folder,Test_Disgusted_Folder,Test_Fear_Folder,Test_Happy_Folder,Test_Neutral_Folder,Test_Sad_Folder,Test_Surprised_Folder] = Paths(P_NO);
elseif Database==handles.radiobutton8
P_NO=4;
    [database_N,Train_Angry_Folder,Train_Disgusted_Folder,Train_Fear_Folder,Train_Happy_Folder,Train_Neutral_Folder,Train_Sad_Folder,Train_Surprised_Folder,Test_Angry_Folder,Test_Disgusted_Folder,Test_Fear_Folder,Test_Happy_Folder,Test_Neutral_Folder,Test_Sad_Folder,Test_Surprised_Folder] = Paths(P_NO);
end

   global knn_Result
   global Test_Class
%% Extract Features && Classifiers
if FE==handles.radiobutton1 && CL==handles.radiobutton3
            [Sheet_Na,Angry,Disgusted,Fear,Happy,Neutral,Sad,Surprised,Total,knn_Result,Test_Class,False_Expr]=HOG_KNN(CS,Train_Angry_Folder,Train_Disgusted_Folder,Train_Fear_Folder,Train_Happy_Folder,Train_Neutral_Folder,Train_Sad_Folder,Train_Surprised_Folder,Test_Angry_Folder,Test_Disgusted_Folder,Test_Fear_Folder,Test_Happy_Folder,Test_Neutral_Folder,Test_Sad_Folder,Test_Surprised_Folder);
elseif FE==handles.radiobutton1 && CL==handles.radiobutton4
            [Sheet_Na,Angry,Disgusted,Fear,Happy,Neutral,Sad,Surprised,Total,knn_Result,Test_Class,False_Expr]=HOG_SVM(CS,Train_Angry_Folder,Train_Disgusted_Folder,Train_Fear_Folder,Train_Happy_Folder,Train_Neutral_Folder,Train_Sad_Folder,Train_Surprised_Folder,Test_Angry_Folder,Test_Disgusted_Folder,Test_Fear_Folder,Test_Happy_Folder,Test_Neutral_Folder,Test_Sad_Folder,Test_Surprised_Folder);
elseif FE==handles.radiobutton2 && CL==handles.radiobutton3
            [Sheet_Na,Angry,Disgusted,Fear,Happy,Neutral,Sad,Surprised,Total,knn_Result,Test_Class,False_Expr]=LBP_KNN(CS,Train_Angry_Folder,Train_Disgusted_Folder,Train_Fear_Folder,Train_Happy_Folder,Train_Neutral_Folder,Train_Sad_Folder,Train_Surprised_Folder,Test_Angry_Folder,Test_Disgusted_Folder,Test_Fear_Folder,Test_Happy_Folder,Test_Neutral_Folder,Test_Sad_Folder,Test_Surprised_Folder);
elseif FE==handles.radiobutton2 && CL==handles.radiobutton4
            [Sheet_Na,Angry,Disgusted,Fear,Happy,Neutral,Sad,Surprised,Total,knn_Result,Test_Class,False_Expr]=LBP_SVM(CS,Train_Angry_Folder,Train_Disgusted_Folder,Train_Fear_Folder,Train_Happy_Folder,Train_Neutral_Folder,Train_Sad_Folder,Train_Surprised_Folder,Test_Angry_Folder,Test_Disgusted_Folder,Test_Fear_Folder,Test_Happy_Folder,Test_Neutral_Folder,Test_Sad_Folder,Test_Surprised_Folder);
end
All=vertcat(Angry,Disgusted,Fear,Happy,Neutral,Sad,Surprised,Total);
%% Select file name By (Cell Size & Database name)
[filename,Sheet_Na1] = Select_DB(CS2Excel,database_N,Sheet_Na);
%% ================================================
% assignin('base','CS',CS);
Header={'Train images','Test images','True Expressions','Accurancy %'};
Expressions={'Angry','Disgusted','Fear','Happy','Neutral','Sad','Surprised','Total'};
%% 
set(handles.uitable1,'Data',All,'ColumnName',Header,'RowName',Expressions);
FE1 = get(handles.checkbox1,'Value');
if FE1==1
    Export(filename,Sheet_Na1,Angry,Disgusted,Fear,Happy,Neutral,Sad,Surprised,False_Expr)
end

%% msgbox('Operation Completed','Success');

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;
clc
close(Home);


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Cell_Size = get(handles.pushbutton1,'Value'); %get currently selected option from menu
   global knn_Result
   global Test_Class
% assignin('base','knn_Result',knn_Result);
% assignin('base','Test_Class',Test_Class);
[Cmat,DA]= confusion_matrix(knn_Result,Test_Class);
% figure('visible','on'); %confusionMatrix3d
% [confusion_matrix overall_pcc group_stats groups_list] = confusionMatrix3d(knn_Result,Test_Class);%confusionMatrix3d
% confusionmatStats(Test_Class,knn_Result)


% --- Executes when selected object is changed in uibuttongroup3.
function uibuttongroup3_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup3 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
