%% Initialisation
close all;					% Fermeture des figures
%Lire l'image & Passage en double
file = '../Res/charles_original.jpg';
Im = imread(file);
Im = im2double(Im);
ImGray = rgb2gray(Im);

E = GetSobelEnergy(ImGray); % Inutile.....

[EGrad, ~] = imgradient(ImGray);

%% Affichages
Fig1 = figure(1);								% Creation d'une fenetre pour l'image de base
Fig1.Name = 'Coupe minimale entre deux patchs';	% Nom de la fenetre

subplot(1, 3, 1);
%hold on;	axis off;
imagesc(Im);
%hold off;
title('Im');

subplot(1, 3, 2);
%hold on;	axis off;
imagesc(cat(3,E,E,E));
%hold off;
title('E');

subplot(1, 3, 3);
%hold on;	axis off;
imagesc(cat(3,EGrad,EGrad,EGrad));
%hold off;
title('EGrad');