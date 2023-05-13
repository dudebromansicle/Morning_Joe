import "gamescene"
import "wordbubble"
import "CoreLibs/timer"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('HelloText').extends(gfx.sprite)

function HelloText:init(CustomerName)
   
	HelloText.super.init(self)
    
    local hellomynameis = "Mornin' Joe!"
    
    local gameOverImage = gfx.image.new(gfx.getTextSize(hellomynameis))
    gfx.pushContext(gameOverImage)
        gfx.drawText(hellomynameis, 0, 0)
    gfx.popContext()
    
    
    self:setImage(gameOverImage)
    
    self:moveTo(250+self.width/2, 130)
    
    self:setZIndex(151)

    self:add()
    self.destruction = pd.timer.new(2000)
    WordBubble(true)


end

function HelloText:update()
    --print(self.destruction.currentTime)
    if self.destruction.currentTime == 2000 then
        self:remove()
    end
end

