clc
clear all
close all
addpath('./Biblioteca')

%x=imread('catedral.jpg','jpg');
%x=imread('black-and-white-cats.jpg','jpg');
%x=imread('Cuddle.jpg','jpg');
%x=imread('wallpaper.jpg','jpg');
%x=imread('arena.jpg','jpg');
x=imread('uno.jpg','jpg');
x=imread('nena.jpg','jpg');
%x=imread('black-and-white.jpg','jpg');
%x=imread('baie6.jpg','jpg');
a=double(x); 
b=a(:,:,1);
m=size(b);
[U,S,V]=svd(b);
%colormap(gray);
subplot(2,2,1); 
image(b); 
title(['original image size= ',num2str(m)]);
k=3; 
subplot(2,2,2); 
image(U(:,1:k)*S(1:k,1:k)*V(:,1:k)'); 
title(['singular values k=',num2str(k)]);
k=60; 
subplot(2,2,3); 
image(U(:,1:k)*S(1:k,1:k)*V(:,1:k)'); 
title(['singular values k=',num2str(k)]);
k=90; 
subplot(2,2,4); 
image(U(:,1:k)*S(1:k,1:k)*V(:,1:k)'); 
title(['singular values k=',num2str(k)]);