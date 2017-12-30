function onStepAdd(source, event)

global result;
global slideWidth;
global slideHeight;
global ResultPreview;

v = get(slideWidth, 'value');
nb = 150;

for tmp =1:2
    if v > 0
        matres = ones(size(result, 1), size(result, 2));
        
        Gray = rgb2gray(result);
        [E_S, ~] = imgradient(Gray,'sobel');
        E_F = Error_Flow(E_S);
        [minFlow, ~] = Get_Minimals_Flow(E_F, nb);
        for s = 1:v
            id_width = randi(nb);
            for t = 1:size(result, 1)
                matres(t , minFlow(t,id_width)) = matres(t , minFlow(t,id_width)) + 1;
            end
        end
        
        res = [result, zeros(size(result,1), v, 3)];
        
        for i = 1:size(result, 1)
            step_j = 1;
            for j = 1:size(result,2)
                for s = 1:matres(i,j)
                    res(i, step_j, :) = result(i,j,:);
                    step_j = step_j +1;
                end
            end
            
        end
        result = res;
        
    end
    v = get(slideHeight, 'value');
    
    result = imrotate(result, 90);
    
end
result = imrotate(result, -180);

global inputSize;
inputSize = size(result);

set(slideWidth, 'value', 0);
onWidth();
set(slideHeight, 'value', 0);
onHeight();
updateDim();
imageShow(ResultPreview,result);

end