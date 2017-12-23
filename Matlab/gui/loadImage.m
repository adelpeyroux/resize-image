function [image, fichier, chemin] = loadImage()
  [fichier, chemin] = uigetfile({'*.png;*.jpg;*.jpeg;*.ppm;*.tif;*.gif', 'Image Files'},'Choisir le fichier à ouvrir :');
  if ~fichier
     error('Aucun fichier n''a été désigné !')
  end

  image = imread(strcat([chemin, fichier]));
end