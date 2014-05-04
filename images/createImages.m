
%function grayLevelsEPS()
%    lenna = imread('lenna/lenna.tiff');
%    lennaGray = rgb2gray(lenna);
%
%    for x = [2 4 8 16]
%        [B, map] = gray2ind(lennaGray, 2^x);
%        nImage = ind2gray(B, map);
%        fig = figure;
%        imshow(nImage);
%        print(fig, '-djpeg', strcat('lenna/lenna', num2str(x), '.jpg'));
%    end
%end

%function dpisEPS()
%    lenna = imread('lenna/lenna.tiff');
%    lennaGray = rgb2gray(lenna);
%
%    for x = [50 25 10 5]
%        fig = figure;
%        imshow(lennaGray);
%        res = strcat('-r', num2str(x));
%        name = strcat('dpi/dpi', num2str(x), '.jpg');
%        print( fig, name, '-djpeg', res);
%    end
%end

% generate histograms
