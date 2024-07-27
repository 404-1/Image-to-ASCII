%% Import image
clc, clearvars, close all

file = "Luffy.jpg";
img_raw = imread(file);

%% Image resizing
clc, clearvars -except img_raw, close all

[img_h, img_w, ~] = size(img_raw);

if img_h > img_w
    multiplier = round(img_h ./ img_w, 1);
    target_width = 480;
    target_height = target_width * multiplier;
else 
    multiplier = img_w / img_h;
    target_height = 480;
    target_width = target_height * multiplier;
end

img_mod = imresize(img_raw, [target_height, target_width]);

%% Image grayscale analysis

img_mod = rgb2gray(img_mod);
img_mod2 = histeq(img_mod);

%% Image ascii assignments
% ' ', '.', ':', '-', '=', '+', '*', '#', '%', '@'

ascii_char = [' ', '.', ':', '-', '=', '+', '*', '#', '%', '@'];
ascii_id = length(ascii_char);

img_mod = im2double(img_mod);
img_id = round(img_mod .* (ascii_id-1)) + 1;

%% Ascii matrix

[r, c] = size(img_id);
ascii_matrix = char(img_id);

for rows = 1:r
    for cols = 1:c
        ascii_matrix(rows, cols) = ascii_char(img_id(rows, cols));
    end
end

%% Export to txt file

fileID = fopen('ascii_art.txt', 'w');

for r = 1:rows
    fprintf(fileID, '%s\n', ascii_matrix(r, :));
end

fclose(fileID);