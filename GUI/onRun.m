function onRun(source, event)

global slideWidth;
global slideHeight;
global isAdd;


if (isAdd)
    onStepAdd();
else
    
    valueWidth = get(slideWidth, 'value');
    valueHeight = get(slideHeight, 'value');
    
    while valueWidth > 0 || valueHeight > 0
        
        onStep();
        valueWidth = get(slideWidth, 'value');
        valueHeight = get(slideHeight, 'value');
    end
end
end