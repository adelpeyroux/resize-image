function [ ] = Draw_6_Im_Heat( Im1, name1, Im2, name2, Im3, name3, Im4, name4, Im5, name5, Im6, name6, numFig, nameFig)
%

Fig1 = figure(numFig);	% Creation d'une fenetre
Fig1.Name = nameFig;	% Nom de la fenetre

subplot(2, 3, 1);
imagesc(Im1);
title(name1);

subplot(2, 3, 2);
imagesc(Im2);
colormap(jet);
title(name2);

subplot(2, 3, 3);
imagesc(Im3);
colormap(jet);
title(name3);

subplot(2, 3, 4);
imagesc(Im4);
colormap(jet);
title(name4);

subplot(2, 3, 5);
imagesc(Im5);
colormap(jet);
title(name5);

subplot(2, 3, 6);
imagesc(Im6);
colormap(jet);
title(name6);

end

