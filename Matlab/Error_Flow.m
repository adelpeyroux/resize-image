function [ E ] = Error_Flow( Im )
%ERROR_FLOW Summary of this function goes here
%   Detailed explanation goes here
s = size(Im);
E = padarray(Im, [0, 1], inf);		% Ajout d'un bord avec infini
for i = 2 : s(1)			% On commence a la ligne 2
	for j = 2 : s(2) + 1
		E(i, j) = E(i, j) + min([E(i-1, j-1), E(i-1, j), E(i-1, j+1)]);
	end
end

E = E(:,2:s(2)+1);

end

