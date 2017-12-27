function [ Flows, value ] = Get_Minimals_Flow( e, nb )
switch nargin
	case 1,	nb = 1;
end	

s = size(e);
h = s(1);

Flows = zeros(h,nb);

[~, cols] = sort(e(h, :));		% Classement des colonnes les plus petites

value = zeros(nb, 1);

for i = (1:nb)
	Flows(:,i) = Get_Flow(e,cols(i));
    value(i) = e(h, cols(i));
end

end

