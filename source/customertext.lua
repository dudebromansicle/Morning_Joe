import "gamescene"


local pd <const> = playdate
local gfx <const> = playdate.graphics

class('CustomerText').extends(gfx.sprite)

function CustomerText:init(CustomerName)
   
	CustomerText.super.init(self)
    
    
    
    NumberCorrect = 0
    
   local gameOverImage = gfx.image.new(gfx.getTextSize(CustomerName))
    gfx.pushContext(gameOverImage)
        gfx.drawText(CustomerName, 0, 0)
    gfx.popContext()
    
    
    self:setImage(gameOverImage)
    
    self:moveTo(10+(self.width)/2, 20)
    
    self:setZIndex(151)

    self:add()


end


