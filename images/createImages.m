
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
%        print(fig, name, '-djpeg', res);
%    end
%end

% generate histograms
%function histogramsEPS()
%    mandril = imread('histo/mandril.tiff');
%    mandrilGray = rgb2gray(mandril);
%
%    % mandril image
%    fig = figure;
%    imshow(mandrilGray);
%    print(fig, '-djpeg', 'histo/mandril.jpg');
%
%    % histogram of the mandril image
%    [a b] = imhist(mandrilGray);
%    x = 0:11:2805;
%
%    disp(size(a));
%    bar(x, a); grid on;
%    set(gca,'box', 'on', 'linewidth', 2.5, 'fontsize', 16);
%    xlabel('Rango de Intensidad', 'fontsize', 23);
%    ylabel('Frequencia', 'fontsize', 23);
%    ylim([0, 2800]);
%    print(fig, '-djpeg', 'histo/histogram-mandril.jpg');
%
%    % mandril image after histogram equalization
%    completeRange = adapthisteq(mandrilGray);
%    fig = figure;
%    imshow(completeRange);
%    print(fig, '-djpeg', 'histo/completerange.jpg');
%
%    % histogram of the mandril image
%    [a b] = imhist(completeRange);
%    bar(a) ; grid on;
%    set(gca,'box', 'on', 'linewidth', 2.5, 'fontsize', 16);
%    xlabel('Rango de Intensidad', 'fontsize', 23);
%    ylabel('Frequencia', 'fontsize', 23);
%    ylim([0, 2800]);
%    print(fig, '-djpeg', 'histo/histogram-completerange.jpg');
%end

% histograms and contrast
function histogramsEPS()
    mandril = imread('histo/mandril.tiff');
    mandrilGray = rgb2gray(mandril);

    % mandril image
    fig = figure;
    imshow(mandrilGray);
    print(fig, '-djpeg', 'histo/mandril.jpg');

    % histogram of the mandril image
    [a b] = imhist(mandrilGray);
    x = 0:11:2805;

    disp(size(a));
    bar(x, a); grid on;
    set(gca,'box', 'on', 'linewidth', 2.5, 'fontsize', 16);
    xlabel('Rango de Intensidad', 'fontsize', 23);
    ylabel('Frequencia', 'fontsize', 23);
    ylim([0, 2800]);
    print(fig, '-djpeg', 'histo/histogram-mandril.jpg');

    % mandril image after histogram equalization
    completeRange = adapthisteq(mandrilGray);
    fig = figure;
    imshow(completeRange);
    print(fig, '-djpeg', 'histo/completerange.jpg');

    % histogram of the mandril image
    [a b] = imhist(completeRange);
    bar(a) ; grid on;
    set(gca,'box', 'on', 'linewidth', 2.5, 'fontsize', 16);
    xlabel('Rango de Intensidad', 'fontsize', 23);
    ylabel('Frequencia', 'fontsize', 23);
    ylim([0, 2800]);
    print(fig, '-djpeg', 'histo/histogram-completerange.jpg');
end


