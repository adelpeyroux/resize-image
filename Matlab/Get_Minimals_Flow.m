function [ Flows ] = Get_Minimals_Flow( e, nb )
switch nargin
	case 1,	nb = 1;
end	

s = size(e);
h = s(1);

Flows = zeros(h,nb);

[~, cols] = sort(e(h, :));		% Classement des colonnes les plus petites

for i = (1:nb)
	Flows(:,i) = Get_Flow(e,cols(i));
end

end

