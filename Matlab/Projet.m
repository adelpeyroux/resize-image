%% Initialisation
close all;					% Fermeture des figures
%Lire l'image & Passage en double
file = '../Res/de.png';
Im = imread(file);
Im = im2double(Im);
ImGray = rgb2gray(Im);

E = GetSobelEnergy(ImGray);

%% Affichages
Fig1 = figure(1);								% Creation d'une fenetre pour l'image de base
Fig1.Name = 'Coupe minimale entre deux patchs';	% Nom de la fenetre

subplot(1, 2, 1);
%hold on;	axis off;
imagesc(Im);
%hold off;
title('Im');

subplot(1, 2, 2);
%hold on;	axis off;
imagesc(E);
%hold off;
title('E');