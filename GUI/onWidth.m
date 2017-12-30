function onWidth(source, event)
global slideWidth;
global textWidth;

value = round(get(slideWidth, 'value'));
set(slideWidth, 'value', value);
set(textWidth, 'String', num2str(value));
updateDim();

end
