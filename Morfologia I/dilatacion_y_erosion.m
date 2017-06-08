% Erosi�n y dilataci�n
clear all, close all, clc

a = imread('cuadrado.bmp');
[fil, col, cap]=size(a);
if cap>1;a = rgb2gray(a);end;
a(a>0)=255;

% Se crea un elemento estructurante 
EE = strel('square',5);
b=a;

% Dilataci�n de la imagen multiples veces
for i = 1:10
    b = imdilate(b,EE);
    figure(1); imshow(b);
    pause(0.1);
end

%Erosi�n de la imagen
for i = 1:20
    b = imerode(b,EE);
    figure(1); imshow(b);
    pause(0.1);
end

%Dilataci�n nuevamente para volver al tama�o original
for i = 1:10
    b = imdilate(b,EE);
    figure(1); imshow(b);
    pause(0.1);
end

