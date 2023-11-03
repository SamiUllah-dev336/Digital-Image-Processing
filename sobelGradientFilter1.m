myFilter8 = [-1 -2 -1;0 0 0;1 2 1];

myOrigImage = rgb2gray(imread("E:\Matlab\assets\flower.png"));

figure; imshow(myOrigImage);

myFilteredImage8 = imfilter(myOrigImage,myFilter8);

figure; imshow(myFilteredImage8,[]);