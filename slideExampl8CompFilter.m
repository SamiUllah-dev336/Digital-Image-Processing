myFilter8 = [-1 -1 -1; -1 9 -1; -1 -1 -1];

myOrigImage = rgb2gray(imread("E:assets\flower.png"));

figure; imshow(myOrigImage);

myFilteredImage8 = imfilter(myOrigImage,myFilter8);

figure; imshow(myFilteredImage8,[]);