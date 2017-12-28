function [ Res ] = Reduce_Im( Im, Iter )
%REDUCE_IM Summary of this function goes here
%   Detailed explanation goes here
Gray = rgb2gray(Im);

[E_Sobel, ~] = imgradient(Gray,'sobel');

end

