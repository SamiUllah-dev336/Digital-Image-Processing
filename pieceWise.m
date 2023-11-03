LowContrastImg=rgb2gray(imread("E:/Matlab/assets/sami.jpeg"));

[R C]=size(LowContrastImg);
figure;imshow(LowContrastImg);

LowContrastImg=double(LowContrastImg);

EnhancedHighContr=zeros(R,C);
for i=1:R
    for j=1:C
        if LowContrastImg(i,j)<=32
            EnhancedHighContr(i,j)=LowContrastImg(i,j)/2;
        elseif LowContrastImg(i,j)>32 && LowContrastImg(i,j)<=223
            EnhancedHighContr(i,j)=LowContrastImg(i,j)*1.5;
        else
            EnhancedHighContr(i,j)=LowContrastImg(i,j)/2;
        end    
    end
end

figure;imshow(EnhancedHighContr,[]);

imgFFT=fft2(EnhancedHighContr);
img2=ifft(imgFFT);
%image show in frequency domain show it is black because mostly values map
% on 0.
figure;imshow(imgFFT,[]);
S=fftshift(log(1+abs(imgFFT)));
figure;imshow(S,[]);
