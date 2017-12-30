function onHeight(source, event)
global slideHeight;
global textHeight;

value = round(get(slideHeight, 'value'));
set(slideHeight, 'value', value);
set(textHeight, 'String', num2str(value));
updateDim();

end
