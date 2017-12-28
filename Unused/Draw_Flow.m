function [ Res ] = Draw_Flow( Im, Flow )
%

Res = Im;

for i = 1:size(Flow)
	Res(i, Flow(i),:) = [255,0,0];
end

end

