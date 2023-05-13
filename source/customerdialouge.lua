import "gamescene"
import "startscene"

import "customer"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('CustomerDialouge').extends(gfx.sprite)

function CustomerDialouge:init(Myindex)
    
   
    Nomoreinput = true
	CustomerDialouge.super.init(self)
    local text = "Gross"
    
          
    if Whom == 2 then
        print("State AnnaFavorites")
        for i = 1,3 do 
            if AnnaFavorites[i] == SelectionArray[Myindex] then
                text = "Good"
            end        
        end
        
        if AnnaFavorites[Myindex] == SelectionArray[Myindex] then
            text = "Perfect"
        
        end
        
        
        
    elseif Whom == 1 then
        print("State AbigailFavorites")
        for i = 1,3 do 
            if AbigailFavorites[i] == SelectionArray[Myindex] then
                text = "Good"
            end        
        end
        
        if AbigailFavorites[Myindex] == SelectionArray[Myindex] then
            text = "Perfect"
        
        end
        
    elseif Whom == 4 then
        print("State GavinFavorites")
        for i = 1,3 do 
            if GavinFavorites[i] == SelectionArray[Myindex] then
                text = "Good"
            end        
        end
        
        if GavinFavorites[Myindex] == SelectionArray[Myindex] then
            text = "Perfect"
        
        end
       
    elseif Whom == 3 then
        print("State JaiceFavorites")
        for i = 1,3 do 
            if JaiceFavorites[i] == SelectionArray[Myindex] then
                text = "Good"
            end        
        end
        
        if JaiceFavorites[Myindex] == SelectionArray[Myindex] then
            text = "Perfect"
        
        end
    
    end
    
    
   local gameOverImage = gfx.image.new(gfx.getTextSize(text))
    gfx.pushContext(gameOverImage)
        gfx.drawText(text, 0, 0)
    gfx.popContext()
    
    
    self:setImage(gameOverImage)
    if Myindex == 1 then
        self:moveTo(200-(self.width)/2, 40)
    end
    if Myindex == 2 then
        self:moveTo(200-(self.width)/2, 60)
    end
    if Myindex == 3 then
        self:moveTo(200-(self.width)/2, 80)
    end
    
    self:setZIndex(151)

    self:add()


end


