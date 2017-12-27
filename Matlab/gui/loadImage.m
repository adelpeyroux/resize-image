function [image, fichier, chemin] = loadImage()
  [fichier, chemin] = uigetfile({'*.png;*.jpg;*.jpeg;*.ppm;*.tif;*.gif', 'Image Files'},'Choisir le fichier a ouvrir :');
  if ~fichier
     error('Aucun fichier n a ete designe !')
  end

  image = imread(strcat([chemin, fichier]));
end