function varargout = nelder(varargin)
% NELDER MATLAB code for nelder.fig
%      NELDER, by itself, creates a new NELDER or raises the existing
%      singleton*.
%
%      H = NELDER returns the handle to a new NELDER or the handle to
%      the existing singleton*.
%
%      NELDER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NELDER.M with the given input arguments.
%
%      NELDER('Property','Value',...) creates a new NELDER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before nelder_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to nelder_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help nelder

% Last Modified by GUIDE v2.5 15-Dec-2017 19:39:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @nelder_OpeningFcn, ...
                   'gui_OutputFcn',  @nelder_OutputFcn, ...
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


% --- Executes just before nelder is made visible.
function nelder_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to nelder (see VARARGIN)

% Choose default command line output for nelder
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global F;
F = @(x,y) x.^2 - 4*x + y.^2 - y - x.*y;
ezcontour(F);
global V;
global V_old;
global V0;
global FirstTime;
FirstTime = 0;
V = [1 2; 1 -3; -2 1];
V0(1) = V(1, 1);
V0(2) = V(1, 2);
% UIWAIT makes nelder wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = nelder_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global F;
global V;
global V0;
%fun = @(u) u(1).^2 - 4*u(1) + u(2).^2 - u(2) - u(1).*u(2);
fun = @(u) F(u(1),u(2));

hold on
global V0_old;
V0_old = V0;
[V0,y0,dV,dy, V]=nelderFunc(fun,V,10,500,0.01,1);

PX(1) = V0_old(1);
PX(2) = V0(1);
PY(1) = V0_old(2);
PY(2) = V0(2);

global FirstTime;

if (FirstTime == 0)
    plot( PX, PY, 'b', 'lineWidth',2);
else
    FirstTime = 1;
end
scatter(V0(1),V0(2));

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global F;
global V;
%fun = @(u) u(1).^2 - 4*u(1) + u(2).^2 - u(2) - u(1).*u(2);
fun = @(u) F(u(1),u(2));

hold on
global V_old;
V_old = V;
[V0,y0,dV,dy, V]=nelderFuncAll(fun,V,10,500,0.01,1);

% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
global V;
global V0;
global V_old;
V = [1 2; 1 -3; -2 1];
V0(1) = V(1, 1);
V0(2) = V(1, 2);
V_old = V;
global F;
global FirstTime;
FirstTime = 0;
cla;
ezcontour(F);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
