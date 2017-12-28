function [ E ] = GetSobelEnergy( Im )
% retourne l'energie d ela dérivé sur X et Y
s = size(Im);

% Decallage de 1 colonne et duplication de la derniere (premiere)
ImPx = [Im(:,2:s(2)), Im(:,s(2))];
ImMx = [Im(:,1), Im(:,1:s(2)-1)];

% Decallage de 1 ligne et duplication de la derniere (premiere)
ImPy = [Im(2:s(1),:); Im(s(1),:)];
ImMy = [Im(1,:); Im(1:s(1)-1,:)];

% Energy = DeltaX + DeltaY (inutile de normaliser)
E = abs(ImPx - ImMx) + abs(ImPy - ImMy);
end

