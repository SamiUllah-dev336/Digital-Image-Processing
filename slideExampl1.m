myFilter1 = [1 1 1; 1 1 1; 1 1 1];
myOrigImage = rgb2gray(imread("E:assets\flower.png"));
figure; imshow(myOrigImage);
myFilteredImage = imfilter(double(myOrigImage),myFilter1);
figure; imshow(myFilteredImage,[]);