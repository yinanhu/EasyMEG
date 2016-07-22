function varargout = Preprocessing(varargin)
% PREPROCESSING MATLAB code for Preprocessing.fig
%      PREPROCESSING, by itself, creates a new PREPROCESSING or raises the existing
%      singleton*.
%
%      H = PREPROCESSING returns the handle to a new PREPROCESSING or the handle to
%      the existing singleton*.
%
%      PREPROCESSING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PREPROCESSING.M with the given input arguments.
%
%      PREPROCESSING('Property','Value',...) creates a new PREPROCESSING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Preprocessing_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Preprocessing_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Preprocessing

% Last Modified by GUIDE v2.5 22-Jul-2016 22:12:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Preprocessing_OpeningFcn, ...
                   'gui_OutputFcn',  @Preprocessing_OutputFcn, ...
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


% --- Executes just before Preprocessing is made visible.
function Preprocessing_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Preprocessing (see VARARGIN)

% Choose default command line output for Preprocessing
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Preprocessing wait for user response (see UIRESUME)
% uiwait(handles.figPreprocessing);


% --- Outputs from this function are returned to the command line.
function varargout = Preprocessing_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function editOut_Callback(hObject, eventdata, handles)
% hObject    handle to editOut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editOut as text
%        str2double(get(hObject,'String')) returns contents of editOut as a double


% --- Executes during object creation, after setting all properties.
function editOut_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editOut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnBrowserOut.
function btnBrowserOut_Callback(hObject, eventdata, handles)
% hObject    handle to btnBrowserOut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[OutName,OutDir]= uiputfile('*.mat','Save preprocessed data.');
if(OutDir)
    set(handles.editOut,'String',[OutDir,OutName]);
end


% --- Executes on button press in rbtnFData.
function rbtnFData_Callback(hObject, eventdata, handles)
% hObject    handle to rbtnFData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rbtnFData
if(~get(hObject,'Value'))
    set(handles.rbtnFData,'Value',0);
    set(handles.rbtnRData,'Value',1);

    set(handles.editFData,'Enable','off');
    set(handles.btnBrowserFData,'Enable','off');

    set(handles.editRData,'Enable','on');
    set(handles.btnBrowserRData,'Enable','on');

else
    set(handles.rbtnRData,'Value',0);
    set(handles.rbtnFData,'Value',1);

    set(handles.editFData,'Enable','on');
    set(handles.btnBrowserFData,'Enable','on');

    set(handles.editRData,'Enable','off');
    set(handles.btnBrowserRData,'Enable','off');
end


% --- Executes on button press in rbtnRData.
function rbtnRData_Callback(hObject, eventdata, handles)
% hObject    handle to rbtnRData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rbtnRData
if(get(hObject,'Value'))
    set(handles.rbtnFData,'Value',0);
    set(handles.rbtnRData,'Value',1);

    set(handles.editFData,'Enable','off');
    set(handles.btnBrowserFData,'Enable','off');

    set(handles.editRData,'Enable','on');
    set(handles.btnBrowserRData,'Enable','on');

else
    set(handles.rbtnRData,'Value',0);
    set(handles.rbtnFData,'Value',1);

    set(handles.editFData,'Enable','on');
    set(handles.btnBrowserFData,'Enable','on');

    set(handles.editRData,'Enable','off');
    set(handles.btnBrowserRData,'Enable','off');
end


function editFData_Callback(hObject, eventdata, handles)
% hObject    handle to editFData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFData as text
%        str2double(get(hObject,'String')) returns contents of editFData as a double


% --- Executes during object creation, after setting all properties.
function editFData_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnBrowserFData.
function btnBrowserFData_Callback(hObject, eventdata, handles)
% hObject    handle to btnBrowserFData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FDataName,FDataDir]= uigetfile();
if (FDataDir)
    set(handles.editFData,'String',[FDataDir,FDataName]);
end



function editRData_Callback(hObject, eventdata, handles)
% hObject    handle to editRData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editRData as text
%        str2double(get(hObject,'String')) returns contents of editRData as a double


% --- Executes during object creation, after setting all properties.
function editRData_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editRData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnBrowserRData.
function btnBrowserRData_Callback(hObject, eventdata, handles)
% hObject    handle to btnBrowserRData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
RDataDir = uigetdir();
if(RDataDir)
    set(handles.editRData,'String',RDataDir);
end


% --- Executes on button press in btnOk.
function btnOk_Callback(hObject, eventdata, handles)
% hObject    handle to btnOk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnCancel.
function btnCancel_Callback(hObject, eventdata, handles)
% hObject    handle to btnCancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;

% --- Executes on selection change in popPreprocessing.
function popPreprocessing_Callback(hObject, eventdata, handles)
% hObject    handle to popPreprocessing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popPreprocessing contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popPreprocessing
if (get(hObject,'Value')==2)
    
    set(handles.rbtnFData,'Value',0);
    set(handles.rbtnRData,'Value',1);
    set(handles.rbtnFData,'Enable','off');
    set(handles.rbtnRData,'Enable','off');

    set(handles.editFData,'Enable','off');
    set(handles.btnBrowserFData,'Enable','off');

    set(handles.editRData,'Enable','on');
    set(handles.btnBrowserRData,'Enable','on');
    
elseif (get(hObject,'Value')==1)
    set(handles.rbtnFData,'Enable','on');
    set(handles.rbtnRData,'Enable','on');
    set(handles.editOut,'Enable','off');
    set(handles.btnBrowserOut,'Enable','off');
else
    set(handles.rbtnFData,'Enable','on');
    set(handles.rbtnRData,'Enable','on');
    set(handles.editOut,'Enable','on');
    set(handles.btnBrowserOut,'Enable','on');
end


% --- Executes during object creation, after setting all properties.
function popPreprocessing_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popPreprocessing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
