function varargout = EasyMEG(varargin)
% EASYMEG MATLAB code for EasyMEG.fig
%      EASYMEG, by itself, creates a new EASYMEG or raises the existing
%      singleton*.
%
%      H = EASYMEG returns the handle to a new EASYMEG or the handle to
%      the existing singleton*.
%
%      EASYMEG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EASYMEG.M with the given input arguments.
%
%      EASYMEG('Property','Value',...) creates a new EASYMEG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EasyMEG_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EasyMEG_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EasyMEG

% Last Modified by GUIDE v2.5 13-Jul-2016 23:24:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EasyMEG_OpeningFcn, ...
                   'gui_OutputFcn',  @EasyMEG_OutputFcn, ...
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


% --- Executes just before EasyMEG is made visible.
function EasyMEG_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EasyMEG (see VARARGIN)

% Choose default command line output for EasyMEG
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EasyMEG wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% ResizeFonts - get 'position'
pos=get(gcf,'position');
KD_Old=pos(3);
GD_Old=pos(4);
handles.KD_Old=KD_Old;
handles.GD_Old=GD_Old;

% Show logo.png
% axes(handles.axesLogo);
% logo=imread('logo.png');
% imshow(logo);
setLogo(handles);
s = {'An easy-to-use';'software for MEG analysis'};
set(findobj('tag','txtLogo'), 'string', s);

% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfield(handles,'KD_Old')&&isfield(handles,'GD_Old')
KD_Old=handles.KD_Old;
GD_Old=handles.GD_Old; 
pos=get(gcf,'position');     
KD_New=pos(3);  
GD_New=pos(4);  
if(KD_Old~=KD_New||GD_Old~=GD_New)
    k=KD_New*GD_New/KD_Old/GD_Old;
    KD_Old=KD_New;
    GD_Old=GD_New;
    k1=get(handles.text33,'FontSize');
    set(handles.text33,'FontSize',k1*k);
    set(handles.pushbutton1,'FontSize',k1*k);
    handles.KD_Old=KD_Old;
    handles.GD_Old=GD_Old;  
end;
end;
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = EasyMEG_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnLogo.
function btnLogo_Callback(hObject, eventdata, handles)
% hObject    handle to btnLogo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
web('http://easymeg.github.io/','-browser');


% --- Executes on button press in btnPreprocessing.
function btnPreprocessing_Callback(hObject, eventdata, handles)
% hObject    handle to btnPreprocessing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnSenAnalysis.
function btnSenAnalysis_Callback(hObject, eventdata, handles)
% hObject    handle to btnSenAnalysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnSourceRecon.
function btnSourceRecon_Callback(hObject, eventdata, handles)
% hObject    handle to btnSourceRecon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnConnectivity.
function btnConnectivity_Callback(hObject, eventdata, handles)
% hObject    handle to btnConnectivity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnStat.
function btnStat_Callback(hObject, eventdata, handles)
% hObject    handle to btnStat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnVisualization.
function btnVisualization_Callback(hObject, eventdata, handles)
% hObject    handle to btnVisualization (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over txtAbout.
function txtAbout_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to txtAbout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
web('mailto:nn.zach@gmail.com','-browser');

function setLogo(handles)
logo=imread('logo.png');

set(handles.btnLogo,'CData',logo);
