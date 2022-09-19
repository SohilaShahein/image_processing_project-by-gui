img1  = imread('sky.jpg');
img3  = imread('flower.jpg');

img2 = imresize(img3,[size(img1,1) size(img1,2)]); 


add = imadd(img1,img2);  
div = imdivide(img1,2);
mul = immultiply(img2,2);
comp = imcomplement(img2);
maximum = max(img1,img2);
sub = imsubtract(img1,img2);
avg = (img1+img2)/2;
subplot(1,3,1),imshow(img1);
subplot(1,3,2),imshow(img2);
subplot(1,3,3),imshow(add),title('img1+img2');
%subplot(1,3,1),imshow(img1);
%subplot(1,3,2),imshow(img2);
%subplot(1,3,3),imshow(sub),title('img1-img2');
%subplot(1,3,1),imshow(img1);
%subplot(1,3,2),imshow(img2);
%subplot(1,3,3),imshow(mul),title('img1*img2);
%subplot(1,3,1),imshow(img1);
%subplot(1,3,2),imshow(img2);
%subplot(1,3,3),imshow(div),title('img1/img2');
%subplot(1,3,1),imshow(img1);
%subplot(1,3,2),imshow(img2);
%subplot(1,3,3),imshow(maximum),title('max(img1,img2)');
%subplot(1,3,1),imshow(img1);
%subplot(1,3,2),imshow(img2);
%subplot(1,3,3),imshow(avg),title('avg(img1,img2)');
%subplot(1,2,1),imshow(img2);
%subplot(1,2,2),imshow(comp),title('complement(img2)');
ch1=img2(:,:,1);
ch2=img2(:,:,2);
ch3=img2(:,:,3);

ch1=ch1+100; 

new_red_img=cat(3,ch1,ch2,ch3);
subplot(2,1,1),imshow(img2),title('original');
subplot(2,1,2),imshow(new_red_img), title('change color after reddish');
ch2=ch2+100; 
new_green_img=cat(3,ch1,ch2,ch3);
subplot(2,1,1),imshow(img2),title('original');
subplot(2,1,2),imshow(new_green_img), title('change color after greenish');
ch3=ch3+100; 
new_blue_img=cat(3,ch1,ch2,ch3);
subplot(2,1,1),imshow(img2),title('original');
subplot(2,1,2),imshow(new_blue_img), title('change color after bluish');


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


GB=img1;   %Eliminating R,G,B
RB=img1;
RG=img1;
GB(:,:,1)=0;  
RB(:,:,2)=0; 
RG(:,:,3)=0;
subplot(2,2,1),imshow(img1),title('original img1');
subplot(2,2,2),imshow(GB),title(' after Eliminate R');
subplot(2,2,3),imshow(RB),title(' after Eliminate G');
subplot(2,2,4),imshow(RG),title('after Eliminate B');

x=imread('home.jpg');   % stretchng gray-image
subplot(2,2,1),imshow(x),title('original gray image');
subplot(2,2,2),imhist(x(:,:,1));

stretch=imadjust(x(:,:,1));
subplot(2,2,3),imshow(stretch),title('After stretching');
subplot(2,2,4),imhist(stretch(:,:,1));




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




I = imread('flower.jpg');    % histogram equalization of RGB image
J = histeq(I(:,:,2));
  subplot(2,2,1),imshow(I),title('original image');
  subplot(2,2,2),imhist(I(:,:,2)),title('histogram of original image');
  subplot(2,2,3),imshow(J),title('image after stretching equalization');
  subplot(2,2,4),imhist(J),title('histogram of image after stretching equalization ');
k = imread('home.jpg');      % histogram equalization of gray image
p  = histeq(k(:,:,1)); 
 subplot(2,2,1),imshow(k),title('original image');
  subplot(2,2,2),imhist(k(:,:,1)),title('histogram of original gray image');
  subplot(2,2,3),imshow(p),title('image after stretching equalization');
  subplot(2,2,4),imhist(p),title('histogram of gray image after stretching equalization ');


  I = rgb2gray(img1);   %avg filter

  rgb = imread('sky.jpg');
f2 = fspecial('average');
r10 = imfilter(rgb(:,:,1),f2);
g10 = imfilter(rgb(:,:,2),f2);
b10 = imfilter(rgb(:,:,3),f2);
blur = cat(3,r10,g10,b10);
subplot(1,2,1),imshow(rgb),title('Color image');
subplot(1,2,2),imshow(blur),title('img after avg');
f3 = fspecial('laplacian');   %Laplacian filter
Lap = filter2(f3,I,'same');
subplot(1,2,1),imshow(I),title('gray image');
subplot(1,2,2),imshow(Lap),title('img after laplacian');


maxi = colfilt(I,[3 3],'sliding',@max);    %max filter
subplot(1,2,1),imshow(I),title('original image');
subplot(1,2,2),imshow(maxi),title('img after max filter');
mediani = colfilt(I,[3 3],'sliding',@median);   %median filter
subplot(1,2,1),imshow(I),title('original image');
subplot(1,2,2),imshow(mediani),title('img after median filter');
modei = colfilt(I,[3 3],'sliding',@mode);   %mode filter
subplot(1,2,1),imshow(I),title('original image');
subplot(1,2,2),imshow(modei),title('img after mode filter');


mini = colfilt(I,[3 3],'sliding',@min);   %min filter
subplot(1,2,1),imshow(I),title('original image');
subplot(1,2,2),imshow(maxi),title('img after min filter');

Ranki=ordfilt2(I,5,ones(3 ,3));     %rank order filter
subplot(1,2,1),imshow(I),title('original image');
subplot(1,2,2),imshow(Ranki),title('img after rank filter');




w= imread('newton.jpg');     %salt and pepper(average filter)
subplot(2,1,1),imshow(w),title('original image');
%q= imnoise(w,'salt & pepper',.05);
%subplot(3,1,2),imshow(q);
h=fspecial('average',[7 7]);
B2=imfilter(w,h);
subplot(2,1,2),imshow(B2),title('image after Avg filter (salt&pepper)');


w= imread('newton.jpg');   %salt and pepper(median filter)
q = rgb2gray(w);
subplot(2,1,1),imshow(w),title('original image');
B3=medfilt2(q,[3 3]);
subplot(2,1,2),imshow(B3),title('image after median (salt&pepper)');

w= imread('newton.jpg');  %salt and pepper(rank order filter)
m = rgb2gray(w);
B4=ordfilt2 (m,5,ones(3,3));
subplot(2,1,1),imshow(w),title('original image');
subplot(2,1,2),imshow(B4),title('image after rank-order (salt&pepper)');


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


e= imread('images.jpg');   %gaussian(averaging filter)

 u= imnoise(e,'gaussian');

h=fspecial('average');
B8=imfilter(u,h);
subplot(3,1,1),imshow(e),title('original image');
subplot(3,1,2),imshow(u);
subplot(3,1,3),imshow(B8),title('after averaging filter');



b= imread('images.jpg');   %gaussian(image averaging)
a = rgb2gray(b);
[r,c,h]=size(a);
v=zeros(r ,c,10);
for i=1:10
    v(:,:,i)=imnoise(a,'gaussian');
 subplot(2,5,i),imshow(mat2gray(v(:,:,i)))
end
res = mat2gray(mean(v,3));
%figure,imshow(res);

d = imread('home.jpg');   %Basic global thresholding
l = rgb2gray(d);
subplot(2,1,1),imshow(l);
subplot(2,1,2),imshow(l>100);

%{
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
 subplot(2,1,1), imshow(c);
 subplot(2,1,2),imshow(x10);
%}






c3=imread('home.jpg');   %Chow and Kaneko Approach
c3=rgb2gray(c3);
p1=c3(:,1:64);
p2=c3(:,65:128);
p3=c3(:,129:192);
p4=c3(:,193:256);
t1=im2bw(p1,graythresh(p1));
t2=im2bw(p2,graythresh(p2));
t3=im2bw(p3,graythresh(p3));
t4=im2bw(p4,graythresh(p4));
x20=[t1 t2 t3 t4];
subplot(2,1,1),imshow(c3);
subplot(2,1,2),imshow(x20);

c3=imread('home.jpg');   %Adaptive thresholding
f=imfilter(c3,fspecial('average',[195 195]));
diff= abs(c3-f);
binary_img = im2bw(diff,0);
subplot(1,2,1),imshow(c3),title('original');
subplot(1,2,2),imshow(binary_img),title('After adaptive thresholding');




image=imread('home.jpg');   %edge detection
image=rgb2gray(image);
edge_p=edge(image,'prewitt');
edge_s=edge(image,'sobel');
edge_r=edge(image,'roberts');

subplot(2,2,1),imshow(image),title('original');
subplot(2,2,2),imshow(edge_p),title('prewitt operator');  %prewit
subplot(2,2,3),imshow(edge_s),title('sobel operator');     %sobel
subplot(2,2,4),imshow(edge_r),title('roberts operator');   %robert

kl=imread('txt.png');  %Dilation
di=ones(2,2);
td=imdilate(kl, di);
subplot(1,2,1),imshow(kl);
subplot(1,2,2),imshow(td);


kl=imread('txt.png');  %Erosion
er=ones(2,2);

 td=imerode(kl, er);
 subplot(1,2,1),imshow(kl);
 subplot(1,2,2),imshow(td);
 
 kl=imread('txt.png');   %opening
d_img=double(kl);
d_img=imnoise(d_img,'salt & pepper',.01);
sq=ones(2,2);
td=imopen(d_img, sq);
subplot(1,2,1),imshow(d_img);
subplot(1,2,2),imshow(td);




im15=imread('tree.jpg');  %Boundary Extraction
im15=double(im15);
sq5=ones(3,3);
td5=imerode(im15, sq5);
in=abs(im15-td5);
td2=imdilate(im15, sq5);
ex=abs(td2-im15);
mg=abs(td2-td5);
subplot(2,2,1),imshow(im15),title('binary image');
subplot(2,2,2),imshow(in),title('internal boundry');
subplot(2,2,3),imshow(ex),title('external boundry');
subplot(2,2,4),imshow(mg),title('morphological gradient');







    








