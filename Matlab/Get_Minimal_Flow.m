function [ Flow ] = Get_Minimal_Flow( e )
s = size(e);
h = s(1);
w = s(2);
Flow = zeros(h,1);

[~, col] = min(e(h, :));		% minimum de la derniere ligne

Flow(h) = col;

for i = flip(1:h-1)
	[~, tmp] = min(e(i, max(1,col-1) : min(w,col + 1)));	% Voisin minimum a la ligne superieure
	col = max(1, col + tmp - 1 - min(1,col-1));				% nouvelle colonne
	Flow(i) = col;
end

end

