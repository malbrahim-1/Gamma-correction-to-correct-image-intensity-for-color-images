% Mofaq Alotaibi_HW2_Part1_CS543
% Gamma correction: to all channels the following is applied
%
%   RGB = RGB^(gamma),  gamma > 0
%
% The image files are read and stored as uint8 [0,255], first they are
% converted to double, then normalized to range [0,1] in order to apply the
% power function. Finally, they are scaled back to [0,255] and converted to
% uint8. 
%
% Three input images are used with three different gamma values:
% (0.25, 0.5, 2.2). The outputs are saved as png files.
close all
clear
clc

% 1) color image 1 in three different values 
A = imread('MofaqAlotaibi_part1_input_image1.jpg'); % original image
gam = 0.25; Acorr = uint8(255*(double(A)/255).^gam);
imwrite(Acorr,'MofaqAlotaibi_part1_output_image1_gam025.png');
figure(1); subplot(131); imshow(Acorr);
title('Gamma correction 0.25')
%--------------------------------------------------------------------------
gam = 0.5; Acorr = uint8(255*(double(A)/255).^gam);
imwrite(Acorr,'MofaqAlotaibi_part1_output_image1_gam05.png');
figure(1); subplot(132); imshow(Acorr);
title('Gamma correction 0.5')
%--------------------------------------------------------------------------
gam = 2.2; Acorr = uint8(255*(double(A)/255).^gam);
imwrite(Acorr,'MofaqAlotaibi_part1_output_image1_gam22.png');
figure(1); subplot(133); imshow(Acorr);
title('Gamma correction 2.2')
set(gcf,'position',[100 100 1200 700])
%--------------------------------------------------------------------------

% 2) color image 2 in three different values 
A = imread('MofaqAlotaibi_part1_input_image2.jpg'); % original image
gam = 0.25; Acorr = uint8(255*(double(A)/255).^gam);
imwrite(Acorr,'MofaqAlotaibi_part1_output_image2_gam025.png');
figure(2); subplot(131); imshow(Acorr);
title('Gamma correction 0.25 ')
%--------------------------------------------------------------------------
gam = 0.5; Acorr = uint8(255*(double(A)/255).^gam);
imwrite(Acorr,'MofaqAlotaibi_part1_output_image2_gam05.png');
figure(2); subplot(132); imshow(Acorr);
title('Gamma correction 0.5')
%--------------------------------------------------------------------------
gam = 2.2; Acorr = uint8(255*(double(A)/255).^gam);
imwrite(Acorr,'MofaqAlotaibi_part1_output_image2_gam22.png');
figure(2); subplot(133); imshow(Acorr);
title('Gamma correction 2.2 ')
set(gcf,'position',[100 100 1200 700])
%--------------------------------------------------------------------------

% 3) color image 3 in three different values 
A = imread('MofaqAlotaibi_part1_input_image3.jpg'); % original image
gam = 0.25; Acorr = uint8(255*(double(A)/255).^gam);
imwrite(Acorr,'MofaqAlotaibi_part1_output_image3_gam025.png');
figure(3); subplot(131); imshow(Acorr);
title('Gamma correction 0.25 ')
%--------------------------------------------------------------------------
gam = 0.5; Acorr = uint8(255*(double(A)/255).^gam);
imwrite(Acorr,'MofaqAlotaibi_part1_output_image3_gam05.png');
figure(3); subplot(132); imshow(Acorr);
title('Gamma correction 0.5')
%--------------------------------------------------------------------------
gam = 2.2; Acorr = uint8(255*(double(A)/255).^gam);
imwrite(Acorr,'MofaqAlotaibi_part1_output_image3_gam22.png');
figure(3); subplot(133); imshow(Acorr);
title('Gamma correction 2.2 ')
set(gcf,'position',[100 100 1200 700])
%--------------------------------------------------------------------------
