LowContrastImg=rgb2gray(imread("E:/Matlab/assets/sami.jpeg"));

[R C]=size(LowContrastImg);
figure;imshow(LowContrastImg);

LowContrastImg=double(LowContrastImg);

EnhancedHighContr=zeros(R,C);
for i=1:R
    for j=1:C
        if LowContrastImg(i,j)<=60
            EnhancedHighContr(i,j)=LowContrastImg(i,j)*2;
        elseif LowContrastImg(i,j)>61 && LowContrastImg(i,j)<=140
            EnhancedHighContr(i,j)=0.5*(LowContrastImg(i,j)-60)+120;
        else
            EnhancedHighContr(i,j)=0.5*(LowContrastImg(i,j)-140)+70;
        end    
    end
end

A=zeros(R,C);

figure;imshow(EnhancedHighContr,[]);


imgFFT=fft2(EnhancedHighContr);
img2=ifft(imgFFT);
%image show in frequency domain show it is black because mostly values map
% on 0.
figure;imshow(imgFFT,[]);
S=fftshift(log(1+abs(imgFFT)));
figure;imshow(S,[]);

for i=1:R
    for j=1:C
        if EnhancedHighContr(i,j)<=60
            A(i,j)=EnhancedHighContr(i,j)*2;
        elseif EnhancedHighContr(i,j)>61 && EnhancedHighContr(i,j)<=140
            A(i,j)=0.5*(EnhancedHighContr(i,j)-60)+120;
        else
            A(i,j)=0.5*(EnhancedHighContr(i,j)-140)+70;
        end    
    end
end

figure;imshow(A,[]);
