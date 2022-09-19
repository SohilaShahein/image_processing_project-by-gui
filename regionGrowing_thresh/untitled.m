function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 26-Aug-2022 22:39:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function region__Callback(hObject, eventdata, handles)
% hObject    handle to region_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                 %
%                                                                 %
%                                                                 %
%                                                                 %
% Description: This code segments a region based on the value of  %
% the pixel selected and on which thresholding region it belongs  %
% based on the region growing algorithm.                          %
%                                                                 %
%                                                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

I = im2double(imread('medtest.png'));
%figure, imshow(I)
%imtool(I);
Isizes = size(I); %size of the image

threshI = multithresh(I, 3); %thresholding for three regions

[m, n]=ginput(1); %pick one pixel of the region to be segmented
c = impixel(I, m, n); %value of the pixel picked
currPix = c(1); %current pixel

surr = [-1 0; 1 0; 0 -1; 0 1]; %create a mask which represents the four surrounding pixels
mem = zeros(Isizes(1)*Isizes(2), 3); %create a register to put the pixel coordinates and pixel value 
mem(1, :) = [m, n, currPix]; %insert initial picked pixel to the register
regSize = 1; %initial size

J = zeros(Isizes(1), Isizes(2)); %create another black image with the same size as the original image

init = 1;
posInList = 1;
k=1; %create the initial condition to run the loop
%The region growing algorithm.
while(k==1)
    
  for l=init:posInList %first pointer on the register
  for j=1:4 %second pointer for the neighboring pixels
        m1 = m + surr(j,1);
        n1 = n + surr(j,2);
        
        check=(m1>=1)&&(n1>=1)&&(m1<=Isizes(1))&&(n1<=Isizes(2)); %simple check if pixel position still inside the image
        
        current = impixel(I, m1, n1);
        currPix = current(1);
        if(check && currPix<=threshI(2) && (J(m1, n1)==0)) %check if it belongs to the thresholding boundary and if not set yet on the image we want to recreate
            posInList = posInList+1;
            mem(posInList, :) = [m1, n1, currPix]; %add the new pixel
            J(m1, n1) = 1;
        end
  end
  end
  if(posInList == init) %when there is no more pixels to add
      k = 0; %make k=0 to close the loop
  else
      init = init+1;
      m = mem(init, 1, :);
      n = mem(init, 2, :);
      k = 1; %keep running the loop
  end
end

imshow(J); %the segmented black and white region
