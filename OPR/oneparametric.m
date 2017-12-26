function varargout = oneparametric(varargin)
% LABA1 MATLAB code for Laba1.fig
%      LABA1, by itself, creates a new LABA1 or raises the existing
%      singleton*.
%
%      H = LABA1 returns the handle to a new LABA1 or the handle to
%      the existing singleton*.
%
%      LABA1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LABA1.M with the given input arguments.
%
%      LABA1('Property','Value',...) creates a new LABA1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Laba1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Laba1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Laba1

% Last Modified by GUIDE v2.5 19-Dec-2017 21:23:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Laba1_OpeningFcn, ...
                   'gui_OutputFcn',  @Laba1_OutputFcn, ...
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


% --- Executes just before Laba1 is made visible.
function Laba1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Laba1 (see VARARGIN)

% Choose default command line output for Laba1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Laba1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Laba1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function FunctEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FunctEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FunctEdit as text
%        str2double(get(hObject,'String')) returns contents of FunctEdit as a double


% --- Executes during object creation, after setting all properties.
function FunctEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FunctEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AEdit_Callback(hObject, eventdata, handles)    
% hObject    handle to AEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AEdit as text
%        str2double(get(hObject,'String')) returns contents of AEdit as a double


% --- Executes during object creation, after setting all properties.
function AEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BEdit_Callback(hObject, eventdata, handles)
% hObject    handle to BEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BEdit as text
%        str2double(get(hObject,'String')) returns contents of BEdit as a double


% --- Executes during object creation, after setting all properties.
function BEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NEdit_Callback(hObject, eventdata, handles)
% hObject    handle to NEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NEdit as text
%        str2double(get(hObject,'String')) returns contents of NEdit as a double


% --- Executes during object creation, after setting all properties.
function NEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in DevideMethod.
function DevideMethod_Callback(hObject, eventdata, handles)
% hObject    handle to DevideMethod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2num(get(handles.AEdit,'String'));
b=str2num(get(handles.BEdit,'String'));
n=str2num(get(handles.NEdit,'String'));
funstr=get(handles.FunctEdit,'String');
func=inline(funstr);
v = [a, b];
[x, y] = devide(func,a,b,a,b,n,v);
xx = a:0.5:b;
f = func(xx,y);
min = func(x,y);
disp(min);
%disp(x);
%disp(y);
plot(xx,f,x,min,'rs');
if get(handles.XGrid,'Value')
    %Флаг включен, следует добавить линии сетки gca-get current axis
    set(gca,'XGrid','on')
else
    %флаг выключен, сл-но, следует убрать линии сетки
    set(gca,'XGrid','off')
end
%проверка флага "сетка по y"
if get(handles.YGrid,'Value')
    %Флаг включен, следует добавить линии сетки gca-get current axis
    set(gca,'YGrid','on')
else
    %флаг выключен, сл-но, следует убрать линии сетки
    set(gca,'YGrid','off')
end


% --- Executes on button press in GaussMethod.
function GaussMethod_Callback(hObject, eventdata, handles)
% hObject    handle to GaussMethod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2num(get(handles.AEdit,'String'));
b=str2num(get(handles.BEdit,'String'));
n=str2num(get(handles.NEdit,'String'));
funstr=get(handles.FunctEdit,'String');
func=inline(funstr);
[X,Y] = meshgrid(a:.2:b);
Z=100.*(Y-X.^2).^2 + (1 - X).^2;
[C,h]= contour(X,Y,Z,[10,100,1000,5000]);
clabel(C,h); 
v = [b, a];     
    for i = 1 : 20
         [x, y] = devide(func,a,b,a,b,n,v);
         line([v(1), x],[v(2),y],'Color','r','LineWidth',3); 
         v = [x , y];
    end
if get(handles.XGrid,'Value')
    %Флаг включен, следует добавить линии сетки gca-get current axis
    set(gca,'XGrid','on')
else
    %флаг выключен, сл-но, следует убрать линии сетки
    set(gca,'XGrid','off')
end
%проверка флага "сетка по y"
if get(handles.YGrid,'Value')
    %Флаг включен, следует добавить линии сетки gca-get current axis
    set(gca,'YGrid','on')
else
    %флаг выключен, сл-но, следует убрать линии сетки
    set(gca,'YGrid','off')
end

% --- Executes on button press in ClearButton.
function ClearButton_Callback(~, ~, ~)
% hObject    handle to ClearButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla
set(gca,'XGrid','off')
set(gca,'YGrid','off')



% --- Executes on button press in YGrid.
function YGrid_Callback(hObject, ~, handles)
% hObject    handle to YGrid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of YGrid


% --- Executes on button press in XGrid.
function XGrid_Callback(~, ~, handles)
% hObject    handle to XGrid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of XGrid
function [x, y] = devide(func, ax1, bx1,ay,by, del,v)
    z_min = 100000000000;
    ax = ax1;
    bx = bx1;
    x_min = 0;
    y_min = 0;
    x_avg = (ax + bx) / 2 ;  
    
    while abs((ax - bx)) >= del
        avg_left = (ax + x_avg) / 2;
        avg_right = (x_avg + bx) / 2;     
        if(func(ax,v(2)) > func(x_avg,v(2)) && func(bx,v(2)) > func(x_avg,v(2)))
                ax =  avg_left;
                bx =  avg_right;
        else if(func(ax,v(2)) > func(x_avg,v(2)))
                ax = x_avg; 
            else
                bx = x_avg;
            end
        end
        x_avg = (ax + bx) / 2;
       if (func(x_avg,v(2)) < z_min)
           z_min = func(x_avg,v(2));
           x_min = x_avg;
           y_min = v(2);
       end;   
    end;
    
    y_avg = (ay + by) / 2;
    while abs((ay - by))  > del
          avg_left = (ay + y_avg) / 2;
        avg_right = (y_avg + by) / 2;     
        if(func(x_min,ay) > func(x_min,y_avg) && func(x_min,by) > func(x_min,y_avg))
                ay =  avg_left;
                by =  avg_right;
        else if(func(x_min,ay) > func(x_min,y_avg))
                ay = y_avg; 
            else
                by = y_avg;
            end
        end
        y_avg = (ay + by) / 2;
        if(func(x_min,y_avg) < z_min)
            z_min = func(x_min,y_avg);
            y_min = y_avg;
        end     
    end
        x = x_min;
        y = y_min;


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fig = openfig('nelder.fig');
handl = guihandles(fig);
guidata(fig, handl);
