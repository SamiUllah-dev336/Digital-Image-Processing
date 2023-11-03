LowContrastImg=rgb2gray(imread("E:/Matlab/assets/low_ContrastImage.png"));

[R C]=size(LowContrastImg);
figure;imshow(LowContrastImg);

LowContrastImg=double(LowContrastImg);
Rmin=min(min(LowContrastImg));
Rmax=max(max(LowContrastImg));

EnhancedHighContr=zeros(R,C);
for i=1:R
    for j=1:C
        EnhancedHighContr(i, j)= (LowContrastImg(i, j) - Rmin)/(Rmax - Rmin)*255;
    end
end

figure;imshow(EnhancedHighContr,[]);
