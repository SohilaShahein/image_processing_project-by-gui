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

% Last Modified by GUIDE v2.5 26-Aug-2022 14:18:57

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
function point_operation_Callback(hObject, eventdata, handles)
% hObject    handle to point_operation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function img_hist_Callback(hObject, eventdata, handles)
% hObject    handle to img_hist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Neigh_processing_Callback(hObject, eventdata, handles)
% hObject    handle to Neigh_processing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function hist_stretch_Callback(hObject, eventdata, handles)
% hObject    handle to hist_stretch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function hist_eq_Callback(hObject, eventdata, handles)
% hObject    handle to hist_eq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function change_color_Callback(hObject, eventdata, handles)
% hObject    handle to change_color (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function swap_channel_Callback(hObject, eventdata, handles)
% hObject    handle to swap_channel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function eliminate_channel_Callback(hObject, eventdata, handles)
% hObject    handle to eliminate_channel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Addition__Callback(hObject, eventdata, handles)
% hObject    handle to Addition_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
img3  = imread('flower.jpg');
img2 = imresize(img3,[size(img1,1) size(img1,2)]); 
add = imadd(img1,img2);  
subplot(1,3,1),imshow(img1);
subplot(1,3,2),imshow(img2);
subplot(1,3,3),imshow(add),title('img1+img2');


% --------------------------------------------------------------------
function substraction__Callback(hObject, eventdata, handles)
% hObject    handle to substraction_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
img3  = imread('flower.jpg');
img2 = imresize(img3,[size(img1,1) size(img1,2)]);
sub = imsubtract(img1,img2);
subplot(1,3,1),imshow(img1);
subplot(1,3,2),imshow(img2);
subplot(1,3,3),imshow(sub),title('img1-img2');
% --------------------------------------------------------------------
function complement__Callback(hObject, eventdata, handles)
% hObject    handle to complement_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
img3  = imread('flower.jpg');
img2 = imresize(img3,[size(img1,1) size(img1,2)]);
comp = imcomplement(img2);
subplot(1,2,1),imshow(img2);
subplot(1,2,2),imshow(comp),title('complement(img2)');

% --------------------------------------------------------------------
function division_Callback(hObject, eventdata, handles)
% hObject    handle to division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
img3  = imread('flower.jpg');
img2 = imresize(img3,[size(img1,1) size(img1,2)]);
subplot(1,3,1),imshow(img1);
subplot(1,3,2),imshow(img2);
div = imdivide(img1,2);
subplot(1,3,3),imshow(div),title('img1/img2');

% --------------------------------------------------------------------
function average_Callback(hObject, eventdata, handles)
% hObject    handle to average (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
img3  = imread('flower.jpg');
img2 = imresize(img3,[size(img1,1) size(img1,2)]);
avg = (img1+img2)/2;
subplot(1,3,1),imshow(img1);
subplot(1,3,2),imshow(img2);
subplot(1,3,3),imshow(avg),title('avg(img1,img2)');

% --------------------------------------------------------------------
function max_Callback(hObject, eventdata, handles)
% hObject    handle to max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
img3  = imread('flower.jpg');
img2 = imresize(img3,[size(img1,1) size(img1,2)]);
maximum = max(img1,img2);
subplot(1,3,1),imshow(img1);
subplot(1,3,2),imshow(img2);
subplot(1,3,3),imshow(maximum),title('max(img1,img2)');

% --------------------------------------------------------------------
function eliminate_red_Callback(hObject, eventdata, handles)
% hObject    handle to eliminate_red (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
GB=img1;   %Eliminating R,G,B
RB=img1;
RG=img1;
GB(:,:,1)=0;  
RB(:,:,2)=0; 
RG(:,:,3)=0;
subplot(1,2,1),imshow(img1),title('original img1');
subplot(1,2,2),imshow(GB),title(' after Eliminate R');
% --------------------------------------------------------------------
function eliminate_g_Callback(hObject, eventdata, handles)
% hObject    handle to eliminate_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');

GB=img1;   %Eliminating R,G,B
RB=img1;
RG=img1;
GB(:,:,1)=0;  
RB(:,:,2)=0; 
RG(:,:,3)=0;
subplot(1,2,1),imshow(img1),title('original img1');

subplot(1,2,2),imshow(RB),title(' after Eliminate G');

% --------------------------------------------------------------------
function eliminate_blue_Callback(hObject, eventdata, handles)
% hObject    handle to eliminate_blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');

GB=img1;   %Eliminating R,G,B
RB=img1;
RG=img1;
GB(:,:,1)=0;  
RB(:,:,2)=0; 
RG(:,:,3)=0;
subplot(1,2,1),imshow(img1),title('original img1');

subplot(1,2,2),imshow(RG),title('after Eliminate B');



% --------------------------------------------------------------------
function R_G_Callback(hObject, eventdata, handles)
% hObject    handle to R_G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
img3  = imread('flower.jpg');

img2 = imresize(img3,[size(img1,1) size(img1,2)]); 
R=img2(:,:,1);   %swapping from G to R
G=img2(:,:,2);
B=img2(:,:,3);
temp=R;
R=G;
G=temp;
im(:,:,1)=R;
im(:,:,2)=G;
im(:,:,3)=B;
subplot(2,1,1),imshow(img2),title('original');
subplot(2,1,2),imshow(im), title(' from RGB to GRB');


% --------------------------------------------------------------------
function R_B_Callback(hObject, eventdata, handles)
% hObject    handle to R_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
r = img1(:,:,1);   %swapping from R to B
g = img1(:,:,2);
b = img1(:,:,3);
temp = r;
r = b;
b = temp;
img(:,:,1) = r;
img(:,:,2) = g;
img(:,:,3) = b;
subplot(2,1,1),imshow(img1),title('original');
subplot(2,1,2),imshow(img), title(' from RGB to BGR');

% --------------------------------------------------------------------
function G_B_Callback(hObject, eventdata, handles)
% hObject    handle to G_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img3  = imread('flower.jpg');
img1 = imread('sky.jpg');
img2 = imresize(img3,[size(img1,1) size(img1,2)]);
r1 = img2(:,:,1);   %swapping from G to B
g1 = img2(:,:,2);
b1 = img2(:,:,3);
temp = g1;
g1 = b1;
b1 = temp;
img6(:,:,1) = r1;
img6(:,:,2) = g1;
img6(:,:,3) = b1;
subplot(2,1,1),imshow(img2),title('original');
subplot(2,1,2),imshow(img6), title(' from RGB to RBG');

% --------------------------------------------------------------------
function change_red_Callback(hObject, eventdata, handles)
% hObject    handle to change_red (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1 = imread('sky.jpg');
img3  = imread('flower.jpg');

img2 = imresize(img3,[size(img1,1) size(img1,2)]);
ch1=img2(:,:,1);
ch2=img2(:,:,2);
ch3=img2(:,:,3);

ch1=ch1+100; 
new_red_img=cat(3,ch1,ch2,ch3);
subplot(2,1,1),imshow(img2),title('original');
subplot(2,1,2),imshow(new_red_img), title('change color after reddish');

% --------------------------------------------------------------------
function change_green_Callback(hObject, eventdata, handles)
% hObject    handle to change_green (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
img3  = imread('flower.jpg');
img2 = imresize(img3,[size(img1,1) size(img1,2)]);
ch1=img2(:,:,1);
ch2=img2(:,:,2);
ch3=img2(:,:,3);
ch2=ch2+100; 
new_green_img=cat(3,ch1,ch2,ch3);
subplot(2,1,1),imshow(img2),title('original');
subplot(2,1,2),imshow(new_green_img), title('change color after greenish');

% --------------------------------------------------------------------
function change_blue_Callback(hObject, eventdata, handles)
% hObject    handle to change_blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
img3  = imread('flower.jpg');
img2 = imresize(img3,[size(img1,1) size(img1,2)]);
ch1=img2(:,:,1);
ch2=img2(:,:,2);
ch3=img2(:,:,3);
ch3=ch3+100; 
new_blue_img=cat(3,ch1,ch2,ch3);
subplot(2,1,1),imshow(img2),title('original');
subplot(2,1,2),imshow(new_blue_img), title('change color after bluish');


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to grey_equ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
k = imread('home.jpg');      % histogram equalization of gray image
p  = histeq(k(:,:,1)); 
 subplot(2,2,1),imshow(k),title('original image');
  subplot(2,2,2),imhist(k(:,:,1)),title('histogram of original gray image');
  subplot(2,2,3),imshow(p),title('image after stretching equalization');
  subplot(2,2,4),imhist(p),title('histogram of gray image after stretching equalization ');


% --------------------------------------------------------------------
function RGB_equ_Callback(hObject, eventdata, handles)
% hObject    handle to RGB_equ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I = imread('flower.jpg');    % histogram equalization of RGB image
J = histeq(I(:,:,2));
  subplot(2,2,1),imshow(I),title('original image');
  subplot(2,2,2),imhist(I(:,:,2)),title('histogram of original image');
  subplot(2,2,3),imshow(J),title('image after stretching equalization');
  subplot(2,2,4),imhist(J),title('histogram of image after stretching equalization ');

% --------------------------------------------------------------------
function grey_equ_Callback(hObject, eventdata, handles)
% hObject    handle to grey_equ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
k = imread('home.jpg');      % histogram equalization of gray image
p  = histeq(k(:,:,1)); 
 subplot(2,2,1),imshow(k),title('original image');
  subplot(2,2,2),imhist(k(:,:,1)),title('histogram of original gray image');
  subplot(2,2,3),imshow(p),title('image after stretching equalization');
  subplot(2,2,4),imhist(p),title('histogram of gray image after stretching equalization ');

% --------------------------------------------------------------------
function img_restoration_Callback(hObject, eventdata, handles)
% hObject    handle to img_restoration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function salt_pepper_Callback(hObject, eventdata, handles)
% hObject    handle to salt_pepper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Linear_filt_Callback(hObject, eventdata, handles)
% hObject    handle to Linear_filt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function nonlinear_filt_Callback(hObject, eventdata, handles)
% hObject    handle to nonlinear_filt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function max_filt_Callback(hObject, eventdata, handles)
% hObject    handle to max_filt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
I = rgb2gray(img1);
maxi = colfilt(I,[3 3],'sliding',@max);    %max filter
subplot(1,2,1),imshow(I),title('original image');
subplot(1,2,2),imshow(maxi),title('img after max filter');

% --------------------------------------------------------------------
function min_filt_Callback(hObject, eventdata, handles)
% hObject    handle to min_filt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
I = rgb2gray(img1);
mini = colfilt(I,[3 3],'sliding',@min);   %min filter
subplot(1,2,1),imshow(I),title('original image');
subplot(1,2,2),imshow(mini),title('img after min filter');



% --------------------------------------------------------------------
function median_filt_Callback(hObject, eventdata, handles)
% hObject    handle to median_filt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
I = rgb2gray(img1);
mediani = colfilt(I,[3 3],'sliding',@median);   %median filter
subplot(1,2,1),imshow(I),title('original image');
subplot(1,2,2),imshow(mediani),title('img after median filter');

% --------------------------------------------------------------------
function mode_filt_Callback(hObject, eventdata, handles)
% hObject    handle to mode_filt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
I = rgb2gray(img1);
modei = colfilt(I,[3 3],'sliding',@mode);   %mode filter
subplot(1,2,1),imshow(I),title('original image');
subplot(1,2,2),imshow(modei),title('img after mode filter');


% --------------------------------------------------------------------
function rank_order_filt_Callback(hObject, eventdata, handles)
% hObject    handle to rank_order_filt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
I = rgb2gray(img1);
Ranki=ordfilt2(I,5,ones(3 ,3));     %rank order filter
subplot(1,2,1),imshow(I),title('original image');
subplot(1,2,2),imshow(Ranki),title('img after rank filter');
% --------------------------------------------------------------------
function avg_filter_Callback(hObject, eventdata, handles)
% hObject    handle to avg_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

w= imread('newton.jpg');     %salt and pepper(average filter)
subplot(2,1,1),imshow(w),title('original image');
%q= imnoise(w,'salt & pepper',.05);
%subplot(3,1,2),imshow(q);
h=fspecial('average',[7 7]);
B2=imfilter(w,h);
subplot(2,1,2),imshow(B2),title('image after Avg filter (salt&pepper)');
% --------------------------------------------------------------------
function Laplacian_filt_Callback(hObject, eventdata, handles)
% hObject    handle to Laplacian_filt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1  = imread('sky.jpg');
I = rgb2gray(img1);
f3 = fspecial('laplacian');   %Laplacian filter
Lap = filter2(f3,I,'same');
subplot(1,2,1),imshow(I),title('gray image');
subplot(1,2,2),imshow(Lap/255),title('img after laplacian');

% --------------------------------------------------------------------
function med_filt_Callback(hObject, eventdata, handles)
% hObject    handle to med_filt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
w= imread('newton.jpg');   %salt and pepper(median filter)
q = rgb2gray(w);
subplot(2,1,1),imshow(w),title('original image');
B3=medfilt2(q,[3 3]);
subplot(2,1,2),imshow(B3),title('image after median (salt&pepper)');


% --------------------------------------------------------------------
function outlier_filt_Callback(hObject, eventdata, handles)
% hObject    handle to outlier_filt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

w= imread('newton.jpg');   %salt and pepper(outlier)
t = rgb2gray(w);
f = [1/8 1/8 1/8;
    1/8 0 1/8;
    1/8 1/8 1/8];
im10 = im2double(t);
imf = filter2(f,im10);
[r,c] = size(t);
diff = abs(im10-imf);
clean = zeros(r,c);
for i=1:r
    for j=1:c
if diff(i,j)>.4
    clean(i,j)=imf(i,j);
else
    clean(i,j) = im10(i,j);
end
    end
end

subplot(2,1,1),imshow(w),title('original image');
subplot(2,1,2),imshow(clean),title('image after outlier method (salt&pepper)');

% --------------------------------------------------------------------
function img_segmentation_Callback(hObject, eventdata, handles)
% hObject    handle to img_segmentation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function edgedetection__Callback(hObject, eventdata, handles)
% hObject    handle to edgedetection_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%{
image10=imread('home.jpg');   %edge detection
image10=rgb2gray(image10);
edge_p=edge(image10,'prewitt');
edge_s=edge(image10,'sobel');
edge_r=edge(image10,'roberts');

subplot(2,2,1),imshow(image10),title('original');
subplot(2,2,2),imshow(edge_p),title('prewitt operator');  %prewit
subplot(2,2,3),imshow(edge_s),title('sobel operator');     %sobel
subplot(2,2,4),imshow(edge_r),title('roberts operator');   %robert
%}


% --------------------------------------------------------------------
function sobel_det_Callback(hObject, eventdata, handles)
% hObject    handle to sobel_det (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=imread('home.jpg');   %edge detection
image2=rgb2gray(image);
edge_s=edge(image2,'sobel');
subplot(1,2,1),imshow(image2),title('original');
subplot(1,2,2),imshow(edge_s),title('sobel operator');     %sobel
% --------------------------------------------------------------------
function prewitt_det_Callback(hObject, eventdata, handles)
% hObject    handle to prewitt_det (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=imread('home.jpg');   %edge detection
image3=rgb2gray(image);
edge_p=edge(image3,'prewitt');
subplot(1,2,1),imshow(image3),title('original');
subplot(1,2,2),imshow(edge_p),title('prewitt operator');

% --------------------------------------------------------------------
function robert_det_Callback(hObject, eventdata, handles)
% hObject    handle to robert_det (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

image=imread('home.jpg');   %edge detection
image4=rgb2gray(image);
edge_r=edge(image4,'roberts');

subplot(1,2,1),imshow(image4),title('original');
subplot(1,2,2),imshow(edge_r),title('Robert operator'); 
% --------------------------------------------------------------------
function Basic_threshold_Callback(hObject, eventdata, handles)
% hObject    handle to Basic_threshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d = imread('home.jpg');   %Basic global thresholding
l = rgb2gray(d);
subplot(2,1,1),imshow(l);
subplot(2,1,2),imshow(l>100);

% --------------------------------------------------------------------
function adaptive_threshold_Callback(hObject, eventdata, handles)
% hObject    handle to adaptive_threshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c3=imread('home.jpg');   %Adaptive thresholding
f=imfilter(c3,fspecial('average',[195 195]));
diff= abs(c3-f);
binary_img = im2bw(diff,0);
subplot(1,2,1),imshow(c3),title('original');
subplot(1,2,2),imshow(binary_img),title('After adaptive thresholding');

% --------------------------------------------------------------------
function Gaussian_noise_Callback(hObject, eventdata, handles)
% hObject    handle to Gaussian_noise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function img_averaging_Callback(hObject, eventdata, handles)
% hObject    handle to img_averaging (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b= imread('images.jpg');   %gaussian(image averaging)
a = rgb2gray(b);
[r,c,h]=size(a);
v=zeros(r ,c,10);
for i=1:10
    v(:,:,i)=imnoise(a,'gaussian');
 subplot(2,5,i),imshow(mat2gray(v(:,:,i)))
end
res = mat2gray(mean(v,3));
figure,imshow(res);

% --------------------------------------------------------------------
function Avg_filt_Callback(hObject, eventdata, handles)
% hObject    handle to avg_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
e= imread('images.jpg');   %gaussian(averaging filter)

 u= imnoise(e,'gaussian');

h=fspecial('average');
B8=imfilter(u,h);
subplot(3,1,1),imshow(e),title('original image');
subplot(3,1,2),imshow(u);
subplot(3,1,3),imshow(B8),title('after averaging filter');

% --------------------------------------------------------------------
function math_morphology_Callback(hObject, eventdata, handles)
% hObject    handle to math_morphology (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function dilation_Callback(hObject, eventdata, handles)
% hObject    handle to dilation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kl=imread('txt.png');  %Dilation
di=ones(2,2);
td=imdilate(kl, di);
subplot(1,2,1),imshow(kl);
subplot(1,2,2),imshow(td);

% --------------------------------------------------------------------
function erosion_Callback(hObject, eventdata, handles)
% hObject    handle to erosion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kl=imread('txt.png');  %Erosion
er=ones(2,2);

 td=imerode(kl, er);
 subplot(1,2,1),imshow(kl);
 subplot(1,2,2),imshow(td);
 

% --------------------------------------------------------------------
function opening_Callback(hObject, eventdata, handles)
% hObject    handle to opening (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kl=imread('txt.png');   %opening
d_img=double(kl);
d_img=imnoise(d_img,'salt & pepper',.01);
sq=ones(2,2);
td=imopen(d_img, sq);
subplot(1,2,1),imshow(d_img);
subplot(1,2,2),imshow(td);

% --------------------------------------------------------------------
function boundary_extration_Callback(hObject, eventdata, handles)
% hObject    handle to boundary_extration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function internal_Callback(hObject, eventdata, handles)
% hObject    handle to internal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im15=imread('tree.jpg');  %Boundary Extraction
im15=double(im15);
sq5=ones(3,3);
td5=imerode(im15, sq5);
in=abs(im15-td5);
td2=imdilate(im15, sq5);
ex=abs(td2-im15);
mg=abs(td2-td5);
subplot(1,2,1),imshow(im15),title('binary image');
subplot(1,2,2),imshow(in),title('internal boundry');

% --------------------------------------------------------------------
function external_Callback(hObject, eventdata, handles)
% hObject    handle to external (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im15=imread('tree.jpg');  %Boundary Extraction
im15=double(im15);
sq5=ones(3,3);
td5=imerode(im15, sq5);
in=abs(im15-td5);
td2=imdilate(im15, sq5);
ex=abs(td2-im15);
mg=abs(td2-td5);
subplot(1,2,1),imshow(im15),title('binary image');

subplot(1,2,2),imshow(ex),title('external boundry');

% --------------------------------------------------------------------
function morp_gradient_Callback(hObject, eventdata, handles)
% hObject    handle to morp_gradient (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im15=imread('tree.jpg');  %Boundary Extraction
im15=double(im15);
sq5=ones(3,3);
td5=imerode(im15, sq5);
in=abs(im15-td5);
td2=imdilate(im15, sq5);
ex=abs(td2-im15);
mg=abs(td2-td5);
subplot(1,2,1),imshow(im15),title('binary image');

subplot(1,2,2),imshow(mg),title('morphological gradient');

% --------------------------------------------------------------------
function vg_filt_Callback(hObject, eventdata, handles)
% hObject    handle to vg_filt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

  %avg filter

  rgb = imread('sky.jpg');
f2 = fspecial('average');
r10 = imfilter(rgb(:,:,1),f2);
g10 = imfilter(rgb(:,:,2),f2);
b10 = imfilter(rgb(:,:,3),f2);
blur = cat(3,r10,g10,b10);
subplot(1,2,1),imshow(rgb),title('Color image');
subplot(1,2,2),imshow(blur),title('img after avg');


% --------------------------------------------------------------------
function rank_filters_Callback(hObject, eventdata, handles)
% hObject    handle to rank_filters (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
w= imread('newton.jpg');  %salt and pepper(rank order filter)
m = rgb2gray(w);
B4=ordfilt2 (m,5,ones(3,3));
subplot(2,1,1),imshow(w),title('original image');
subplot(2,1,2),imshow(B4),title('image after rank-order (salt&pepper)');


% --------------------------------------------------------------------
function gr_img_Callback(hObject, eventdata, handles)
% hObject    handle to gr_img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=imread('home.jpg');   % stretchng gray-image
subplot(2,2,1),imshow(x),title('original gray image');
subplot(2,2,2),imhist(x(:,:,1));

stretch=imadjust(x(:,:,1));
subplot(2,2,3),imshow(stretch),title('After stretching');
subplot(2,2,4),imhist(stretch(:,:,1));


% --------------------------------------------------------------------
function RGB_im_Callback(hObject, eventdata, handles)
% hObject    handle to RGB_im (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y=imread('sky.jpg');
r3=y(:,:,1);
g3=y(:,:,2);
b3=y(:,:,3);
subplot (2,3 ,1),title('R_histo') ;h1=imhist(r3); bar(h1,'r');
subplot (2,3,2), title('G_histo');h2=imhist(g3);bar(h2,'g');
subplot (2,3,3),title('B_histo');h3=imhist(b3);bar(h3,'b');
r4=imadjust(r3,[],[],.7);
g4=imadjust(g3,[],[],.7);
b4=imadjust(b3,[],[],.7);
z=cat(3,r4,g4,b4);
subplot (2,3,4);title('R_histo_Gamma'); R8=imhist(r4); bar(R8,'r');
subplot (2,3,5);title('G_histo_Gamma');G8=imhist(g4); bar(G8,'g');
subplot (2,3,6);title('B_histo_Gamma'); B8=imhist(b4); bar(B8,'b');
subplot(1,2,1),imshow(y),title('original');  %stretching RGB image
subplot(1,2,2),imshow(z),title('After Gamma correction ');


% --------------------------------------------------------------------
function automatic_threshold_Callback(hObject, eventdata, handles)
% hObject    handle to automatic_threshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c1=imread('home.jpg');   %Automatic thresholding
c = rgb2gray(c1);
Theta = mean2(c); 
 done = 0;
while ~done 
o = (c >=Theta);
m1=mean(c(o));
m2=mean(c(~o));
Th_next = 0.5*( m1+ m2);   
done = abs(Theta - Th_next) < 0.5;   
Theta = Th_next;   
 end 
 x10=im2bw(c,Theta/255);
 subplot(2,1,1), imshow(c),title('original image');
 subplot(2,1,2),imshow(x10),title('img after Automatic thresholding');


% --------------------------------------------------------------------
function sobeldetector__Callback(hObject, eventdata, handles)
% hObject    handle to sobeldetector_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image10=imread('home.jpg');   %edge detection
image10=rgb2gray(image10);
edge_s=edge(image10,'sobel');
subplot(1,2,1),imshow(image10),title('original');
subplot(1,2,2),imshow(edge_s),title('sobel operator'); 

% --------------------------------------------------------------------
function prewittdetector__Callback(hObject, eventdata, handles)
% hObject    handle to prewittdetector_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image10=imread('home.jpg');   %edge detection
image10=rgb2gray(image10);
edge_p=edge(image10,'prewitt');
subplot(1,2,1),imshow(image10),title('original');
subplot(1,2,2),imshow(edge_p),title('prewitt operator'); 

% --------------------------------------------------------------------
function robertdetector__Callback(hObject, eventdata, handles)
% hObject    handle to robertdetector_ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image10=imread('home.jpg');   %edge detection
image10=rgb2gray(image10);
edge_r=edge(image10,'roberts');
subplot(1,2,1),imshow(image10),title('original');
subplot(1,2,2),imshow(edge_r),title('roberts operator');   %robert
