A = rgb2gray(imread("E:/Matlab/assets/sami.jpeg"));
figure;imshow(A);

% Calculate the inverse of the shearing matrix T
T = [0 1 0;1 1 0;0 0 1];

% Create a new image to store the reversed mapping result
reversed_image = zeros(R, C);

for i = 1:R
    for j = 1:C
        % Create a vector representing the original coordinates (i, j)
        original_coordinates = [i; j; 1];
        
        % Apply the reverse transformation
        reverse_transformed_coordinates = inv(T) * original_coordinates;
        
        % Extract the reverse transformed X and Y coordinates
        X = reverse_transformed_coordinates(1);
        Y = reverse_transformed_coordinates(2);
        
        % Check if the reverse transformed coordinates are within the bounds of the original image
        if X >= 1 && X <= R && Y >= 1 && Y <= C
            reversed_image(i, j) = A(round(X), round(Y)); % Use rounding for nearest-neighbor interpolation
        end
    end
end

% Display the reversed mapping result
figure;
imshow(uint8(reversed_image));
