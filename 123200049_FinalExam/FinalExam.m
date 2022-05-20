function varargout = FinalExam(varargin)
% FINALEXAM MATLAB code for FinalExam.fig
%      FINALEXAM, by itself, creates a new FINALEXAM or raises the existing
%      singleton*.
%
%      H = FINALEXAM returns the handle to a new FINALEXAM or the handle to
%      the existing singleton*.
%
%      FINALEXAM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINALEXAM.M with the given input arguments.
%
%      FINALEXAM('Property','Value',...) creates a new FINALEXAM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FinalExam_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FinalExam_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FinalExam

% Last Modified by GUIDE v2.5 20-May-2022 09:08:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FinalExam_OpeningFcn, ...
                   'gui_OutputFcn',  @FinalExam_OutputFcn, ...
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


% --- Executes just before FinalExam is made visible.
function FinalExam_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FinalExam (see VARARGIN)

% Choose default command line output for FinalExam
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FinalExam wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FinalExam_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btntable_049.
function btntable_049_Callback(hObject, eventdata, handles)
% hObject    handle to btntable_049 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dataset = readcell('laptop_price.csv', 'Range', 'B2:M51');
header = readcell('laptop_price.csv', 'Range', 'B1:M1');

set (handles.btntable_049, 'Data', dataset, 'ColumnName', header);


% --- Executes on button press in btnresult_049.
function btnresult_049_Callback(hObject, eventdata, handles)
% hObject    handle to btnresult_049 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
k = [0, 1, 0, 0]
w = [1, 3, 2, 4]

[m,n] = size(x);
w=w./sum(w);

for j=1:n
    if k(j)==0, w(j)=-1*w(j);
    end
end

for i=1:m
    S(i) = prod(x(i,:).^w);
end

V = S/sum(S);

score = max(V);
set(handles.score_049, 'string', score);


% --- Executes during object creation, after setting all properties.
function result_049_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result_049 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
