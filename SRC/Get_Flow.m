function [ Flow ] = Get_Flow( e, start )
%GET_FLOW Summary of this function goes here
%   Detailed explanation goes here
s = size(e);
h = s(1);
w = s(2);
col = start;
Flow = zeros(h,1);

Flow(h) = col;

for i = flip(1:h-1)
	[~, tmp] = min(e(i, max(1,col-1) : min(w,col + 1)));	% Voisin minimum a la ligne superieure
	col = max(1, col + tmp - 1 - min(1,col-1));				% nouvelle colonne
	Flow(i) = col;
end

end

