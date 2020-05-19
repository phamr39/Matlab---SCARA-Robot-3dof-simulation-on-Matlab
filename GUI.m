function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 24-Mar-2019 12:25:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(~, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(~, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, ~, ~)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, ~)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, ~)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit_leftwwheel_Callback(hObject, eventdata, handles)
% hObject    handle to edit_leftwwheel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_leftwwheel as text
%        str2double(get(hObject,'String')) returns contents of edit_leftwwheel as a double


% --- Executes during object creation, after setting all properties.
function edit_leftwwheel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_leftwwheel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_rightwheel_Callback(hObject, eventdata, handles)
% hObject    handle to edit_rightwheel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_rightwheel as text
%        str2double(get(hObject,'String')) returns contents of edit_rightwheel as a double


% --- Executes during object creation, after setting all properties.
function edit_rightwheel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_rightwheel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(~, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in checkbox2.
function checkbox2_Callback(~, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

ModelName = 'xeth';

%Lay toa do t? slider
theta1=get(handles.slider7,'value');
set(handles.edit_link1,'string',num2str(theta1))
set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
theta2=get(handles.slider8,'value');
theta3=get(handles.slider9,'value');
theta_slider=get(handles.slider10,'value');
%Xoay canh tay ben simulink
set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta3));
%Xoay tay gap
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta_slider));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(-theta_slider));
%Ma tran cosin chi huong
T1 = [ cosd(theta1) 0   sind(theta1)    30*cosd(theta1);
       sind(theta1) 0   -cosd(theta1)    30*sind(theta1);
       0            1       0           150;
       0            0       0            1];

T2 = [ cosd(theta2) -sind(theta2)   0   125*cosd(theta2);
       sind(theta2) cosd(theta2)    0   125*sind(theta2);
       0            0             1       0;
       0            0             0        1];
   
T3 = [ cosd(theta3) -sind(theta3)   0   75*cosd(theta3);
       sind(theta3) cosd(theta3)    0   75*sind(theta3);
       0            0               1     0;
       0            0               0       1];
T=T1*T2*T3;
px=T(1,4);
py=T(2,4);
pz=T(3,4);
set(handles.edit_endX,'string',num2str(px));
set(handles.edit_endY,'string',num2str(py));
set(handles.edit_endZ,'string',num2str(pz));
% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

ModelName = 'xeth';

%Lay toa do t? slider
theta1=get(handles.slider7,'value');
theta2=get(handles.slider8,'value');
set(handles.edit_link2,'string',num2str(theta2))
theta3=get(handles.slider9,'value');
theta_slider=get(handles.slider10,'value');
%Xoay canh tay ben simulink
set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta3));
%Xoay tay gap
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta_slider));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(-theta_slider));
%Ma tran cosin chi huong
T1 = [ cosd(theta1) 0   sind(theta1)    30*cosd(theta1);
       sind(theta1) 0   -cosd(theta1)    30*sind(theta1);
       0            1       0           150;
       0            0       0            1];

T2 = [ cosd(theta2) -sind(theta2)   0   125*cosd(theta2);
       sind(theta2) cosd(theta2)    0   125*sind(theta2);
       0            0             1       0;
       0            0             0        1];
   
T3 = [ cosd(theta3) -sind(theta3)   0   75*cosd(theta3);
       sind(theta3) cosd(theta3)    0   75*sind(theta3);
       0            0               1     0;
       0            0               0       1];
T=T1*T2*T3;
px=T(1,4);
py=T(2,4);
pz=T(3,4);
set(handles.edit_endX,'string',num2str(px));
set(handles.edit_endY,'string',num2str(py));
set(handles.edit_endZ,'string',num2str(pz));
% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

ModelName = 'xeth';

%Lay toa do t? slider
theta1=get(handles.slider7,'value');
theta2=get(handles.slider8,'value');
theta3=get(handles.slider9,'value');
set(handles.edit_link3,'string',num2str(theta3))
theta_slider=get(handles.slider10,'value');
%Xoay canh tay ben simulink
set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta3));
%Xoay tay gap
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta_slider));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(-theta_slider));
%Ma tran cosin chi huong
T1 = [ cosd(theta1) 0   sind(theta1)    30*cosd(theta1);
       sind(theta1) 0   -cosd(theta1)    30*sind(theta1);
       0            1       0           150;
       0            0       0            1];

T2 = [ cosd(theta2) -sind(theta2)   0   125*cosd(theta2);
       sind(theta2) cosd(theta2)    0   125*sind(theta2);
       0            0             1       0;
       0            0             0        1];
   
T3 = [ cosd(theta3) -sind(theta3)   0   75*cosd(theta3);
       sind(theta3) cosd(theta3)    0   75*sind(theta3);
       0            0               1     0;
       0            0               0       1];

T=T1*T2*T3;
px=T(1,4);
py=T(2,4);
pz=T(3,4);
set(handles.edit_endX,'string',num2str(px));
set(handles.edit_endY,'string',num2str(py));
set(handles.edit_endZ,'string',num2str(pz));
% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider10_Callback(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ModelName = 'xeth';

%Lay toa do t? slider
theta1=get(handles.slider7,'value');
theta2=get(handles.slider8,'value');
theta3=get(handles.slider9,'value');
theta_gripper=get(handles.slider10,'value');
%Xoay canh tay ben simulink
set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta2));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta3));
%Xoay tay gap
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta_gripper));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(-theta_gripper));
%Ma tran cosin chi huong
T1 = [ cosd(theta1) 0   sind(theta1)    30*cosd(theta1);
       sind(theta1) 0   -cosd(theta1)    30*sind(theta1);
       0            1       0           150;
       0            0       0            1];

T2 = [ cosd(theta2) -sind(theta2)   0   125*cosd(theta2);
       sind(theta2) cosd(theta2)    0   125*sind(theta2);
       0            0             1       0;
       0            0             0        1];
   
T3 = [ cosd(theta3) -sind(theta3)   0   75*cosd(theta3);
       sind(theta3) cosd(theta3)    0   75*sind(theta3);
       0            0               1     0;
       0            0               0       1];

T=T1*T2*T3;
px=T(1,4);
py=T(2,4);
pz=T(3,4);
%set(handles.edit13,'string',num2str(px));
%set(handles.edit14,'string',num2str(py));
%set(handles.edit15,'string',num2str(pz));
set(handles.edit_gripper,'string',num2str(theta_gripper));
% --- Executes during object creation, after setting all properties.
function slider10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit_link1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_link1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_link1 as text
%        str2double(get(hObject,'String')) returns contents of edit_link1 as a double

% --- Executes during object creation, after setting all properties.
function edit_link1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_link1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_link2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_link2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_link2 as text
%        str2double(get(hObject,'String')) returns contents of edit_link2 as a double


% --- Executes during object creation, after setting all properties.
function edit_link2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_link2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_link3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_link3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_link3 as text
%        str2double(get(hObject,'String')) returns contents of edit_link3 as a double


% --- Executes during object creation, after setting all properties.
function edit_link3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_link3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_gripper_Callback(hObject, eventdata, handles)
% hObject    handle to edit_gripper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: get(hObject,'String') returns contents of edit_gripper as text
%        str2double(get(hObject,'String')) returns contents of edit_gripper as a double


% --- Executes during object creation, after setting all properties.
function edit_gripper_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_gripper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_endX_Callback(hObject, eventdata, handles)
% hObject    handle to edit_endX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_endX as text
%        str2double(get(hObject,'String')) returns contents of edit_endX as a double


% --- Executes during object creation, after setting all properties.
function edit_endX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_endX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_endY_Callback(hObject, eventdata, handles)
% hObject    handle to edit_endY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_endY as text
%        str2double(get(hObject,'String')) returns contents of edit_endY as a double


% --- Executes during object creation, after setting all properties.
function edit_endY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_endY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_endZ_Callback(hObject, eventdata, handles)
% hObject    handle to edit_endZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_endZ as text
%        str2double(get(hObject,'String')) returns contents of edit_endZ as a double


% --- Executes during object creation, after setting all properties.
function edit_endZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_endZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_X.
function pushbutton_X_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Khai bao bien thetai 
global theta1;
global theta2;
global theta3;
ModelName = 'xeth';
button_status = get(handles.pushbutton_X,'value');
if (button_status)

    %lay du lieu 3 toa do
    px = str2num(get(handles.edit_endX,'string'));
    py = str2num(get(handles.edit_endY,'string'));
    pz = str2num(get(handles.edit_endZ,'string'));
    %tinh cac goc khop
    theta1 = atan(py/px)*(360/(2*pi));
    N1 = pz-150;
    N2 = px*cosd(theta1)+py*sind(theta1)-30;
    theta3 = acos((N1*N1+N2*N2-125*125-75*75)/(2*125*75))*(360/(2*pi));
    N3 = N2 - (75*N1*sind(theta3))/(125+75*cosd(theta3));
    N4 = (125^2+75^2+2*75*125*cosd(theta3))/(125+75*cosd(theta3));
    theta2 = asin(N3/N4)*(360/(2*pi))-90;
    %update len giao dien va simulink
    set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
    set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta2));
    set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta3));
    
    set(handles.slider7,'string',num2str(theta1));
    set(handles.slider8,'string',num2str(theta2));
    set(handles.slider9,'string',num2str(theta3));
    
    set(handles.edit_link1,'string',num2str(theta1));
    set(handles.edit_link2,'string',num2str(theta2));
    set(handles.edit_link3,'string',num2str(theta3));
end;


% --- Executes on button press in set_link1.
function set_link1_Callback(hObject, eventdata, handles)
% hObject    handle to set_link1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ModelName = 'xeth';
btstt_1 = get(handles.set_link1,'value');
if(btstt_1)
    theta1 = get(handles.edit_link1,'value');
    theta2 = get(handles.edit_link2,'value');
    theta3 = get(handles.edit_link3,'value');
    
    set(handles.slider7,'value',theta1);
    
    
    set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));

T1 = [ cosd(theta1) 0   sind(theta1)    30*cosd(theta1);
       sind(theta1) 0   -cosd(theta1)    30*sind(theta1);
       0            1       0           150;
       0            0       0            1];

T2 = [ cosd(theta2) -sind(theta2)   0   125*cosd(theta2);
       sind(theta2) cosd(theta2)    0   125*sind(theta2);
       0            0             1       0;
       0            0             0        1];
   
T3 = [ cosd(theta3) -sind(theta3)   0   75*cosd(theta3);
       sind(theta3) cosd(theta3)    0   75*sind(theta3);
       0            0               1     0;
       0            0               0       1];
T=T1*T2*T3;
px=T(1,4);
py=T(2,4);
pz=T(3,4);
set(handles.edit_endX,'string',num2str(px));
%set(handles.edit_endY,'string',num2str(py));
%set(handles.edit_endZ,'string',num2str(pz));
end;
% --- Executes on button press in set_link2.
function set_link2_Callback(hObject, eventdata, handles)
% hObject    handle to set_link2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ModelName = 'xeth';
btstt_2 = get(handles.set_link2,'value');
if(btstt_2)
    theta1 = get(handles.edit_link1,'value');
    theta2 = get(handles.edit_link2,'value');
    theta3 = get(handles.edit_link3,'value');
    
    
    set(handles.slider8,'value',theta2);

    

    set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta2));

T1 = [ cosd(theta1) 0   sind(theta1)    30*cosd(theta1);
       sind(theta1) 0   -cosd(theta1)    30*sind(theta1);
       0            1       0           150;
       0            0       0            1];

T2 = [ cosd(theta2) -sind(theta2)   0   125*cosd(theta2);
       sind(theta2) cosd(theta2)    0   125*sind(theta2);
       0            0             1       0;
       0            0             0        1];
   
T3 = [ cosd(theta3) -sind(theta3)   0   75*cosd(theta3);
       sind(theta3) cosd(theta3)    0   75*sind(theta3);
       0            0               1     0;
       0            0               0       1];
T=T1*T2*T3;
px=T(1,4);
py=T(2,4);
pz=T(3,4);
%set(handles.edit_endX,'string',num2str(px));
set(handles.edit_endY,'string',num2str(py));
%set(handles.edit_endZ,'string',num2str(pz));
end;

% --- Executes on button press in set_link3.
function set_link3_Callback(hObject, eventdata, handles)
% hObject    handle to set_link3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ModelName = 'xeth';
btstt_3 = get(handles.set_link3,'value');
if(btstt_3)
    theta1 = get(handles.edit_link1,'value');
    theta2 = get(handles.edit_link2,'value');
    theta3 = get(handles.edit_link3,'value');
    
    
    set(handles.slider9,'value',theta3);

    set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta3));
    
    
T1 = [ cosd(theta1) 0   sind(theta1)    30*cosd(theta1);
       sind(theta1) 0   -cosd(theta1)    30*sind(theta1);
       0            1       0           150;
       0            0       0            1];

T2 = [ cosd(theta2) -sind(theta2)   0   125*cosd(theta2);
       sind(theta2) cosd(theta2)    0   125*sind(theta2);
       0            0             1       0;
       0            0             0        1];
   
T3 = [ cosd(theta3) -sind(theta3)   0   75*cosd(theta3);
       sind(theta3) cosd(theta3)    0   75*sind(theta3);
       0            0               1     0;
       0            0               0       1];
T=T1*T2*T3;
px=T(1,4);
py=T(2,4);
pz=T(3,4);
%set(handles.edit_endX,'string',num2str(px));
%set(handles.edit_endY,'string',num2str(py));
set(handles.edit_endZ,'string',num2str(pz));
end;


% --- Executes on button press in set_link4.
function set_link4_Callback(hObject, eventdata, handles)
% hObject    handle to set_link4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ModelName = 'xeth';
btstt_4 = get(handles.set_link4,'value');
if(btstt_4)
  
    theta_gripper = get(handles.edit_gripper,'value');
    set(handles.slider10,'value',theta_gripper);
    
set_param([ModelName '/Slider Gain3'],'Gain',num2str(theta_gripper));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(-theta_gripper));

end;



function editxa_Callback(hObject, eventdata, handles)
% hObject    handle to editxa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editxa as text
%        str2double(get(hObject,'String')) returns contents of editxa as a double


% --- Executes during object creation, after setting all properties.
function editxa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editxa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editya_Callback(hObject, eventdata, handles)
% hObject    handle to editya (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editya as text
%        str2double(get(hObject,'String')) returns contents of editya as a double


% --- Executes during object creation, after setting all properties.
function editya_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editya (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editza_Callback(hObject, eventdata, handles)
% hObject    handle to editza (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editza as text
%        str2double(get(hObject,'String')) returns contents of editza as a double


% --- Executes during object creation, after setting all properties.
function editza_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editza (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editxb_Callback(hObject, eventdata, handles)
% hObject    handle to editxb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editxb as text
%        str2double(get(hObject,'String')) returns contents of editxb as a double


% --- Executes during object creation, after setting all properties.
function editxb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editxb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edityb_Callback(hObject, eventdata, handles)
% hObject    handle to edityb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edityb as text
%        str2double(get(hObject,'String')) returns contents of edityb as a double


% --- Executes during object creation, after setting all properties.
function edityb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edityb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editzb_Callback(hObject, eventdata, handles)
% hObject    handle to editzb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editzb as text
%        str2double(get(hObject,'String')) returns contents of editzb as a double


% --- Executes during object creation, after setting all properties.
function editzb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editzb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_circle.
function pushbutton_circle_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_circle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global theta1;
global theta2;
global theta3;
global t;
ModelName = 'xeth';
button_circle = get(handles.pushbutton_circle,'value');
if (button_circle)
    px = str2num(get(handles.editxa,'string'));
    py = str2num(get(handles.editya,'string'));
    pz = str2num(get(handles.editza,'string'));
    
    time = str2num(get(handles.edit_time,'string'));
    
    rot = str2num(get(handles.edit_goc,'string'));
    %tinh cac goc khop
    theta1 = atan(py/px)*(360/(2*pi));
    N1 = pz-150;
    N2 = px*cosd(theta1)+py*sind(theta1)-30;
    theta3 = acos((N1*N1+N2*N2-125*125-75*75)/(2*125*75))*(360/(2*pi));
    tempX=theta3;
    N3 = N2 - (75*N1*sind(theta3))/(125+75*cosd(theta3));
    N4 = (125^2+75^2+2*75*125*cosd(theta3))/(125+75*cosd(theta3));
    theta2 = asin(N3/N4)*(360/(2*pi))-90;
    tempY=theta2;
    %update len giao dien va simulink
    set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
    set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta2));
    set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta3));
    
    for t = 1:time
        theta1 = (rot/time)*t;
        set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
    end
    for t = 1:time
    t=t+1;
    theta1 = (rot/time)*t;
    theta2 = tempY;
    theta3 = tempX;
T1 = [ cosd(theta1) 0   sind(theta1)    30*cosd(theta1);
       sind(theta1) 0   -cosd(theta1)    30*sind(theta1);
       0            1       0           150;
       0            0       0            1];

T2 = [ cosd(theta2) -sind(theta2)   0   125*cosd(theta2);
       sind(theta2) cosd(theta2)    0   125*sind(theta2);
       0            0             1       0;
       0            0             0        1];
   
T3 = [ cosd(theta3) -sind(theta3)   0   75*cosd(theta3);
       sind(theta3) cosd(theta3)    0   75*sind(theta3);
       0            0               1     0;
       0            0               0       1];
T=T1*T2*T3;
x(t)=T(1,4);
y(t)=T(2,4);
    z(t) = pz;
    axes(handles.axes5);
    plot3(x(:),y(:),z(:),'.r');
    xlabel('x');
    ylabel('y');
    zlabel('z');
    title('End point orbit');
    end
end


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global theta1;
global theta2;
global theta3;
global t;
ModelName = 'xeth';
button_line = get(handles.pushbutton25,'value');
if (button_line)
    xa = str2num(get(handles.editxa,'string'));
    ya = str2num(get(handles.editya,'string'));
    za = str2num(get(handles.editza,'string'));
    
    xb = str2num(get(handles.editxb,'string'));
    yb = str2num(get(handles.edityb,'string'));
    zb = str2num(get(handles.editzb,'string'));
    
    time = str2num(get(handles.edit_time,'string'));
    
    px = ((xb-xa)/time)*t+xa;
    py = ((yb-ya)/time)*t+ya;
    pz = ((zb-za)/time)*t+za;
    
    for t = 1:time
        
    px = ((xb-xa)/time)*t+xa;
    py = ((yb-ya)/time)*t+ya;
    pz = ((zb-za)/time)*t+za; 
    
    theta1 = atan(py/px)*(360/(2*pi));
    N1 = pz-150;
    N2 = px*cosd(theta1)+py*sind(theta1)-30;
    theta3 = acos((N1*N1+N2*N2-125*125-75*75)/(2*125*75))*(360/(2*pi));
    N3 = N2 - (75*N1*sind(theta3))/(125+75*cosd(theta3));
    N4 = (125^2+75^2+2*75*125*cosd(theta3))/(125+75*cosd(theta3));
    theta2 = asin(N3/N4)*(360/(2*pi))-90;
    %update len giao dien va simulink
    set_param([ModelName '/Slider Gain'],'Gain',num2str(theta1));
    set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta2));
    set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta3));
    end
    for t = 1:time
    t=t+1;
    x(t) = ((xb-xa)/time)*t+xa;
    y(t) = ((yb-ya)/time)*t+ya;
    z(t) = ((zb-za)/time)*t+za;
    axes(handles.axes5);
    plot3(x(:),y(:),z(:),'.r');
    xlabel('x');
    ylabel('y');
    zlabel('z');
    title('End point orbit');
    end
end



function edit_time_Callback(hObject, eventdata, handles)
% hObject    handle to edit_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_time as text
%        str2double(get(hObject,'String')) returns contents of edit_time as a double


% --- Executes during object creation, after setting all properties.
function edit_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_goc_Callback(hObject, eventdata, handles)
% hObject    handle to edit_goc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_goc as text
%        str2double(get(hObject,'String')) returns contents of edit_goc as a double


% --- Executes during object creation, after setting all properties.
function edit_goc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_goc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes5


% --- Executes on button press in pushbutton_force.
function pushbutton_force_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_force (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global theta1a;
global theta2a;
global theta3a;
global theta1b;
global theta2b;
global theta3b;
global t;
ModelName = 'xeth';
button_force = get(handles.pushbutton_force,'value');
if (button_force)
    xa = str2num(get(handles.editxa,'string'));
    ya = str2num(get(handles.editya,'string'));
    za = str2num(get(handles.editza,'string'));
    
    xb = str2num(get(handles.editxb,'string'));
    yb = str2num(get(handles.edityb,'string'));
    zb = str2num(get(handles.editzb,'string'));
    
    time = str2num(get(handles.edit_time,'string'));
    
    theta1a = atan(ya/xa)*(360/(2*pi));
    N1a = za-150;
    N2a = xa*cosd(theta1a)+ya*sind(theta1a)-30;
    theta3a = acos((N1a*N1a+N2a*N2a-125*125-75*75)/(2*125*75))*(360/(2*pi));
    N3a = N2a - (75*N1a*sind(theta3a))/(125+75*cosd(theta3a));
    N4a = (125^2+75^2+2*75*125*cosd(theta3a))/(125+75*cosd(theta3a));
    theta2a = asin(N3a/N4a)*(360/(2*pi))-90;
    
    theta1b = atan(yb/xb)*(360/(2*pi));
    N1b = zb-150;
    N2b = xb*cosd(theta1b)+yb*sind(theta1b)-30;
    theta3b = acos((N1b*N1b+N2b*N2b-125*125-75*75)/(2*125*75))*(360/(2*pi));
    N3b = N2b - (75*N1b*sind(theta3b))/(125+75*cosd(theta3b));
    N4b = (125^2+75^2+2*75*125*cosd(theta3b))/(125+75*cosd(theta3b));
    theta2b = asin(N3b/N4b)*(360/(2*pi))-90;
    
    theta1 = theta1b-theta1a;
    theta2 = theta2b-theta2a;
    theta3 = theta3b-theta3a;
    
    t = [1:0.01:time]
    theta1 = ((theta1b-theta1a)/time)*t;
    theta2 = ((theta1b-theta1a)/time)*t;
    theta3 = ((theta1b-theta1a)/time)*t;
    axes(handles.axes3);
    y = (19291125*sin(2*((theta1b-theta1a)/time)*t + ((theta1b-theta1a)/time)*t))/4 + 15916250*sin(2*((theta1b-theta1a)/time)*t) + (11574675*sin(2*((theta1b-theta1a)/time)*t+ 2*((theta1b-theta1a)/time)*t))/8 + (2314935*sin(((theta1b-theta1a)/time)*t + ((theta1b-theta1a)/time)*t))/2 + (4590351421219537*cos(theta2))/17179869184 + 7639800*sin(((theta1b-theta1a)/time)*t);
    plot(t,y,'.r');
    z = (19291125*sin(2*((theta1b-theta1a)/time)*t + ((theta1b-theta1a)/time)*t))/8 + (11574675*sin(2*((theta1b-theta1a)/time)*t + 2*((theta1b-theta1a)/time)*t))/8 + (2314935*sin(((theta1b-theta1a)/time)*t + ((theta1b-theta1a)/time)*t))/2 + (93972753829289*cos(((theta1b-theta1a)/time)*t))/2147483648 + (19291125*sin(((theta1b-theta1a)/time)*t))/8;
    hold on;
    plot(t,z,'.g');
    hold off;
    ylabel('M(mmN*mm)');
    xlabel('t(s)');
end


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes3
