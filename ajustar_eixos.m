% CAD Simplificado
% Script para ajustar os eixos de plotagem - ajustar_eixos

% Valores mínimos e máximos de X e Y dos eixos para retângulos e segmentos de reta
if strcmp(NomeEntidade(1), 'S') == 1 || strcmp(NomeEntidade(1), 'R') == 1
    
    if Xmin > Valor1
        
        Xmin = Valor1;
        
    end
    
    if Xmin > Valor3
        
        Xmin = Valor3;
        
    end
    
    if Xmax < Valor1
        
        Xmax = Valor1;
        
    end
    
    if Xmax < Valor3
        
        Xmax = Valor3;
        
    end
    
    if Ymin > Valor2
        
        Ymin = Valor2;
        
    end
    
    if Ymin > Valor4
        
        Ymin = Valor4;
        
    end
    
    if Ymax < Valor2
        
        Ymax = Valor2;
        
    end
    
    if Ymax < Valor4
        
        Ymax = Valor4;
        
    end
    
% Valores mínimos e máximos de X e Y dos eixos para círculos e arcos
elseif strcmp(NomeEntidade(1), 'C') == 1 || strcmp(NomeEntidade(1), 'A') == 1
    
    if Xmin > (Valor1 - Valor3)
        
        Xmin = Valor1 - Valor3;
        
    end
    
    if Xmax < (Valor1 + Valor3)
        
        Xmax = Valor1 + Valor3;
        
    end
    
    if Ymin > (Valor2 - Valor3)
        
        Ymin = Valor2 - Valor3;
        
    end
    
    if Ymax < (Valor2 + Valor3)
        
        Ymax = Valor2 + Valor3;
        
    end
    
end