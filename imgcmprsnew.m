clc;
close all;
clear all;
I=imread('rose.jpg')
I=imresize(I, [128 128]);
I=rgb2gray(I);
k=1;
for i=1:2:size(I,2)
I1(:,k)=(I(:,i)-I(:,i+1))/2;
k=k+1;
end
I1=round(I1)
k=1;
for i=1:2:size(I,1)
I2(k,:)=(I1(i,:)+I1(i+1,:))/2;
k=k+1;
end
for i=1:2:size(I,1)
I2(k,:)=(I1(1,:)-I1(i+1,:))/2;
k=k+1;
end
I2=round(I2)
subplot(2,1,1)
imshow(I)
xlabel('original');
subplot(2,1,2)
imshow(I2)
xlabel('xhaar wti')



