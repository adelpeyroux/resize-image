%% Initialisation
close all;					% Fermeture des figures
%Lire l'image & Passage en double
file = '../Res/charles_original.jpg';
Im = imread(file);
Im = im2double(Im);
ImGray = rgb2gray(Im);

E = GetSobelEnergy(ImGray); % Inutile.....

[ESobel, ~] = imgradient(ImGray,'sobel');
[EPrewitt, ~] = imgradient(ImGray,'prewitt');
[Ecentral, ~] = imgradient(ImGray,'central');
[Eintermediate, ~] = imgradient(ImGray,'intermediate');
[Eroberts, ~] = imgradient(ImGray,'roberts');

%% Affichages
Fig1 = figure(1);								% Creation d'une fenetre pour l'image de base
Fig1.Name = 'Coupe minimale entre deux patchs';	% Nom de la fenetre

subplot(2, 3, 1);
%hold on;	axis off;
imagesc(Im);
%hold off;
title('Im');

subplot(2, 3, 2);
%hold on;	axis off;
imagesc(cat(3,ESobel,ESobel,ESobel));
%hold off;
title('ESobel');

subplot(2, 3, 3);
%hold on;	axis off;
imagesc(cat(3,EPrewitt,EPrewitt,EPrewitt));
%hold off;
title('EPrewitt');

subplot(2, 3, 4);
%hold on;	axis off;
imagesc(cat(3,Ecentral,Ecentral,Ecentral));
%hold off;
title('Ecentral');

subplot(2, 3, 5);
%hold on;	axis off;
imagesc(cat(3,Eintermediate,Eintermediate,Eintermediate));
%hold off;
title('Eintermediate');

subplot(2, 3, 6);
%hold on;	axis off;
imagesc(cat(3,Eroberts,Eroberts,Eroberts));
%hold off;
title('Eroberts');