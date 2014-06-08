
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

% histograms and contrast
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

%function medicalImages()
%    fig = figure;
%
%    mr = dicomread('fnl/mr/000000.dcm');
%    mr = f12to16bits(mr);
%    mr = adapthisteq(mr);
%    imshow(mr);
%    print(fig, '-djpeg', 'medical/mr.jpg');
%
%    crdx = dicomread('fnl/cr-dx/000000.dcm');
%    crdx = f12to16bits(crdx);
%    crdx = adapthisteq(crdx);
%    imshow(crdx);
%    print(fig, '-djpeg', 'medical/cr-dx.jpg');
%
%    ct = dicomread('fnl/ct/000127.dcm');
%    ct = f12to16bits(ct);
%    ct = adapthisteq(ct);
%    imshow(ct);
%    print(fig, '-djpeg', 'medical/ct.jpg');
%end
