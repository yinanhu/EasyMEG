function varargout = BrowseData(varargin)
% BROWSEDATA MATLAB code for BrowseData.fig
%      BROWSEDATA, by itself, creates a new BROWSEDATA or raises the existing
%      singleton*.
%
%      H = BROWSEDATA returns the handle to a new BROWSEDATA or the handle to
%      the existing singleton*.
%
%      BROWSEDATA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BROWSEDATA.M with the given input arguments.
%
%      BROWSEDATA('Property','Value',...) creates a new BROWSEDATA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BrowseData_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BrowseData_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BrowseData

% Last Modified by GUIDE v2.5 28-Jul-2016 16:21:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BrowseData_OpeningFcn, ...
                   'gui_OutputFcn',  @BrowseData_OutputFcn, ...
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


% --- Executes just before BrowseData is made visible.
function BrowseData_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BrowseData (see VARARGIN)
handles.isFData = varargin{2};
handles.dataDir = varargin{3};

% Choose default command line output for BrowseData
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BrowseData wait for user response (see UIRESUME)
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BrowseData_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in rbtnContinuousYes.
function rbtnContinuousYes_Callback(hObject, eventdata, handles)
% hObject    handle to rbtnContinuousYes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rbtnContinuousYes
if (get(hObject,'Value'))
    set(handles.rbtnContinuousNo,'Value',0);
else
    set(handles.rbtnContinuousNo,'Value',1);
end


% --- Executes on button press in rbtnContinuousNo.
function rbtnContinuousNo_Callback(hObject, eventdata, handles)
% hObject    handle to rbtnContinuousNo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rbtnContinuousNo
if (get(hObject,'Value'))
    set(handles.rbtnContinuousYes,'Value',0);
else
    set(handles.rbtnContinuousYes,'Value',1);
end


function editVerticalScaling_Callback(hObject, eventdata, handles)
% hObject    handle to editVerticalScaling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVerticalScaling as text
%        str2double(get(hObject,'String')) returns contents of editVerticalScaling as a double


% --- Executes during object creation, after setting all properties.
function editVerticalScaling_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVerticalScaling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editBlockSize_Callback(hObject, eventdata, handles)
% hObject    handle to editBlockSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editBlockSize as text
%        str2double(get(hObject,'String')) returns contents of editBlockSize as a double


% --- Executes during object creation, after setting all properties.
function editBlockSize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editBlockSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rbtnEventLabelOn.
function rbtnEventLabelOn_Callback(hObject, eventdata, handles)
% hObject    handle to rbtnEventLabelOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rbtnEventLabelOn
if (get(hObject,'Value'))
    set(handles.rbtnEventLabelOff,'Value',0);
else
    set(handles.rbtnEventLabelOff,'Value',1);
end


% --- Executes on button press in rbtnEventLabelOff.
function rbtnEventLabelOff_Callback(hObject, eventdata, handles)
% hObject    handle to rbtnEventLabelOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rbtnEventLabelOff
if (get(hObject,'Value'))
    set(handles.rbtnEventLabelOn,'Value',0);
else
    set(handles.rbtnEventLabelOn,'Value',1);
end

% --- Executes on button press in rbtnViewModeVertical.
function rbtnViewModeVertical_Callback(hObject, eventdata, handles)
% hObject    handle to rbtnViewModeVertical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rbtnViewModeVertical
if (get(hObject,'Value'))
    set(handles.rbtnViewModeButterfly,'Value',0);
else
    set(handles.rbtnViewModeButterfly,'Value',1);
end

% --- Executes on button press in rbtnViewModeButterfly.
function rbtnViewModeButterfly_Callback(hObject, eventdata, handles)
% hObject    handle to rbtnViewModeButterfly (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rbtnViewModeButterfly
if (get(hObject,'Value'))
    set(handles.rbtnViewModeVertical,'Value',0);
else
    set(handles.rbtnViewModeVertical,'Value',1);
end


function editEegScale_Callback(hObject, eventdata, handles)
% hObject    handle to editEegScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editEegScale as text
%        str2double(get(hObject,'String')) returns contents of editEegScale as a double


% --- Executes during object creation, after setting all properties.
function editEegScale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editEegScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editEogScale_Callback(hObject, eventdata, handles)
% hObject    handle to editEogScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editEogScale as text
%        str2double(get(hObject,'String')) returns contents of editEogScale as a double


% --- Executes during object creation, after setting all properties.
function editEogScale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editEogScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editEcgScale_Callback(hObject, eventdata, handles)
% hObject    handle to editEcgScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editEcgScale as text
%        str2double(get(hObject,'String')) returns contents of editEcgScale as a double


% --- Executes during object creation, after setting all properties.
function editEcgScale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editEcgScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editEmgScale_Callback(hObject, eventdata, handles)
% hObject    handle to editEmgScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editEmgScale as text
%        str2double(get(hObject,'String')) returns contents of editEmgScale as a double


% --- Executes during object creation, after setting all properties.
function editEmgScale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editEmgScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editMegScale_Callback(hObject, eventdata, handles)
% hObject    handle to editMegScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMegScale as text
%        str2double(get(hObject,'String')) returns contents of editMegScale as a double


% --- Executes during object creation, after setting all properties.
function editMegScale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMegScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popRenderer.
function popRenderer_Callback(hObject, eventdata, handles)
% hObject    handle to popRenderer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popRenderer contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popRenderer


% --- Executes during object creation, after setting all properties.
function popRenderer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popRenderer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnOk.
function btnOk_Callback(hObject, eventdata, handles)
% hObject    handle to btnOk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    ft_defaults;
catch
    errordlg('Please setup FieldTrip first.');
end

cfg = [];

if(get(handles.rbtnContinuousYes,'value'))
    cfg.continuous = 'yes';
else
    cfg.continuous = 'no';
end

if(get(handles.rbtnEventLabelOn,'value'))
    cfg.plotlabels = 'yes';
else
    cfg.plotlabels = 'no';
end

if(get(handles.rbtnViewModeVertical,'value'))
    cfg.viewmode = 'vertical';
else
    cfg.viewmode = 'butterfly';
end

eval(['cfg.ylim=',get(handles.editVerticalScaling,'String'),';']);

if(str2double(get(handles.editBlockSize,'String')))
    eval(['cfg.blocksize=',get(handles.editBlockSize,'String'),';']);
end


if(str2double(get(handles.editMegScale,'String')))
    eval(['cfg.megscale=',get(handles.editMegScale,'String'),';']);
end

if(str2double(get(handles.editEegScale,'String')))
    eval(['cfg.eegscale=',get(handles.editEegScale,'String'),';']);
end

if(str2double(get(handles.editEogScale,'String')))
    eval(['cfg.eogscale=',get(handles.editEogScale,'String'),';']);
end

if(str2double(get(handles.editEcgScale,'String')))
    eval(['cfg.ecgscale=',get(handles.editEcgScale,'String'),';']);
end

if(str2double(get(handles.editEmgScale,'String')))
    eval(['cfg.emgscale=',get(handles.editEmgScale,'String'),';']);
end

if(get(handles.checkboxPassBand,'Value'))
    eval(['cfg.emgscale=',get(handles.editPassBand,'String'),';']);
end

if(get(handles.checkboxStopBand,'Value'))
    eval(['cfg.emgscale=',get(handles.editStopBand,'String'),';']);
end

if(get(handles.checkboxDFT,'Value'))
    cfg.preproc.detrend = 'yes';
end

rendererList = get(handles.popRenderer,'String');
rendererNum = get(handles.popRenderer,'Value');
eval(['cfg.renderer=',rendererList{rendererNum},';']);

if(~handles.isFData)
    cfg.dataset = handles.dataDir;
    ft_databrowser(cfg);
else
    load(handles.dataDir);
    dataName = whos('-file',handles.dataDir);
    eval(['ft_databrowser(cfg,',dataName.name,');']);
end
uiresume(handles.figure1);

% --- Executes on button press in btnCancel.
function btnCancel_Callback(hObject, eventdata, handles)
% hObject    handle to btnCancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiresume(handles.figure1);


% --- Executes on button press in checkboxPassBand.
function checkboxPassBand_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxPassBand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxPassBand


% --- Executes on button press in checkboxStopBand.
function checkboxStopBand_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxStopBand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxStopBand



function editPassBand_Callback(hObject, eventdata, handles)
% hObject    handle to editPassBand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPassBand as text
%        str2double(get(hObject,'String')) returns contents of editPassBand as a double


% --- Executes during object creation, after setting all properties.
function editPassBand_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPassBand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editStopBand_Callback(hObject, eventdata, handles)
% hObject    handle to editStopBand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editStopBand as text
%        str2double(get(hObject,'String')) returns contents of editStopBand as a double


% --- Executes during object creation, after setting all properties.
function editStopBand_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editStopBand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkboxDFT.
function checkboxDFT_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxDFT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxDFT
