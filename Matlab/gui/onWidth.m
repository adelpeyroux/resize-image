function onWidth(source, event)
global slideWidth;

value = get(slideWidth, 'value');
value = round(value);

set(slideWidth, 'value', value);

global textWidth;
set(textWidth, 'String', value);
end
