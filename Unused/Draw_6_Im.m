function [ ] = Draw_6_Im( Im1, name1, Im2, name2, Im3, name3, Im4, name4, Im5, name5, Im6, name6, numFig, nameFig)
%

Fig1 = figure(numFig);	% Creation d'une fenetre
Fig1.Name = nameFig;	% Nom de la fenetre

subplot(2, 3, 1);
imagesc(Im1);
title(name1);

subplot(2, 3, 2);
imagesc(cat(3,Im2,Im2,Im2));
title(name2);

subplot(2, 3, 3);
imagesc(cat(3,Im3,Im3,Im3));
title(name3);

subplot(2, 3, 4);
imagesc(cat(3,Im4,Im4,Im4));
title(name4);

subplot(2, 3, 5);
imagesc(cat(3,Im5,Im5,Im5));
title(name5);

subplot(2, 3, 6);
imagesc(cat(3,Im6,Im6,Im6));
title(name6);

end

