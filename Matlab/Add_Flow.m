function [ Res ] = Add_Flow( Im, Flow)
%DELETE_FLOW Summary of this function goes here
%   Detailed explanation goes here

s = size(Im);
h = s(1);
w = s(2);
Res = [Im Im(:,w,:)];	% Duplication de la dernière colonne


for i = 1:h
	Res(i, Flow(i)+1:w,:) = Res(i, Flow(i):w-1,:);
end

end
