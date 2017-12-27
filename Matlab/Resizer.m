function Resizer()
%RESIZER Summary of this function goes here
%   Detailed explanation goes here
addpath('GUI'); 
addpath('HOG');
addpath('../Res') ;

global filename;
global input;
global inputSize;

global Energy;
global EnergyFlow;

filename = 'christmas_original.png';
input = imread(filename);
inputSize = size(input);

Energy = imgradient(rgb2gray(im2double(input)), 'sobel');
EnergyFlow = Error_Flow(Energy);

initMenu();
end

