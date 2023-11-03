img=rgb2gray(imread("E:Matlab\assets\darkImage.jpeg"));
figure;imshow(img);
imgFFT=fft2(double(img));
img2=ifft(imgFFT);
figure;imshow(imgFFT,[])
S=fftshift(log(1+abs(imgFFT)));
figure;imshow(S,[]);
