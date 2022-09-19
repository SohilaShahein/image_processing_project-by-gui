image10=imread('home.jpg');   %edge detection
image10=rgb2gray(image10);
edge_p=edge(image10,'prewitt');
edge_s=edge(image10,'sobel');
edge_r=edge(image10,'roberts');

subplot(2,2,1),imshow(image10),title('original');
subplot(2,2,2),imshow(edge_p),title('prewitt operator');  %prewit
subplot(2,2,3),imshow(edge_s),title('sobel operator');     %sobel
subplot(2,2,4),imshow(edge_r),title('roberts operator');   %robert


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