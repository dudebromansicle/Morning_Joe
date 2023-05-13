import "gamescene"
import "startscene"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('CustomerDialouge').extends(gfx.sprite)

function CustomerDialouge:init(Myindex)
   Nomoreinput = true
	CustomerDialouge.super.init(self)
    local text = "Gross"
    
    
    
    for i = 1,3 do 
        if SteveFavorites[i] == SelectionArray[Myindex] then
            text = "Good"
        end        
    end
    
    if SteveFavorites[Myindex] == SelectionArray[Myindex] then
        text = "Perfect"
        NumberCorrect = NumberCorrect + 1
    
    end
    if NumberCorrect == 3 and Myindex == 3 then
        DrinksCorrect = DrinksCorrect + 1
    end
    
   local gameOverImage = gfx.image.new(gfx.getTextSize(text))
    gfx.pushContext(gameOverImage)
        gfx.drawText(text, 0, 0)
    gfx.popContext()
    
    
    self:setImage(gameOverImage)
    if Myindex == 1 then
        self:moveTo(300, 20)
    end
    if Myindex == 2 then
        self:moveTo(300, 40)
    end
    if Myindex == 3 then
        self:moveTo(300, 60)
    end
    
    self:setZIndex(151)

    self:add()


end


