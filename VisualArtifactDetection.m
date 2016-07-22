function varargout = VisualArtifactDetection(varargin)
% VISUALARTIFACTDETECTION MATLAB code for VisualArtifactDetection.fig
%      VISUALARTIFACTDETECTION, by itself, creates a new VISUALARTIFACTDETECTION or raises the existing
%      singleton*.
%
%      H = VISUALARTIFACTDETECTION returns the handle to a new VISUALARTIFACTDETECTION or the handle to
%      the existing singleton*.
%
%      VISUALARTIFACTDETECTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VISUALARTIFACTDETECTION.M with the given input arguments.
%
%      VISUALARTIFACTDETECTION('Property','Value',...) creates a new VISUALARTIFACTDETECTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VisualArtifactDetection_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VisualArtifactDetection_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VisualArtifactDetection

% Last Modified by GUIDE v2.5 22-Jul-2016 11:47:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VisualArtifactDetection_OpeningFcn, ...
                   'gui_OutputFcn',  @VisualArtifactDetection_OutputFcn, ...
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


% --- Executes just before VisualArtifactDetection is made visible.
function VisualArtifactDetection_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VisualArtifactDetection (see VARARGIN)

% Choose default command line output for VisualArtifactDetection
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VisualArtifactDetection wait for user response (see UIRESUME)
% uiwait(handles.figVisualArtDetec);


% --- Outputs from this function are returned to the command line.
function varargout = VisualArtifactDetection_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnRun.
function btnRun_Callback(hObject, eventdata, handles)
% hObject    handle to btnRun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dataDir = get(handles.editDataDir,'String');
visualMode = get(handles.popMenuVisualMode,'Value');
switch(visualMode)
    case 1
        disp(1);
    case 2
        disp(2);
    case 3
        disp(3);
    case 4
        disp(4);
    case 5
        disp(5);
end
        


% --- Executes on button press in btnCancel.
function btnCancel_Callback(hObject, eventdata, handles)
% hObject    handle to btnCancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;



function editDataDir_Callback(hObject, eventdata, handles)
% hObject    handle to editDataDir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editDataDir as text
%        str2double(get(hObject,'String')) returns contents of editDataDir as a double


% --- Executes during object creation, after setting all properties.
function editDataDir_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editDataDir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnBrowser.
function btnBrowser_Callback(hObject, eventdata, handles)
% hObject    handle to btnBrowser (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dataDir = uigetdir('.','Pick your data');
set(handles.editDataDir,'string',dataDir);


% --- Executes on selection change in popMenuVisualMode.
function popMenuVisualMode_Callback(hObject, eventdata, handles)
% hObject    handle to popMenuVisualMode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popMenuVisualMode contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popMenuVisualMode


% --- Executes during object creation, after setting all properties.
function popMenuVisualMode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popMenuVisualMode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
