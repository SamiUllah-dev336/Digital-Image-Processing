myFilter5 = zeros (5,5);

myFilter5(1:2,3) = -1;
myFilter5(3,3) = 2

myOrigImage = rgb2gray(imread("E:assets\flower.png"));

figure; imshow(myOrigImage);

myFilteredImage5 = imfilter(myOrigImage,myFilter5);

figure; imshow(myFilteredImage5,[]);