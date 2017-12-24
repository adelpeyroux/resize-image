function onRun(source, event)
  global filetxt;
  global restxt;
  global preview;
  global input;
  
  [input, file, path] = loadImage();
  
  set(filetxt, 'String', file);
  set(restxt, 'String', mat2str(size(input)));
  
  image(preview, input);
end