Original = rgb2gray(imread('E:/Matlab/assets/T.jpg'));
figure;
imshow(Original);

Rotated = rgb2gray(imread('E:/Matlab/assets/T2.jpg'));
figure;
imshow(Rotated);

cpstruct = cpselect(Original, Rotated);

% Automatically correct the control points using cpcorr
cpstruct = cpcorr(cpstruct, Original, Rotated);

% Display the corrected control points
cpstruct

% Create a transformation structure
tform = cp2tform(cpstruct.inputPoints, cpstruct.basePoints, 'affine');

% Apply the transformation to the second image
registered_image = imtransform(Rotated, tform);

% Display the registered image
figure;
imshow(registered_image, []);
