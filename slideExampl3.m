myFilter3 = 1/13*[0 0 1 0 0; 0 1 1 1 0; 1 1 1 1 1; 0 1 1 1 0; 0 0 1 0 0];

myOrigImage = rgb2gray(imread("E:assets\flower.png"));

figure; imshow(myOrigImage);

myFilteredImage3 = imfilter(double(myOrigImage),myFilter3);

figure; imshow(myFilteredImage3,[]);