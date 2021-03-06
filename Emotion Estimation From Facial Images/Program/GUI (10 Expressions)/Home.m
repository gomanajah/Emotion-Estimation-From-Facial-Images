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

% Last Modified by GUIDE v2.5 26-Sep-2016 03:46:04

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
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Cell_Size = get(handles.popupmenu1,'Value'); %get currently selected option from menu
if Cell_Size == 1
    CS=2;
elseif Cell_Size == 2
    CS=4;
elseif Cell_Size == 3
    CS=6;
elseif Cell_Size == 4
    CS=8;
elseif Cell_Size == 5
    CS=10;
elseif Cell_Size == 6
    CS=12;
elseif Cell_Size == 7
    CS=14;
elseif Cell_Size == 8
    CS=16;
elseif Cell_Size == 9
    CS=18;
elseif Cell_Size == 10
    CS=20;
elseif Cell_Size == 11
    CS=22;
elseif Cell_Size == 12
    CS=24;
elseif Cell_Size == 13
    CS=26;
elseif Cell_Size == 14
    CS=28;
elseif Cell_Size == 15
    CS=30;
elseif Cell_Size == 16
    CS=32;
elseif Cell_Size == 17
    CS=34;
elseif Cell_Size == 18
    CS=36;
elseif Cell_Size == 19
    CS=38;
elseif Cell_Size == 20
    CS=40;
elseif Cell_Size == 21
    CS=42;
elseif Cell_Size == 22
    CS=44;
elseif Cell_Size == 23
    CS=46;
elseif Cell_Size == 24
    CS=48;
elseif Cell_Size == 25
    CS=50;
elseif Cell_Size == 26
    CS=52;
elseif Cell_Size == 27
    CS=54;
elseif Cell_Size == 28
    CS=56;
elseif Cell_Size == 29
    CS=58;
elseif Cell_Size == 30
    CS=60;
elseif Cell_Size == 31
    CS=62;
elseif Cell_Size == 32
    CS=64;
end
% assignin('base','CS',CS);
FE=get(handles.uibuttongroup1,'selectedobject');
CL=get(handles.uibuttongroup2,'selectedobject');
Header={'Train images','Test images','True Expressions','Accuracy %'};
Expressions={'Angry','Contempt','Disgusted','Embarrass','Fear','Happy','Neutral','Pride','Sad','Surprised','Total'};
   global knn_Result
   global Test_Class
if FE==handles.radiobutton1 && CL==handles.radiobutton3
            [Sheet_Na,Angry,Contempt,Disgusted,Embarrass,Fear,Happy,Neutral,Pride,Sad,Surprised,Total,knn_Result,Test_Class,False_Expr]=HOG_KNN(CS);
elseif FE==handles.radiobutton1 && CL==handles.radiobutton4
            [Sheet_Na,Angry,Contempt,Disgusted,Embarrass,Fear,Happy,Neutral,Pride,Sad,Surprised,Total,knn_Result,Test_Class,False_Expr]=HOG_SVM(CS);
elseif FE==handles.radiobutton2 && CL==handles.radiobutton3
            [Sheet_Na,Angry,Contempt,Disgusted,Embarrass,Fear,Happy,Neutral,Pride,Sad,Surprised,Total,knn_Result,Test_Class,False_Expr]=LBP_KNN(CS);
elseif FE==handles.radiobutton2 && CL==handles.radiobutton4
            [Sheet_Na,Angry,Contempt,Disgusted,Embarrass,Fear,Happy,Neutral,Pride,Sad,Surprised,Total,knn_Result,Test_Class,False_Expr]=LBP_SVM(CS);
end
All=vertcat(Angry,Contempt,Disgusted,Embarrass,Fear,Happy,Neutral,Pride,Sad,Surprised,Total);
%% Select file name By (Cell Size & Database name)
filename = [pwd '\ADFES.xlsx'];
[Sheet_Na1] = Select_Sheet(CS,Sheet_Na);
%% ============================================================
set(handles.uitable1,'Data',All,'ColumnName',Header,'RowName',Expressions);
%% 
FE1 = get(handles.checkbox1,'Value');
if FE1==1
Export(filename,Sheet_Na1,Angry,Contempt,Disgusted,Embarrass,Fear,Happy,Neutral,Pride,Sad,Surprised,False_Expr)
end
% msgbox('Operation Completed','Success');


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
   global knn_Result
   global Test_Class
[Cmat,DA]= confusion_matrix(knn_Result,Test_Class);
